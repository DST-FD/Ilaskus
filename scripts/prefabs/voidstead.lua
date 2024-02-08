local assets =
{
    Asset("ANIM", "anim/tentacle_spike.zip"),
    Asset("ANIM", "anim/swap_spike.zip"),

    Asset("ATLAS", "images/inventoryimages/perkportablecookpot.xml"),
    Asset("IMAGE", "images/inventoryimages/perkportablecookpot.tex"),
}

local prefabs =
{
	"pointstead",

    "voidstead_classified",
}
-------------------------------------------------------------------------------

local function AttachClassified(inst, classified)
    inst._classified = classified
    inst.ondetachclassified = function() inst:DetachClassified() end
    inst:ListenForEvent("onremove", inst.ondetachclassified, classified)
end

local function DetachClassified(inst)
    inst._classified = nil
    inst.ondetachclassified = nil
end

local function OnRemoveEntity(inst)
    if inst._classified ~= nil then
        if TheWorld.ismastersim then
            inst._classified:Remove()
            inst._classified = nil
        else
            inst._classified._parent = nil
            inst:RemoveEventCallback("onremove", inst.ondetachclassified, inst._classified)
            inst:DetachClassified()
        end
    end
end

-------------------------------------------------------------------------------

local function SetBuffEnabled(inst, enabled, owner)
	if enabled then
		if not inst._bonusenabled then
			inst._bonusenabled = true
			owner._bonusenabled = true
			inst.components.planardamage:AddBonus(inst, TUNING.ILASKUS_WEAPON.VOIDSTEAD.SETBONUS_PLANAR_DAMAGE, "setbonus")
		end
	elseif inst._bonusenabled then
		inst._bonusenabled = nil
		owner._bonusenabled = nil
		inst.components.planardamage:RemoveBonus(inst, "setbonus")
	end
end

local function SetBuffOwner(inst, owner)
	if inst._owner ~= owner then
		if inst._owner ~= nil then			-- Destroy ListenForEvent when unequip
			inst:RemoveEventCallback("equip", inst._onownerequip, inst._owner)
			inst:RemoveEventCallback("unequip", inst._onownerunequip, inst._owner)
			inst._onownerequip = nil
			inst._onownerunequip = nil
			SetBuffEnabled(inst, false, inst._owner)
		end
		inst._owner = owner
		if owner ~= nil then
			inst._onownerequip = function(owner, data)		-- Making ListenForEvent function for future equip/unequip, not applying buff yet
				if data ~= nil then
					if data.item ~= nil and data.item.prefab == "voidclothhat" then  -- If wearing hat
						SetBuffEnabled(inst, true, owner)
					elseif data.eslot == EQUIPSLOTS.HEAD then  -- If wearing any other hat
						SetBuffEnabled(inst, false, owner)
					end
				end
			end
			inst._onownerunequip  = function(owner, data)
				if data ~= nil and data.eslot == EQUIPSLOTS.HEAD then  -- If remove hat
					SetBuffEnabled(inst, false, owner)
				end
			end
			inst:ListenForEvent("equip", inst._onownerequip, owner)
			inst:ListenForEvent("unequip", inst._onownerunequip, owner)

			local hat = owner.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)		-- Give buff if wearing the hat right now
			if hat ~= nil and hat.prefab == "voidclothhat" then
				SetBuffEnabled(inst, true, owner)
			end
		end
	end
end

-------------------------------------------------------------------------------

local function ondonetalking(inst)
    inst.localsounds.SoundEmitter:KillSound("talk")
end

local function ontalk(inst)
    local sound = inst._classified ~= nil and inst._classified:GetTalkSound() or nil
    if sound ~= nil then
        inst.localsounds.SoundEmitter:KillSound("talk")
        inst.localsounds.SoundEmitter:PlaySound(sound, "talk")
    end
end

