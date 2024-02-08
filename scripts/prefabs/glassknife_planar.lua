local assets =
{
    Asset("ANIM", "anim/glasscutter.zip"),
    Asset("ANIM", "anim/swap_glasscutter.zip"),

    Asset("ATLAS", "images/inventoryimages/perkportablecookpot.xml"),
    Asset("IMAGE", "images/inventoryimages/perkportablecookpot.tex"),
}

-------------------------------------------------------------------------------

-- local function onattack(inst, attacker, target)
-- 	if target ~= nil and target:IsValid() and target.components.health ~= nil then
--         -- DoDelta(amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb)
--         target.components.health:DoDelta(-TUNING.ILASKUS_WEAPON.GLASSKNIFE.DAMAGE, nil, attacker, true, nil, false)
--     end
-- end

-------------------------------------------------------------------------------

local function onequip(inst, owner)
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

-------------------------------------------------------------------------------

local function fn()
    local inst = CreateEntity()
	------------------------------------------
    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    inst.AnimState:SetBank("glasscutter")
    inst.AnimState:SetBuild("glasscutter")
    inst.AnimState:PlayAnimation("idle")

    MakeInventoryPhysics(inst)
	------------------------------------------
    inst:AddTag("sharp")
    inst:AddTag("pointy")
    inst:AddTag("weapon")
	------------------------------------------
    local floater_swap_data = {sym_build = "swap_glasscutter"}
    MakeInventoryFloatable(inst, "med", 0.05, {1.21, 0.4, 1.21}, true, -22, floater_swap_data)

    inst.entity:SetPristine()
	------------------------------------------
    if not TheWorld.ismastersim then
        return inst
    end
	------------------------------------------
    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(0)
	-- inst.components.weapon:SetOnAttack(onattack)

	local planardamage = inst:AddComponent("planardamage")
	planardamage:SetBaseDamage(TUNING.ILASKUS_WEAPON.GLASSKNIFE_PLANAR.PLANAR_DAMAGE)

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.ILASKUS_WEAPON.GLASSKNIFE_PLANAR.USE)
    inst.components.finiteuses:SetUses(TUNING.ILASKUS_WEAPON.GLASSKNIFE_PLANAR.USE)
    inst.components.finiteuses:SetOnFinished(inst.Remove)
	------------------------------------------
    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.atlasname = "images/inventoryimages/perkportablecookpot.xml"
	inst.components.inventoryitem.imagename = "perkportablecookpot"
	------------------------------------------
    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("glassknife_planar", fn, assets)