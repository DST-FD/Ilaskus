local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}
-----------------------------------------------------------------------------

-- Your character's stats

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.ILASKUS = {
	"flint",
	"flint",
	"twigs",
	"twigs",
}

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
    else
        onbecamehuman(inst)
    end
end

-----------------------------------------------------------------------------

-- ================ Damage Scaling ====================

local function HealthDamageScale(inst)
	local health = inst.components.health:GetPercent()
	if health <= TUNING.ILASKUS_DAMAGE_THRESHOLD_HIGH then
		local multiplier = (TUNING.ILASKUS_DAMAGE_THRESHOLD_HIGH - health) / (TUNING.ILASKUS_DAMAGE_THRESHOLD_HIGH - TUNING.ILASKUS_DAMAGE_THRESHOLD_LOW)
		local damageBoost = (TUNING.ILASKUS_DAMAGE_MULTIPLIER_LOW - TUNING.ILASKUS_DAMAGE_MULTIPLIER_HIGH) * multiplier

		inst.components.combat.damagemultiplier = (health <= TUNING.ILASKUS_DAMAGE_THRESHOLD_LOW) and TUNING.ILASKUS_DAMAGE_MULTIPLIER_LOW or TUNING.ILASKUS_DAMAGE_MULTIPLIER_HIGH + damageBoost
	else
		inst.components.combat.damagemultiplier = 1
	end
end

-----------------------------------------------------------------------------

-- ================ Food Penalties ====================

-- Set hated food types
local food_hated = TUNING.ILASKUS_FOOD_PENALTY_TYPE
local food_exception_type = TUNING.ILASKUS_FOOD_EXCEPTION_TYPE

-- Make exception lists that doesn't give penalty
local food_exception_list = TUNING.ILASKUS_FOOD_EXCEPTION_LIST
local food_penalties_list =	TUNING.ILASKUS_FOOD_HATE_LIST

-- Custom messages to speak when eating them
local food_dislike_lines = STRINGS.ILASKUS_FOOD_DISLIKE_LINES
local food_hated_lines = STRINGS.ILASKUS_FOOD_HATED_LINES

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
	local isPickyEat = foodType == food_hated or foodType2 == food_hated or isHateFood

	if isPickyEat then
		-- Check excluding / Check hate food / Give generic penalty
		if (foodType2 == food_exception_type or food_exception_list[ateFood]) then
			sanity:DoDelta(sanityTuning)

		elseif isHateFood then
			if isHateFood["sanity"] ~= -TUNING.ILASKUS_FOOD_PENALTY then
				inst.components.talker:Say(food_hated_lines)
			else
				inst.components.talker:Say(food_dislike_lines[math.random(#food_dislike_lines)])
			end
			sanity:DoDelta(isHateFood["sanity"])

		else
			if (sanityTuning < 0) then
				--For the already negative sanity food, decrease further
				sanity:DoDelta(sanityTuning - TUNING.ILASKUS_FOOD_PENALTY)
			else
				--Replace it with generic penalty
				sanity:DoDelta(-TUNING.ILASKUS_FOOD_PENALTY)
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
		inst.components.talker:Say(STRINGS.ILASKUS_SECOND_CHANCE_ONFINISH)
    end
end

local function OnSecondChancePause(inst)
	local currenthealth = inst.components.health:GetPercent()
	if 1 + currenthealth >= (TUNING.ILASKUS_HEALTH + TUNING.ILASKUS_SECOND_CHANCE_THRESHOLD) / TUNING.ILASKUS_HEALTH then
		inst.components.timer:ResumeTimer("secondchance")
	else
		inst.components.timer:PauseTimer("secondchance")
	end
end

local function OnSecondChance(inst)
	if not inst._onSecondChanceCooldown and inst.components.health.currenthealth <= 0 then
		inst.components.health.currenthealth = 25
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
	inst.components.health:SetMaxHealth(TUNING.ILASKUS_HEALTH)
	inst.components.hunger:SetMax(TUNING.ILASKUS_HUNGER)
	inst.components.sanity:SetMax(TUNING.ILASKUS_SANITY)

	-- Damage multiplier stuffs
    inst.components.combat.damagemultiplier = 1
	inst:ListenForEvent("healthdelta", HealthDamageScale)

	-- Temperature stuffs
    inst.components.temperature.inherentinsulation = TUNING.INSULATION_TINY
    inst.components.temperature.overheattemp = 75
    inst.components.temperature.freezingtemp = 5

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

end

return MakePlayerCharacter("ilaskus", prefabs, assets, common_postinit, master_postinit, prefabs)
