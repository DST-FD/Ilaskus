local assets =
{
    Asset("ANIM", "anim/tentacle_spike.zip"),
    Asset("ANIM", "anim/swap_spike.zip"),

    Asset("ATLAS", "images/inventoryimages/perkportablecookpot.xml"),
    Asset("IMAGE", "images/inventoryimages/perkportablecookpot.tex"),
}

local prefabs = {
    "reticuleaoesmall",
    "reticuleaoesmallping",
    "reticuleaoesmallhostiletarget",
}
local tuning_values = TUNING.ILASKUS_WEAPON_FORGE.LAVAARENA_POINTSTEAD
--------------------------------------------------------------------------
-- Ability Functions
--------------------------------------------------------------------------
local function SummonMermGuard(inst, caster, pos)
    local fx = SpawnPrefab("merm_spawn_fx")
    fx.Transform:SetPosition(caster.Transform:GetWorldPosition())
    caster.SoundEmitter:PlaySound("dontstarve/characters/wurt/merm/throne/spawn")

    inst.components.rechargeable:StartRecharge()
    inst.components.aoespell:OnSpellCast(caster)
end
--------------------------------------------------------------------------
-- Pristine Functions
--------------------------------------------------------------------------
local function PristineFN(inst)
    -- aoeweapon_lunge (from aoeweapon_lunge component) added to pristine state for optimization
    COMMON_FNS.AddTags(inst, "sharp", "pointy")
end
--------------------------------------------------------------------------
local weapon_values = {
    swap_strings = {"swap_spike"},
	AOESpell     = SummonMermGuard,
    pristine_fn  = PristineFN,
}
--------------------------------------------------------------------------
local function fn()
	local inst = COMMON_FNS.EQUIPMENT.CommonWeaponFN("spike", "tentacle_spike", weapon_values, tuning_values)
	------------------------------------------
    if not TheWorld.ismastersim then
        return inst
    end

    inst.components.inventoryitem.atlasname = "images/inventoryimages/perkportablecookpot.xml"
	inst.components.inventoryitem.imagename = "perkportablecookpot"
	------------------------------------------
    return inst
end
--------------------------------------------------------------------------
-- local function fn()
    -- -- local bank = "lavaarena_seeddart2"
    -- ------------------------------------------
	-- local inst = CreateEntity()
    -- ------------------------------------------
	-- inst.entity:AddTransform()
    -- inst.entity:AddAnimState()
    -- inst.entity:AddNetwork()

    -- inst.AnimState:SetBank("spike")
    -- inst.AnimState:SetBuild("tentacle_spike")
    -- inst.AnimState:PlayAnimation("idle")
    -- --------------------------------------------------------------------
    -- MakeInventoryPhysics(inst)
    -- ------------------------------------------
    -- -- rechargeable (from rechargeable component) added to pristine state for optimization
    -- inst:AddTag("rechargeable")
    -- inst:AddTag("sharp")
    -- inst:AddTag("pointy")

    -- --weapon (from weapon component) added to pristine state for optimization
    -- inst:AddTag("weapon")

    -- local swap_data = {sym_build = "swap_spike", bank = "tentacle_spike"}
    -- MakeInventoryFloatable(inst, "med", 0.05, {0.9, 0.5, 0.9}, true, -17, swap_data)
    -- ------------------------------------------
    -- ------------------------------------------
	-- inst.entity:SetPristine()
    -- ------------------------------------------

    -- --conitnue commonweapon
	-- ------------------------------------------
	-- local reticule = tuning_values.RET
	-- DirectionalReticuleInit(inst, reticule.LENGTH, reticule.PREFAB, reticule.PING_PREFAB, reticule.ALWAYS_VALID)
    -- ------------------------------------------
    -- inst.components.aoetargeting:SetRange(1)
	-- ------------------------------------------
    -- if not TheWorld.ismastersim then
    --     return inst
    -- end
    -- ------------------------------------------
    -- inst.components.inventoryitem.atlasname = "images/inventoryimages/perkportablecookpot.xml"
	-- ------------------------------------------
	-- AOESpellInit(inst, weapon_values.AOESpell, tuning_values.SPELL_TYPES)
	-- ------------------------------------------
	-- RechargeableInit(inst, tuning_values)
	-- ------------------------------------------
	-- WeaponInit(inst, weapon_values, tuning_values)
	-- ------------------------------------------
	-- ItemTypeInit(inst, tuning_values.ITEM_TYPE)
	-- ------------------------------------------
	-- inst:AddComponent("inspectable")
	-- ------------------------------------------
	-- InventoryItemInit(inst, weapon_values.image_name or bank)
	-- ------------------------------------------
	-- local function WeaponOnEquip(inst, owner)
	-- 	if weapon_values.onequip_fn then
	-- 		weapon_values.onequip_fn(inst, owner)
	-- 	end
	-- 	inst.components.weapon:UpdateAltAttackRange(nil, nil, owner)
	-- end
	-- local function WeaponOnUnequip(inst, owner)
	-- 	if weapon_values.onunequip_fn then
	-- 		weapon_values.onunequip_fn(inst, owner)
	-- 	end
	-- 	inst.components.weapon:UpdateAltAttackRange(nil, nil, owner)
	-- end
	-- EquippableInit(inst, weapon_values.type or "hand", weapon_values.onequip_fn, weapon_values.onunequip_fn, unpack(weapon_values.swap_strings))

	-- ------------------------------------------
    -- -- inst.components.weapon:SetOnProjectileLaunch(SpreadShot)
    -- ------------------------------------------
    -- return inst
-- end

-- ForgePrefab = Class(Prefab, function(self, name, fn, assets, deps, force_path_search, category, mod_id, atlas, image, swap_build, swap_data, admin_fn_override)
return ForgePrefab("lavaarena_pointstead", fn, assets, prefabs, nil, tuning_values.ENTITY_TYPE, "ILASKUS_WEAPON_FORGE", "images/inventoryimages/perkportablecookpot.xml", "perkportablecookpot", "swap_spike", "common_hand")