local function onGroundTalking(inst, str_list)
	if inst.groundtalktask ~= nil then
		inst.groundtalktask:Cancel()
		inst.groundtalktask = nil
	end

    local owner = inst.components.inventoryitem.owner
    if owner == nil then
		if inst._classified ~= nil then
			inst._classified:Say(str_list, math.random(#str_list))

			local talkinterval = math.random(TUNING.ILASKUS_WEAPON.VOIDSTEAD.TALK_INTERVAL.ground.MIN, TUNING.ILASKUS_WEAPON.VOIDSTEAD.TALK_INTERVAL.ground.MAX)
			inst.groundtalktask = inst:DoTaskInTime(talkinterval, onGroundTalking, STRINGS.VOIDSTEAD_QUOTES.on_ground)
		end
	end
end

local function onPickedUpTalkTaskReset(inst)
	if inst.groundtalktask ~= nil then
		inst.groundtalktask:Cancel()
		inst.groundtalktask = nil
	end
end

local function onDroppedTalkTask(inst)
	local talkinterval = math.random(TUNING.ILASKUS_WEAPON.VOIDSTEAD.TALK_INTERVAL.ground.MIN, TUNING.ILASKUS_WEAPON.VOIDSTEAD.TALK_INTERVAL.ground.MAX)
	inst.groundtalktask = inst:DoTaskInTime(talkinterval, onGroundTalking, STRINGS.VOIDSTEAD_QUOTES.on_ground)
end

local function SayRandomLine(inst, str_list, owner)
    if inst._classified ~= nil then
        inst._classified:Say(str_list, math.random(#str_list))

        if inst.talktask ~= nil then
            inst.talktask:Cancel()
            inst.talktask = nil
        end

		local talkinterval = math.random(TUNING.ILASKUS_WEAPON.VOIDSTEAD.TALK_INTERVAL.onhand.MIN, TUNING.ILASKUS_WEAPON.VOIDSTEAD.TALK_INTERVAL.onhand.MAX)
        inst.talktask = inst:DoTaskInTime(talkinterval, SayRandomLine, STRINGS.VOIDSTEAD_QUOTES.overtime, owner)
    end
end

local function ToggleTalking(inst, turnon, owner)
    if inst.talktask ~= nil then
        inst.talktask:Cancel()
        inst.talktask = nil
    end

    if turnon then
        inst._classified:SetTarget(owner)
        inst.talktask = inst:DoTaskInTime(TUNING.ILASKUS_WEAPON.VOIDSTEAD.TALK_INTERVAL.onhand.INITIAL, SayRandomLine, STRINGS.VOIDSTEAD_QUOTES.overtime, owner)
    end
end

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_spike", "swap_spike")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
	SetBuffOwner(inst, owner)

    ToggleTalking(inst, true, owner)
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
	SetBuffOwner(inst, nil)

    ToggleTalking(inst, false, owner)
end

-------------------------------------------------------------------------------

local function OnAttack(inst, attacker, target)
	if target ~= nil and target:IsValid() and attacker._bonusenabled then
		-- SpawnPrefab("hitsparks_fx"):Setup(attacker, target)
		target:AddDebuff("voidstead_debuff", "voidstead_debuff")
	end
end

local function buff_OnExtended(inst)
	if inst.decaytimer ~= nil then
		inst.decaytimer:Cancel()
	end
	inst.decaytimer = inst:DoTaskInTime(TUNING.ILASKUS_WEAPON.VOIDSTEAD.DEBUFF_DURATION, function() inst.components.debuff:Stop() end)
end

local function buff_OnAttached(inst, target)
	if target ~= nil and target:IsValid() and not target.inlimbo and target.components.combat ~= nil and target.components.health ~= nil and not target.components.health:IsDead() then
		target.components.combat.externaldamagetakenmultipliers:SetModifier(inst, 1 + TUNING.ILASKUS_WEAPON.VOIDSTEAD.DEBUFF_STRENGTH)

        -- Debuff FX
		inst.entity:SetParent(target.entity)
		inst.Transform:SetPosition(0, target:HasTag("flying") and 2 or 0, 0)

        inst.size = nil
        if target:HasTag("smallcreature") then
            inst.size = "small"
        elseif target:HasTag("largecreature") then
            inst.size = "large"
        end
        if inst.size ~= nil then
            inst.AnimState:PlayAnimation("debuff_pre_"..inst.size)
            inst.AnimState:PushAnimation("debuff_loop_"..inst.size)
        end

        -- OnApply FX
		local fx = SpawnPrefab("voidstead_debuff_onapply")
		fx.entity:SetParent(target.entity)
		fx.Transform:SetPosition(0, target:HasTag("flying") and 2 or 0.6, 0)

		local s = (1 / target.Transform:GetScale()) * (target:HasTag("largecreature") and 1.9 or 1.2)
		if s ~= 1 and s ~= 0 then
			inst.Transform:SetScale(s * 1.1, s * 1.1, s * 1.1)
			fx.Transform:SetScale(s * 0.8, s * 0.8, s * 0.8)
		end
	end

	buff_OnExtended(inst)

    inst:ListenForEvent("death", function() inst.components.debuff:Stop() end, target)
end

local function buff_OnDetached(inst, target)
	if inst.decaytimer ~= nil then
		inst.decaytimer:Cancel()
		inst.decaytimer = nil

		if target ~= nil and target:IsValid() and target.components.combat ~= nil then
			target.components.combat.externaldamagetakenmultipliers:RemoveModifier(inst)
		end

		inst.AnimState:PlayAnimation("debuff_pst_"..(inst.size or "medium"))
		inst:ListenForEvent("animover", inst.Remove)
		-- inst:Remove()
	end
end

-------------------------------------------------------------------------------

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("spike")
    inst.AnimState:SetBuild("tentacle_spike")
    inst.AnimState:PlayAnimation("idle")

    MakeInventoryPhysics(inst)

    inst.AttachClassified = AttachClassified
    inst.DetachClassified = DetachClassified
    inst.OnRemoveEntity   = OnRemoveEntity

    inst:AddTag("sharp")
    inst:AddTag("pointy")

	inst:AddTag("shadow_item")		-- This make voidclothhat able to give planar damage bonus per hit
    inst:AddTag("shadowlevel")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    inst:AddComponent("talker")
    inst.components.talker.fontsize = 28
    inst.components.talker.font = TALKINGFONT
    inst.components.talker.colour = Vector3(143/255, 41/255, 41/255)
    inst.components.talker.offset = Vector3(0, 0, 0)
    inst.components.talker.symbol = "swap_object"

    --Dedicated server does not need to spawn the local sound fx
    if not TheNet:IsDedicated() then
        inst.localsounds = CreateEntity()
        inst.localsounds:AddTag("FX")

        --[[Non-networked entity]]
        inst.localsounds.entity:AddTransform()
        inst.localsounds.entity:AddSoundEmitter()
        inst.localsounds.entity:SetParent(inst.entity)
        inst.localsounds:Hide()
        inst.localsounds.persists = false
        inst:ListenForEvent("ontalk", ontalk)
        inst:ListenForEvent("donetalking", ondonetalking)
    end

    local swap_data = {sym_build = "swap_spike", bank = "tentacle_spike"}
    MakeInventoryFloatable(inst, "med", 0.05, {0.9, 0.5, 0.9}, true, -17, swap_data)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst._classified = SpawnPrefab("voidstead_classified")
    inst._classified.entity:SetParent(inst.entity)
    inst._classified._parent = inst
    inst._classified:SetTarget(nil)

	local planardamage = inst:AddComponent("planardamage")
	planardamage:SetBaseDamage(TUNING.ILASKUS_WEAPON.VOIDSTEAD.PLANAR_DAMAGE)

	local damagetypebonus = inst:AddComponent("damagetypebonus")
    damagetypebonus:AddBonus("lunar_aligned", inst, TUNING.WEAPONS_VOIDCLOTH_VS_LUNAR_BONUS)

    inst:AddComponent("weapon")
	inst:AddComponent("debuffable")
    inst.components.weapon:SetDamage(TUNING.ILASKUS_WEAPON.VOIDSTEAD.DAMAGE)
	inst.components.weapon:SetOnAttack(OnAttack)

    -------

    inst:AddComponent("inspectable")

    inst:ListenForEvent("onputininventory", onPickedUpTalkTaskReset)
    inst:ListenForEvent("ondropped", onDroppedTalkTask)

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/perkportablecookpot.xml"
	inst.components.inventoryitem.imagename = "perkportablecookpot"

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.ILASKUS_WEAPON.VOIDSTEAD.DURABILITY)
    inst.components.finiteuses:SetUses(TUNING.ILASKUS_WEAPON.VOIDSTEAD.DURABILITY)
    inst.components.finiteuses:SetOnFinished(function()
		local owner = inst.components.inventoryitem:GetGrandOwner()
		local revert = SpawnPrefab("pointstead")
        owner.components.inventory:GiveItem(revert)
		owner.SoundEmitter:PlaySound("dontstarve/wilson/use_break")
		inst:Remove()
	end)

    inst:AddComponent("equippable")
    inst.components.equippable.restrictedtag = "OtherworldlyDog"
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    -- In case he want it to be unpickable too
    -- inst:AddComponent("otherworldlystead")

	inst:AddComponent("shadowlevel")
	inst.components.shadowlevel:SetDefaultLevel(TUNING.VOIDCLOTH_SCYTHE_SHADOW_LEVEL)

    MakeHauntableLaunch(inst)

    return inst
end

-------------------------------------------------------------------------------

local function voidstead_debuff_fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

	inst.AnimState:SetBank("shadow_trap_debuff")
	inst.AnimState:SetBuild("shadow_trap_debuff")
	inst.AnimState:SetMultColour(1, 1, 1, .5)
	inst.AnimState:SetFinalOffset(7)

	inst.AnimState:PlayAnimation("debuff_pre_medium")
	inst.AnimState:PushAnimation("debuff_loop_medium", true)

	inst:AddTag("FX")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
	end

	-- inst.entity:Hide()
	inst.persists = false

	-- inst:AddTag("CLASSIFIED")
	-- inst._on_target_attacked = function(target, data) on_target_attacked(inst, target, data) end

	inst:AddComponent("debuff")
    inst.components.debuff:SetAttachedFn(buff_OnAttached)
    inst.components.debuff:SetDetachedFn(buff_OnDetached)
    inst.components.debuff:SetExtendedFn(buff_OnExtended)

	return inst
end

local function voidstead_debuff_onapply_fn()
    local inst = CreateEntity()

	inst:AddTag("CLASSIFIED")
    --[[Non-networked entity]]
    inst.entity:AddTransform()
    inst.entity:AddAnimState()

	inst.AnimState:SetBank("pocketwatch_weapon_fx")
	inst.AnimState:SetBuild("pocketwatch_weapon_fx")
	inst.AnimState:PlayAnimation("idle_big_"..math.random(3))
    inst.AnimState:SetFinalOffset(1)

	inst:AddTag("FX")

    inst.persists = false
	inst:ListenForEvent("animover", inst.Remove)

	return inst
end

-------------------------------------------------------------------------------

return Prefab("voidstead", fn, assets, prefabs),
	   Prefab("voidstead_debuff", voidstead_debuff_fn, nil),
	   Prefab("voidstead_debuff_onapply", voidstead_debuff_onapply_fn, nil)