-- This information tells other players more about the mod
name = "Extended Sample Character"
description = "A character template for Don't Starve Together."
author = "Dragon Wolf Leo"
version = "1.2.5" -- This is the version of the template. Change it to your own number.

-- This is the URL name of the mod's thread on the forum; the part after the ? and before the first & in the url
forumthread = "/files/file/950-extended-sample-character/"

-- This lets other players know if your mod is out of date, update it to match the current version in the game
api_version = 10

-- Compatible with Don't Starve Together
dst_compatible = true

-- Not compatible with Don't Starve
dont_starve_compatible = false
reign_of_giants_compatible = false
shipwrecked_compatible = false

-- Character mods are required by all clients
all_clients_require_mod = true 

icon_atlas = "modicon.xml"
icon = "modicon.tex"

-- The mod's tags displayed on the server list
server_filter_tags = {
"character",
}

local function Title(title, hover)
    return {
        name = title,
        hover = hover,
        options = {{description = "", data = 0}},
        default = 0,
    }
end

configuration_options =
{
	Title("󰀃 Title 󰀃", ""),

	{
		name = "POINTSTEAD_DURAB",
		label = "Pointstead Durability",
        hover = "Change the durability of Pointstead",
		options =	{{description = "Unlimited", data = true, hover = "Pointstead will have unlimited uses like Walking Cane"},
					 {description = "Limited", data = false, hover = "Pointstead will have 200 uses before it's broken"},},
		default = true,
	},
	{
		name = "BEEFALO_TAME_SPEED",
		label = "boof Taming Speed",
        hover = "Increase taming speed for his special beefalo",
		options =	{{description = "30%", data = true, hover = "The special beefalo will be domesticated faster if tended by him"},
					 {description = "None", data = false, hover = "The special beefalo will have default taming speed"},},
		default = true,
	},
}