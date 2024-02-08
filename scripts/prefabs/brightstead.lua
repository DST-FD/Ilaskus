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
}
-------------------------------------------------------------------------------

local function SetBuffEnabled(inst, enabled, owner)
	if enabled then
		if not inst._bonusenabled then
			inst._bonusenabled = true
			owner._bonusenabled = true
			inst.components.planardamage:AddBonus(inst, TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.SETBONUS_PLANAR_DAMAGE, "setbonus")
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
					if data.item ~= nil and data.item.prefab == "lunarplanthat" then  -- If wearing hat
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
			if hat ~= nil and hat.prefab == "lunarplanthat" then
				SetBuffEnabled(inst, true, owner)
			end
		end
	end
end

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_spike", "swap_spike")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
	SetBuffOwner(inst, owner)
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
	SetBuffOwner(inst, nil)
end

-------------------------------------------------------------------------------

local function OnAttack(inst, attacker, target)
	if target ~= nil and target:IsValid() and attacker._bonusenabled then
		-- SpawnPrefab("hitsparks_fx"):Setup(attacker, target)
		target:AddDebuff("brightstead_debuff", "brightstead_debuff")
	end
end

local function buff_OnExtended(inst)
	if inst.decaytimer ~= nil then
		inst.decaytimer:Cancel()
	end
	inst.decaytimer = inst:DoTaskInTime(TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.DEBUFF_DURATION, function() inst.components.debuff:Stop() end)
	-- inst.AnimState:PushAnimation(RandomDebuffAnim(), true)
end

local function buff_OnAttached(inst, target)
	if target ~= nil and target:IsValid() and not target.inlimbo and target.components.combat ~= nil and target.components.health ~= nil and not target.components.health:IsDead() then
		target.components.combat.externaldamagemultipliers:SetModifier(inst, 1 - TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.DEBUFF_STRENGTH)

		-- Debuff FX
		inst.entity:SetParent(target.entity)
		inst.Transform:SetPosition(0, target:HasTag("flying") and 2 or 0, 0)

		-- OnApply FX
		local fx = SpawnPrefab("brightstead_debuff_onapply")
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
			target.components.combat.externaldamagemultipliers:RemoveModifier(inst)
		end

		inst.AnimState:PushAnimation("chop", false)
		inst:ListenForEvent("animqueueover", inst.Remove)
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

    inst:AddTag("sharp")
    inst:AddTag("pointy")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    local swap_data = {sym_build = "swap_spike", bank = "tentacle_spike"}
    MakeInventoryFloatable(inst, "med", 0.05, {0.9, 0.5, 0.9}, true, -17, swap_data)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

	local planardamage = inst:AddComponent("planardamage")
	planardamage:SetBaseDamage(TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.PLANAR_DAMAGE)

	local damagetypebonus = inst:AddComponent("damagetypebonus")
	damagetypebonus:AddBonus("shadow_aligned", inst, TUNING.WEAPONS_LUNARPLANT_VS_SHADOW_BONUS)

    inst:AddComponent("weapon")
	inst:AddComponent("debuffable")
    inst.components.weapon:SetDamage(TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.DAMAGE)
	inst.components.weapon:SetOnAttack(OnAttack)

    -------

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/perkportablecookpot.xml"
	inst.components.inventoryitem.imagename = "perkportablecookpot"

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.DURABILITY)
    inst.components.finiteuses:SetUses(TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.DURABILITY)
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

    MakeHauntableLaunch(inst)

    return inst
end

-------------------------------------------------------------------------------

local function brightstead_debuff_fn()
	local inst = CreateEntity()

	inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

	inst.AnimState:SetBank("tree_petal_fx")
	inst.AnimState:SetBuild("tree_petal_fx")

	inst.AnimState:PlayAnimation("chop")
	inst.AnimState:PushAnimation("chop", true)

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

local function brightstead_debuff_onapply_fn()
    local inst = CreateEntity()

	inst:AddTag("CLASSIFIED")
    --[[Non-networked entity]]
    inst.entity:AddTransform()
    inst.entity:AddAnimState()

	-- inst.AnimState:SetBank("fx_moon_tea")
	-- inst.AnimState:SetBuild("moon_tea_fx")
	-- inst.AnimState:PlayAnimation("puff")

	inst.AnimState:SetBank("bomb_lunarplant")
	inst.AnimState:SetBuild("bomb_lunarplant")
	inst.AnimState:PlayAnimation("used")
	-- inst.AnimState:SetSymbolBloom("light_beam")
	inst.AnimState:SetSymbolBloom("pb_energy_loop")
	-- inst.AnimState:SetSymbolLightOverride("light_beam", 1)
	inst.AnimState:SetSymbolLightOverride("pb_energy_loop", 1)
	inst.AnimState:OverrideSymbol("sleepcloud_pre", "sleepcloud", "sleepcloud_pre")
	inst.AnimState:SetMultColour(1, 1, 1, 0.5)

	inst:AddTag("FX")

    inst.persists = false
	inst:ListenForEvent("animover", inst.Remove)

	return inst
end

-------------------------------------------------------------------------------

return Prefab("brightstead", fn, assets, prefabs),
	   Prefab("brightstead_debuff", brightstead_debuff_fn, nil),
	   Prefab("brightstead_debuff_onapply", brightstead_debuff_onapply_fn, nil)
