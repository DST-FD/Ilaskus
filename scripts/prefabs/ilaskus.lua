local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
-----------------------------------------------------------------------------

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.ILASKUS
end
local prefabs = FlattenTree(start_inv, true)

-----------------------------------------------------------------------------

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "ilaskus_speed_mod", 1)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "ilaskus_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
	elseif inst:HasTag("corpse") then
		onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

---------------------------------------------------------------------------------------------------
--  Forge Break  --
---------------------------------------------------------------------------------------------------
local forge_fn = function(inst)
	event_server_data("lavaarena", "prefabs/ilaskus").master_postinit(inst)
	inst:AddComponent("corpsereviver")

	local function perk_fn(inst)
		-- For second chance calculation
		TUNING.ILASKUS_SECOND_CHANCE.THRESHOLD = TUNING.ILASKUS_FORGE.SECOND_CHANCE.THRESHOLD
		TUNING.ILASKUS_SECOND_CHANCE.COOLDOWN = TUNING.ILASKUS_FORGE.SECOND_CHANCE.COOLDOWN
		TUNING.ILASKUS_SECOND_CHANCE.IFRAME = TUNING.ILASKUS_FORGE.SECOND_CHANCE.IFRAME
		TUNING.ILASKUS_SECOND_CHANCE.HEAL = TUNING.ILASKUS_FORGE.SECOND_CHANCE.HEAL
		TUNING.ILASKUS_STAT.HEALTH = TUNING.ILASKUS_FORGE.HEALTH

		inst.components.health:SetMaxHealth(TUNING.ILASKUS_FORGE.HEALTH)
		inst.components.itemtyperestrictions:SetRestrictions(TUNING.ILASKUS_FORGE.WEAPON_NOACCESS)

	end
	-- Gotta check this since it isn't work with current version
	AddPerk("ilaskus", "otherworldly_dog", perk_fn, nil, nil, 0)
end
-----------------------------------------------------------------------------

-- ================ Damage Scaling ====================

local function HealthDamageScale(inst)
	local health = inst.components.health:GetPercent()
	if health <= TUNING.ILASKUS_DAMAGE.HIGH.THRESHOLD then
		local multiplier = (TUNING.ILASKUS_DAMAGE.HIGH.THRESHOLD - health) / (TUNING.ILASKUS_DAMAGE.HIGH.THRESHOLD - TUNING.ILASKUS_DAMAGE.LOW.THRESHOLD)
		local damageBoost = (TUNING.ILASKUS_DAMAGE.LOW.MULTIPLIER - TUNING.ILASKUS_DAMAGE.HIGH.MULTIPLIER) * multiplier

		inst.components.combat.damagemultiplier = (health <= TUNING.ILASKUS_DAMAGE.LOW.THRESHOLD) and TUNING.ILASKUS_DAMAGE.LOW.MULTIPLIER or TUNING.ILASKUS_DAMAGE.HIGH.MULTIPLIER + damageBoost
	else
		inst.components.combat.damagemultiplier = 1
	end
end

-----------------------------------------------------------------------------

-- ================ Food Penalties ====================

-- Set hated food types
local food_type_penalty = TUNING.ILASKUS_FOOD.TYPE.PENALTY
local food_type_exception = TUNING.ILASKUS_FOOD.TYPE.EXCEPTION

-- Make exception lists that doesn't give penalty
local food_penalties_list =	TUNING.ILASKUS_FOOD.LIST.PENALTY
local food_exception_list = TUNING.ILASKUS_FOOD.LIST.EXCEPTION

-- Custom messages to speak when eating them
local food_dislike_lines = STRINGS.ILASKUS_QUOTES.FOOD_DISLIKE
local food_hated_lines = STRINGS.ILASKUS_QUOTES.FOOD_HATED

