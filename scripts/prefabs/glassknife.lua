local assets =
{
    Asset("ANIM", "anim/glasscutter.zip"),
    Asset("ANIM", "anim/swap_glasscutter.zip"),

    Asset("ATLAS", "images/inventoryimages/perkportablecookpot.xml"),
    Asset("IMAGE", "images/inventoryimages/perkportablecookpot.tex"),
}

-------------------------------------------------------------------------------

local function onattack(inst, attacker, target)
    -- Damage should only be reduced with Armors and Planar. No positive modifier should be applied here.
    -- So I'm doing custom damage calculation here
	if target ~= nil and target:IsValid() and target.components.health ~= nil then
        local damage = TUNING.ILASKUS_WEAPON.GLASSKNIFE.DAMAGE
        local spdamage = nil

        target.components.combat.lastattacker = attacker

        -- No idea about this but I'll put it here
        if target.components.attackdodger ~= nil and target.components.attackdodger:CanDodge(attacker) then
            target.components.attackdodger:Dodge()
            damage, spdamage = 0, nil
        end
        -- Target is wearing armors
        if target.components.inventory ~= nil then
			damage, spdamage = target.components.inventory:ApplyDamage(damage, attacker, inst, spdamage)
        end
		-- Planar entities dampen regular damage
		if target.components.planarentity ~= nil then
			damage, spdamage = target.components.planarentity:AbsorbDamage(damage, attacker, inst, spdamage)
		end

        -- DoDelta(amount, overtime, cause, ignore_invincible, afflicter, ignore_absorb)
        target.components.health:DoDelta(-damage, nil, attacker, false, attacker, false)

        if target.components.health:IsDead() then
            if attacker ~= nil then
                attacker:PushEvent("killed", { victim = target, attacker = attacker })
            end
            if target.components.combat.onkilledbyother ~= nil then
                target.components.combat.onkilledbyother(target, attacker)
            end
        end

        target:PushEvent("attacked", { attacker = attacker, damage = damage})
        if target.components.combat.onhitfn ~= nil then
            target.components.combat.onhitfnself.onhitfn(target, attacker, damage, spdamage)
        end

        attacker:PushEvent("onhitother", { target = target, damage = damage, spdamage = spdamage, weapon = inst })
        if attacker.components.combat.onhitotherfn ~= nil then
            attacker.components.combat.onhitotherfn(attacker, target, damage, nil, inst, 0, spdamage)
        end
    end
end

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
    inst.components.weapon:SetDamage(0.5)
	inst.components.weapon:SetOnAttack(onattack)

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(TUNING.ILASKUS_WEAPON.GLASSKNIFE.USE)
    inst.components.finiteuses:SetUses(TUNING.ILASKUS_WEAPON.GLASSKNIFE.USE)
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

return Prefab("glassknife", fn, assets)