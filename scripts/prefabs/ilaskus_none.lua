local assets =
{
	Asset( "ANIM", "anim/esctemplate.zip" ),
	Asset( "ANIM", "anim/ghost_esctemplate_build.zip" ),
}

local skins =
{
	normal_skin = "esctemplate",
	ghost_skin = "ghost_esctemplate_build",
}

return CreatePrefabSkin("ilaskus_none",
{
	base_prefab = "ilaskus",
	type = "base",
	assets = assets,
	skins = skins, 
	skin_tags = {"ESCTEMPLATE", "CHARACTER", "BASE"},
	build_name_override = "esctemplate",
	rarity = "Character",
})