-- OnEat function
local function OnEat(inst, food)
	local ateFood = food.prefab
	local sanity = inst.components.sanity
	local sanityTuning = food.components.edible.sanityvalue
	local foodType = food.components.edible.foodtype
	local foodType2 = food.components.edible.secondaryfoodtype

	-- Check if suffixes, cut them out
	local suffixes = { "_cooked", "_spice_" }
	for _,v in pairs(suffixes) do
		local start, _ = string.find(ateFood, v)
		if start then
			ateFood = string.sub(ateFood, 1, start - 1)
		end
	end

	local isHateFood = food_penalties_list[ateFood]
	local isPickyEat = (foodType == food_type_penalty) or (foodType2 == food_type_penalty) or isHateFood

	if isPickyEat then
		-- Check excluding / Check hate food / Give generic penalty
		if (foodType2 == food_type_exception or food_exception_list[ateFood]) then
			sanity:DoDelta(sanityTuning)

		elseif isHateFood then
			if isHateFood["sanity"] ~= -TUNING.ILASKUS_FOOD.SANITY_PENALTY then
				inst.components.talker:Say(food_hated_lines)
			else
				inst.components.talker:Say(food_dislike_lines[math.random(#food_dislike_lines)])
			end
			sanity:DoDelta(isHateFood["sanity"])

		else
			if (sanityTuning < 0) then
				--For the already negative sanity food, decrease further
				sanity:DoDelta(sanityTuning - TUNING.ILASKUS_FOOD.SANITY_PENALTY)
			else
				--Replace it with generic penalty
				sanity:DoDelta(-TUNING.ILASKUS_FOOD.SANITY_PENALTY)
			end
			inst.components.talker:Say(food_dislike_lines[math.random(#food_dislike_lines)])
		end
	else
		-- Normal Food, Give normal sanity
		sanity:DoDelta(sanityTuning)
	end
end

-----------------------------------------------------------------------------

-- ================ Second Chance ====================

local function OnTimerDone(inst, data)
    if data.name == "secondchance" then
		inst._onSecondChanceCooldown = false
		inst.components.talker:Say(STRINGS.ILASKUS_QUOTES.SECOND_CHANCE_ONFINISH)
    end
end

local function OnSecondChancePause(inst)
	local currenthealth = inst.components.health:GetPercent()
	local thresholdTuning = TUNING.ILASKUS_SECOND_CHANCE.THRESHOLD
	local threshold
	if thresholdTuning <= 1 then
		-- Percent Based
		threshold = currenthealth >= thresholdTuning
	else
		-- Amount Based
		threshold = 1 + currenthealth >= (TUNING.ILASKUS_STAT.HEALTH + thresholdTuning) / TUNING.ILASKUS_STAT.HEALTH
	end

	if threshold then
		inst.components.timer:ResumeTimer("secondchance")
	else
		inst.components.timer:PauseTimer("secondchance")
	end
end

local function OnSecondChance(inst)
	if not inst._onSecondChanceCooldown and inst.components.health.currenthealth <= 0 then
		inst.components.health.currenthealth = TheNet:GetServerGameMode() == "lavaarena" and TUNING.ILASKUS_FORGE.SECOND_CHANCE.HEAL or TUNING.ILASKUS_SECOND_CHANCE.HEAL
		inst.components.health:SetInvincible(true)

		inst.sg:PushEvent("start_second_chance")
	end
end

-----------------------------------------------------------------------------
-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst)

	inst:AddTag("OtherworldlyDog")

	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "esctemplate.tex" )
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default

	-- choose which sounds this character will play
	inst.soundsname = "wortox"

	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"

	-- Main Stats
	inst.components.health:SetMaxHealth(TUNING.ILASKUS_STAT.HEALTH)
	inst.components.hunger:SetMax(TUNING.ILASKUS_STAT.HUNGER)
	inst.components.sanity:SetMax(TUNING.ILASKUS_STAT.SANITY)

	-- Sanity cost multiplier when casting spells
    inst:AddComponent("staffsanity")
	inst.components.staffsanity:SetMultiplier(TUNING.ILASKUS_STAT.SANITY_MODIFIER.STAFFSANITY)

	-- Damage multiplier stuffs
    inst.components.combat.damagemultiplier = 1
	inst:ListenForEvent("healthdelta", HealthDamageScale)

	-- Temperature stuffs
    inst.components.temperature.inherentinsulation = TUNING.ILASKUS_STAT.TEMPERATURE.WINTER_INSULATION
    inst.components.temperature.overheattemp = TUNING.ILASKUS_STAT.TEMPERATURE.OVERHEAT_TEMP
    inst.components.temperature.freezingtemp = TUNING.ILASKUS_STAT.TEMPERATURE.FREEZING_TEMP

	-- Hunger rate and food stuffs
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
    inst.components.foodaffinity:AddPrefabAffinity("unagi", 1.8)

	inst.components.eater:SetAbsorptionModifiers(1, 1, 0)
	inst.components.eater:SetOnEatFn(OnEat)

	-- Second Chance
    if not inst.components.timer then
		inst:AddComponent("timer")
	end
	inst._onSecondChanceCooldown = inst.components.timer:GetTimeLeft("secondchance") and true or false
    -- inst.components.timer:StartTimer("secondchance", duration)
    inst:ListenForEvent("timerdone", OnTimerDone)
	inst:ListenForEvent("healthdelta", OnSecondChancePause)
	inst:ListenForEvent("minhealth", OnSecondChance)

	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	inst.forge_fn = forge_fn

end

return MakePlayerCharacter("ilaskus", prefabs, assets, common_postinit, master_postinit, prefabs)
