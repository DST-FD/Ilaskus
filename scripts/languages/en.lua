local STRINGS = GLOBAL.STRINGS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.ilaskus = "The Silly Wolf"
STRINGS.CHARACTER_NAMES.ilaskus = "Ilaskus"
STRINGS.CHARACTER_DESCRIPTIONS.ilaskus = "*Fights until collapse\n*Brings his own weapon\n*Somewhat fluffy\n*Absolutely hates veggies"
STRINGS.CHARACTER_QUOTES.ilaskus = "\"Now just what does this world has to offer towards my journal?\""
STRINGS.CHARACTER_SURVIVABILITY.ilaskus = "Grim"

-- Forge (Just the Expertise Description)
local forge_weapon_types = {"melees", "books", "staves", "darts", "healers"}
local weapon_access = {}
local canUse = ""

for _,weapon_type in pairs(forge_weapon_types) do
    local match = false
    for _,disable_type in pairs(TUNING.ILASKUS_FORGE.WEAPON_NOACCESS) do
        if weapon_type == disable_type then
            match = true
            break
        end
    end
    if not match then table.insert(weapon_access, weapon_type) end
end

for index,weapon_type in pairs(weapon_access) do
    canUse = canUse .. weapon_type:gsub("^%l", string.upper) .. (index == #weapon_access and "" or ", ")
end

STRINGS.LAVAARENA_CHARACTER_DESCRIPTIONS.ilaskus = "*Line 1\n*Line 2\n*Line 3\n\nExpertise:\n" .. canUse

-- The character's name as appears in-game 
STRINGS.NAMES.ILASKUS = "Ilaskus"
STRINGS.SKIN_NAMES.ilaskus_none = "Ilaskus"

-- Character Stuffs
STRINGS.ILASKUS_QUOTES = {
    FOOD_DISLIKE = {
        "That was horrendous to my taste buds.",
        "Definitely not wanting that again any time soon.",
        "Yeesh...",
    },
    FOOD_HATED = "That was a nightmare to swallow...",

    SECOND_CHANCE = {
        "Not... today...",
        "That was NOT my last breath!",
        "H-hah... not yet!",
    },
    SECOND_CHANCE_ONFINISH = "I'm pretty ready to take another beating.",

}
-- Prefabs (Weapons)
STRINGS.NAMES.POINTSTEAD = "Pointstead"
STRINGS.RECIPE_DESC.POINTSTEAD = "Your trusty blade, steadily stabs."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.POINTSTEAD = "A simple dagger made for combat."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.POINTSTEAD = "The weapon of choice for a pyromaniac, I like it!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.POINTSTEAD = "Is little pointy toy."
STRINGS.CHARACTERS.WENDY.DESCRIBE.POINTSTEAD = "A stab to the heart, plunge it deeply."
STRINGS.CHARACTERS.WX78.DESCRIBE.POINTSTEAD = "STABBING DEVICE"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.POINTSTEAD = "A dagger, mostly dull, I suppose you can stab with it."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.POINTSTEAD = "Not as sharp as Lucy."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.POINTSTEAD = "I'm not really suited for close quarter combat."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.POINTSTEAD = "Merely a weapon! An insult!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.POINTSTEAD = "Mom always got upset when we played with those..."
STRINGS.CHARACTERS.WINONA.DESCRIBE.POINTSTEAD = "Don't leave this lying around!"
STRINGS.CHARACTERS.WARLY.DESCRIBE.POINTSTEAD = "Ah my kitchen knife... Ah non, nevermind."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.POINTSTEAD = "A stick with a pointy end, this will barely make a dent!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.POINTSTEAD = "Stabby"
STRINGS.CHARACTERS.WURT.DESCRIBE.POINTSTEAD = "It sharp!"
STRINGS.CHARACTERS.WALTER.DESCRIBE.POINTSTEAD = "Now I can cosplay as my favourite serial killer!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.POINTSTEAD = "Barely any efficiency. Not worth my time."
STRINGS.CHARACTERS.ILASKUS.DESCRIBE.POINTSTEAD= "Honestly can't go wrong with my trusty weapon."

STRINGS.NAMES.LAVAARENA_POINTSTEAD = "Pointstead"
STRINGS.RECIPE_DESC.LAVAARENA_POINTSTEAD = "Your trusty blade, steadily stabs."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.LAVAARENA_POINTSTEAD = "A simple dagger made for combat."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.LAVAARENA_POINTSTEAD = "The weapon of choice for a pyromaniac, I like it!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.LAVAARENA_POINTSTEAD = "Is little pointy toy."
STRINGS.CHARACTERS.WENDY.DESCRIBE.LAVAARENA_POINTSTEAD = "A stab to the heart, plunge it deeply."
STRINGS.CHARACTERS.WX78.DESCRIBE.LAVAARENA_POINTSTEAD = "STABBING DEVICE"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.LAVAARENA_POINTSTEAD = "A dagger, mostly dull, I suppose you can stab with it."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.LAVAARENA_POINTSTEAD = "Not as sharp as Lucy."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.LAVAARENA_POINTSTEAD = "I'm not really suited for close quarter combat."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.LAVAARENA_POINTSTEAD = "Merely a weapon! An insult!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.LAVAARENA_POINTSTEAD = "Mom always got upset when we played with those..."
STRINGS.CHARACTERS.WINONA.DESCRIBE.LAVAARENA_POINTSTEAD = "Don't leave this lying around!"
STRINGS.CHARACTERS.WARLY.DESCRIBE.LAVAARENA_POINTSTEAD = "Ah my kitchen knife... Ah non, nevermind."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.LAVAARENA_POINTSTEAD = "A stick with a pointy end, this will barely make a dent!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.LAVAARENA_POINTSTEAD = "Stabby"
STRINGS.CHARACTERS.WURT.DESCRIBE.LAVAARENA_POINTSTEAD = "It sharp!"
STRINGS.CHARACTERS.WALTER.DESCRIBE.LAVAARENA_POINTSTEAD = "Now I can cosplay as my favourite serial killer!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.LAVAARENA_POINTSTEAD = "Barely any efficiency. Not worth my time."
STRINGS.CHARACTERS.ILASKUS.DESCRIBE.LAVAARENA_POINTSTEAD= "Honestly can't go wrong with my trusty weapon."
------------------------------------------------------------------------------------
STRINGS.NAMES.DREADSTEAD = "Dreadstead"
STRINGS.RECIPE_DESC.DREADSTEAD = "Give your foes the horror of being cut."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.DREADSTEAD = "This blade is self mending!"
STRINGS.CHARACTERS.WILLOW.DESCRIBE.DREADSTEAD = "Can we make a fiery one next?"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.DREADSTEAD = "Is scary little blade!"
STRINGS.CHARACTERS.WENDY.DESCRIBE.DREADSTEAD = "How much dread can you bare?"
STRINGS.CHARACTERS.WX78.DESCRIBE.DREADSTEAD = "YOU DON'T SCARE ME STICK"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.DREADSTEAD = "This one mends itself by connecting to one's mind."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.DREADSTEAD = "I'd take a tool that doesn't give me a headache."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.DREADSTEAD = "Tell me, you didn't wish to be a blacksmith, right?"
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.DREADSTEAD = "A blade of a demon!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.DREADSTEAD = "We don't really want to play with this one..."
STRINGS.CHARACTERS.WINONA.DESCRIBE.DREADSTEAD = "Magic isn't really a proof of ingenuity."
STRINGS.CHARACTERS.WARLY.DESCRIBE.DREADSTEAD = "I'll cut my onions with something else, I think."
STRINGS.CHARACTERS.WORTOX.DESCRIBE.DREADSTEAD = "Hoohoo! Give up on your mind, and you may stab in kind!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.DREADSTEAD = "Scary stabby"
STRINGS.CHARACTERS.WURT.DESCRIBE.DREADSTEAD = "It hurt my head..."
STRINGS.CHARACTERS.WALTER.DESCRIBE.DREADSTEAD = "I uh, I don't think serial killers used that one."
STRINGS.CHARACTERS.WANDA.DESCRIBE.DREADSTEAD = "That's a bit better than the other one."
STRINGS.CHARACTERS.ILASKUS.DESCRIBE.DREADSTEAD= "I almost don't want to hold this, but it looks cool to wield."
------------------------------------------------------------------------------------
STRINGS.NAMES.BRIGHTSTEAD = "Brightstead"
STRINGS.RECIPE_DESC.BRIGHTSTEAD = "Enlighten your enemies, for they may be unwilling."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BRIGHTSTEAD = "It bind to your hand when you pick it up."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.BRIGHTSTEAD = "The handle is somehow fireproof... Lame!"
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.BRIGHTSTEAD = "Is knife made with scary plant."
STRINGS.CHARACTERS.WENDY.DESCRIBE.BRIGHTSTEAD = "Bind to my hand, and plunge it in me."
STRINGS.CHARACTERS.WX78.DESCRIBE.BRIGHTSTEAD = "IMPROVED STABBING ACQUIRED"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.BRIGHTSTEAD = "The plants give it a superior strength compared to the user's."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.BRIGHTSTEAD = "This creeps Lucy out."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.BRIGHTSTEAD = "Such power..."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.BRIGHTSTEAD = "Do you find yourself worthy of wielding such weapon?"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.BRIGHTSTEAD = "We didn't know gardening could be so fun!"
STRINGS.CHARACTERS.WINONA.DESCRIBE.BRIGHTSTEAD = "Fine cuttlery!"
STRINGS.CHARACTERS.WARLY.DESCRIBE.BRIGHTSTEAD = "Ah finally! I can cut my tenderloins better!"
STRINGS.CHARACTERS.WORTOX.DESCRIBE.BRIGHTSTEAD = "Enlighten your enemies until they all flee!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.BRIGHTSTEAD = "Stabby made of silent friends"
STRINGS.CHARACTERS.WURT.DESCRIBE.BRIGHTSTEAD = "I want glowy stick too!"
STRINGS.CHARACTERS.WALTER.DESCRIBE.BRIGHTSTEAD = "Could we play dar... knives with this?"
STRINGS.CHARACTERS.WANDA.DESCRIBE.BRIGHTSTEAD = "I'd rather a little more range."
STRINGS.CHARACTERS.ILASKUS.DESCRIBE.BRIGHTSTEAD= "I simply just put together the glowy shards to make it sharper."
------------------------------------------------------------------------------------
STRINGS.NAMES.VOIDSTEAD = "Voidstead"
STRINGS.RECIPE_DESC.VOIDSTEAD = "It screams for blood."
STRINGS.CHARACTERS.GENERIC.DESCRIBE.VOIDSTEAD = "I can hear it whispering."
STRINGS.CHARACTERS.WILLOW.DESCRIBE.VOIDSTEAD = "You never know when you need to traumatize someone."
STRINGS.CHARACTERS.WOLFGANG.DESCRIBE.VOIDSTEAD = "Creepy knife wants to be used."
STRINGS.CHARACTERS.WENDY.DESCRIBE.VOIDSTEAD = "It is bloodthirsty, adorable."
STRINGS.CHARACTERS.WX78.DESCRIBE.VOIDSTEAD = "CUT IT OUT I DO THE EVIL TALKING NOT YOU"
STRINGS.CHARACTERS.WICKERBOTTOM.DESCRIBE.VOIDSTEAD = "A stabbing device made entirely out of anger."
STRINGS.CHARACTERS.WOODIE.DESCRIBE.VOIDSTEAD = "Luce doesn't like this one."
STRINGS.CHARACTERS.WAXWELL.DESCRIBE.VOIDSTEAD = "Now you understand my style in combat."
STRINGS.CHARACTERS.WATHGRITHR.DESCRIBE.VOIDSTEAD = "Slice the shadows!"
STRINGS.CHARACTERS.WEBBER.DESCRIBE.VOIDSTEAD = "We don't like how it says mean things."
STRINGS.CHARACTERS.WINONA.DESCRIBE.VOIDSTEAD = "This one has quite the attitude! Ha!"
STRINGS.CHARACTERS.WARLY.DESCRIBE.VOIDSTEAD = "If I ever borrow it, can we cut down on the threats against my dishes?"
STRINGS.CHARACTERS.WORTOX.DESCRIBE.VOIDSTEAD = "I could prank someone by hiding it under their pillow! Hyuyu!"
STRINGS.CHARACTERS.WORMWOOD.DESCRIBE.VOIDSTEAD = "Not friendly stabby"
STRINGS.CHARACTERS.WURT.DESCRIBE.VOIDSTEAD = "It spooky... Don't like it..."
STRINGS.CHARACTERS.WALTER.DESCRIBE.VOIDSTEAD = "Now in : The Shadow Killer and his trusty blade! Haha!"
STRINGS.CHARACTERS.WANDA.DESCRIBE.VOIDSTEAD = "I'd rather my tools not talking to me."
STRINGS.CHARACTERS.ILASKUS.DESCRIBE.VOIDSTEAD= "Who knew the darkness would cut foes really well?"
STRINGS.VOIDSTEAD_QUOTES = {
    overtime = {
        "You know, I think I'm being watched. Not by you.",
        "I didn't think I'd become a weapon.",
        "A pleasure to be working alongside.",
        "Hold me gently, if you may."
    },
    on_ground = {
        "It's boring here.",
        "I would like to cut something.",
        "I crave violence...",
        "Someone, use me to do something..."
    }
}

-- Status Announcement Compatibility
local STATUS_ANNOUNCEMENTS = {
    ILASKUS = {
        HUNGER = {
            FULL  = "I'm stuffed. Not like I can't have more though.",
            HIGH  = "I should be fiiiine.",
            MID   = "Perhaps a nice meat snack might be in order?",
            LOW   = "I could eat a horse right now...",
            EMPTY = "Anything will suffice... please...",
        },
        SANITY = {
            FULL  = "Just me, and the landscape to explore.",
            HIGH  = "Nothing out of the ordinary.",
            MID   = "Uh, something feels wrong around here.",
            LOW   = "I can't quite focus...",
            EMPTY = "Oh please, stop bugging me you demons!",
        },
        HEALTH = {
            FULL  = "Fit enough to take on many things.",
            HIGH  = "I could still take a beating.",
            MID   = "Think I've given up? Think again.",
            LOW   = "Okay, now I really gotta look after myself...",
            EMPTY = "I'd best not fall here...",
        },
        WETNESS = {
            FULL  = "Well. This will take a while to dry off.",
            HIGH  = "Fantastic. I smell.",
            MID   = "I shouldn't like to sniff myself right now.",
            LOW   = "A few drops, nothing to mind.",
            EMPTY = "Barely any raindrops on me.",
        },
    }
}

if type(STRINGS._STATUS_ANNOUNCEMENTS) == "table" then
	local function merge(target, strings)
		for k, v in pairs(strings) do
			if type(v) == "table" then
				if not target[k] then
					target[k] = {}
				end
				merge(target[k], v)
			else
				target[k] = v
			end
		end
	end
	merge(STRINGS._STATUS_ANNOUNCEMENTS, STATUS_ANNOUNCEMENTS)
else
    STRINGS._STATUS_ANNOUNCEMENTS = STATUS_ANNOUNCEMENTS
end

-- Wonder Character Quotes Compatibility
local DescribeOther = STRINGS.CHARACTERS.ILASKUS.DESCRIBE

DescribeOther.WONDERWHY = {
	ILASKUS = "Why hello there, %s. Mind sharing ancient knowledge on blades?",
	ATTACKER = "I did ask for blade stuff, but NOT tested on me!",
	MURDERER = "I WILL strike back at your fragile body if I have to!",
	REVIVER = "What can I say except thank you, %s?",
	GHOST = "Wait, HOW are you a GOAT?! Whatever, wait here.",
    FIRESTARTER = "Fire can be the downfall of our camp too, %s.",
}

-- Item Quotes
DescribeOther.LIQUID_MIRROR = "Hm, floating. Must be some ancient magic I don't get."
DescribeOther.ANCIENTDREAMS_GEMSHARD = "Well, certainly not of use to me."
DescribeOther.WHY_KLAUS_SACK_PIECE = "Mmm. Could be a good binding, but I'll pass."
DescribeOther.ANCIENTDREAMS_GEGG = "Friendly reminder people, don't eat glass. Well, except that guy."
DescribeOther.ANCIENTDREAMS_CANDY = "Looks chewy. And... rock hard."
DescribeOther.WHY_REFINED_DESERTSTONE = "Seems like they can make anything into an eye."
DescribeOther.WHY_REFINED_MILKY = "How does an EYE even feed them?"
DescribeOther.WHY_REFINED_LIGHTBULB = "Illuminates their hollow eye."
DescribeOther.WHY_REFINED_GLASSWHITES = "This looks fragile."
DescribeOther.WHY_REFINED_GOLD = "If only money even had a use here."
DescribeOther.WHY_REFINED_MARBLE = "Simply marble."
DescribeOther.WHY_REFINED_MOONROCK = "So it calls upon the skies' fury?"
DescribeOther.WHY_REFINED_FLINT = "I don't get how this improves their work flow."
DescribeOther.WHY_REFINED_REDGEM = "I've heard this helps them stay in one piece. Hm."
DescribeOther.WHY_REFINED_BLUEGEM = "Like winter encased in an orb."
DescribeOther.WHY_REFINED_PURPLEGEM = "I would not want to look through that."
DescribeOther.WHY_REFINED_GREENGEM = "Oh, the possibilities I see in this one..."
DescribeOther.WHY_REFINED_ORANGEGEM = "I wish I could harness such power too. I'm just lazy."
DescribeOther.WHY_REFINED_YELLOWGEM = "That's way too bright for me to peer through."
DescribeOther.WHY_REFINED_OPALGEM = "That's way colder than the blue one."
DescribeOther.WHY_PERFECTIONGEM = "I should also perfect my blades one day."
DescribeOther.WHY_NOTHINGNESSGEM = "That emanates great fear, and it's striking me just looking at it."
DescribeOther.WHY_REFINED_BUTTERFLY  = "Not sure how this helps them, but alright."
DescribeOther.WHY_REFINED_BUTTERFLY_MOON  = "I could almost feel the lunacy in that."
DescribeOther.WHYEHAT_HELM = "So I can dress up as them?"
DescribeOther.WHYEHAT_HELMET = "That'd be too heavy on my head."
DescribeOther.WHYEHAT = "Looks almost like a cursed relic to me, if I've ever seen one."
DescribeOther.WHYEHAT_FACE = "A great improvement from their previous one, I'll say."
DescribeOther.WHYEHAT_DREADSTONE = "They definitely look more fearsome with that on."
DescribeOther.WHYEHAT_DREADSTONE_BROKEN = "Hm, probably needs some time to mend itself."
DescribeOther.WHYEARMOR_PILE = "That looks rather busted up."
DescribeOther.WHYEARMOR_INCOMPLETE = "Wonder needs these for their stability."
DescribeOther.WHYEARMOR = "I'd want to try that on, heh."
DescribeOther.WHYEARMOR_BACKPACK = "It glows, it stores, and it's convenient!"
DescribeOther.WHYEARMOR_PROSTHESIS = "Aw jeez. That doesn't look too sturdy for Wonder."
DescribeOther.WHYCRANK = "Seems to hold the gems tight in one place."
DescribeOther.WHYTORCH = "Scorches my poor hands..."
DescribeOther.WHYPIERCER = "That looks awesome. Though I'd still prefer a shortblade."
DescribeOther.WHYLANTERN = "Pretty illumination for an ancient light." 
DescribeOther.WHYFLUTOSCOPE = "I'll leave Wonder to it... I shouldn't have tried it."
DescribeOther.WHYBRELLA = "I'll stick to a regular one, thank you."
DescribeOther.WHYTEPADLO = "If only it doesn't disappear from my grasp..."
DescribeOther.WHYLIFEPEELER = "Encourages me to use myself for other people."
DescribeOther.WHYFREEZER = "I can feel its coldness from here..."
DescribeOther.WHYJEWELLAB = "Makes the eyes for Wonder to use."
DescribeOther.WHYGLOBELAB = "If only one of these existed for blade craft, too."
DescribeOther.WHYCRUSHER = "So it does different things when Wonder puts fancy gems in?"
DescribeOther.WHY_REDGEM_SEED = "If even marble grows here, I won't question this either."
DescribeOther.WHY_REDGEM_FORMATION = "What shape would you take up?"
DescribeOther.WHY_REDGEM_OVERGROWN = "Pretty! Pretty."
DescribeOther.WHY_BLUEGEM_SEED = "If even marble grows here, I won't question this either."
DescribeOther.WHY_BLUEGEM_FORMATION = "Cost efficient, at least to me."
DescribeOther.WHY_BLUEGEM_OVERGROWN = "Looks cold as ever."
DescribeOther.WHY_PURPLEGEM_SEED = "If even marble grows here, I won't question this either."
DescribeOther.WHY_PURPLEGEM_FORMATION = "Sprouting horror."
DescribeOther.WHY_PURPLEGEM_OVERGROWN = "I could tell there's evil in that."
DescribeOther.WHY_GREENGEM_SEED = "If even marble grows here, I won't question this either."
DescribeOther.WHY_GREENGEM_FORMATION = "Green, my favorite."
DescribeOther.WHY_GREENGEM_OVERGROWN = "This is better than having to raid that dark place."
DescribeOther.WHY_ORANGEGEM_SEED = "If even marble grows here, I won't question this either."
DescribeOther.WHY_ORANGEGEM_FORMATION = "I can wait if it means I don't have to go *there* again."
DescribeOther.WHY_ORANGEGEM_OVERGROWN = "I feel lazy to mine this one."
DescribeOther.WHY_YELLOWGEM_SEED = "If even marble grows here, I won't question this either."
DescribeOther.WHY_YELLOWGEM_FORMATION = "Heh, I like the glow of this one."
DescribeOther.WHY_YELLOWGEM_OVERGROWN = "Bright and glowy. And pretty."
DescribeOther.WHY_OPALGEM_SEED = "If even marble grows here, I won't question this either."
DescribeOther.WHY_OPALGEM_FORMATION = "Now that there is a beaut-in-progress."
DescribeOther.WHY_OPALGEM_OVERGROWN = "Just look at its colors!"