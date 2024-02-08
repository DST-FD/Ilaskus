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

local function DoRegen(inst, owner)
	if owner.components.sanity ~= nil and owner.components.sanity:IsInsanityMode() then
		-- local setbonus = inst.components.setbonus ~= nil and inst.components.setbonus:IsEnabled(EQUIPMENTSETNAMES.DREADSTONE) and TUNING.ARMOR_DREADSTONE_REGEN_SETBONUS or 1
		local rate = 1 / Lerp(1 / TUNING.ARMOR_DREADSTONE_REGEN_MAXRATE, 1 / TUNING.ARMOR_DREADSTONE_REGEN_MINRATE, owner.components.sanity:GetPercent())
		inst.components.finiteuses:Repair(inst.components.finiteuses.total * rate)
	end
	if inst.components.finiteuses:GetPercent() == 1 then
		inst.regentask:Cancel()
		inst.regentask = nil
	end
end

local function StartRegen(inst, owner)
	if inst.regentask == nil then
		inst.regentask = inst:DoPeriodicTask(TUNING.ARMOR_DREADSTONE_REGEN_PERIOD, DoRegen, nil, owner)
	end
end

local function StopRegen(inst)
	if inst.regentask ~= nil then
		inst.regentask:Cancel()
		inst.regentask = nil
	end
end

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_spike", "swap_spike")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
    if owner.components.sanity ~= nil and inst.components.finiteuses:GetPercent() ~= 1 then
		StartRegen(inst, owner)
	else
		StopRegen(inst)
	end
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
    StopRegen(inst)
end

local function OnAttack(inst, attacker, target)
    if inst.regentask == nil and inst.components.equippable:IsEquipped() then
		local owner = inst.components.inventoryitem.owner
		if owner ~= nil and owner.components.sanity ~= nil then
			StartRegen(inst, owner)
		end
	end
end

-------------------------------------------------------------------------------

local function GetSetBonusEquip(inst, owner)
	local hat = owner.components.inventory ~= nil and owner.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD) or nil
	return hat ~= nil and hat.prefab == "dreadstonehat" and hat or nil
end

local function CalcDapperness(inst, owner)
	local insanity = owner.components.sanity ~= nil and owner.components.sanity:IsInsanityMode()
	local dreadhat = GetSetBonusEquip(inst, owner)
	if dreadhat ~= nil then
		return insanity and inst.regentask ~= nil and -TUNING.ILASKUS_WEAPON.DREADSTEAD.SETBONUS_SANITY_DRAIN_REPAIR or -TUNING.ILASKUS_WEAPON.DREADSTEAD.SANITY_DRAIN
	end
	return insanity and inst.regentask ~= nil and -TUNING.ILASKUS_WEAPON.DREADSTEAD.SANITY_DRAIN_REPAIR or -TUNING.ILASKUS_WEAPON.DREADSTEAD.SANITY_DRAIN
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

	inst:AddTag("dreadstone")
	inst:AddTag("shadow_item")
    inst:AddTag("shadowlevel")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    local swap_data = {sym_build = "swap_spike", bank = "tentacle_spike"}
    MakeInventoryFloatable(inst, "med", 0.05, {0.9, 0.5, 0.9}, true, -17, swap_data)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(TUNING.ILASKUS_WEAPON.DREADSTEAD.DAMAGE)
	inst.components.weapon:SetOnAttack(OnAttack)

    -------

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/perkportablecookpot.xml"
	inst.components.inventoryitem.imagename = "perkportablecookpot"

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.ILASKUS_WEAPON.DREADSTEAD.DURABILITY)
    inst.components.finiteuses:SetUses(TUNING.ILASKUS_WEAPON.DREADSTEAD.DURABILITY)
    inst.components.finiteuses:SetOnFinished(function()
		local owner = inst.components.inventoryitem:GetGrandOwner()
		local revert = SpawnPrefab("pointstead")
        owner.components.inventory:GiveItem(revert)
		owner.SoundEmitter:PlaySound("dontstarve/wilson/use_break")
		inst:Remove()
	end)

    inst:AddComponent("equippable")
    inst.components.equippable.restrictedtag = "OtherworldlyDog"
	inst.components.equippable.dapperfn = CalcDapperness
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    -- In case he want it to be unpickable too
    -- inst:AddComponent("otherworldlystead")

	inst:AddComponent("shadowlevel")
	inst.components.shadowlevel:SetDefaultLevel(TUNING.DREADSTONEHAT_SHADOW_LEVEL)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("dreadstead", fn, assets, prefabs)
