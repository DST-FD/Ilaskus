
-----------------------------------
-- This file is the template for other speech files. Once a new string is added here, simply run PropagateSpeech.bat
-- If you are adding strings that are character specific, or not required by all characters, you will still need to add the strings to speech_wilson.lua,
-- and then add the context string to speech_from_generic.lua. Once you run the PropagateSpeech.bat, you can go into your character's speech file and simply uncomment the new lines.
--
-- There are some caveats about maintaining sane formatting in this file.
--      -No single line lua tables
--      -Opening and closing brackets should be on their own line
--      -If wilson's speech has X unnamed strings in a table, then all other speech files must have at least X unnamed strings in that context too (example, CHESSPIECE_MOOSEGOOSE has 1 string in wilson, but 2 in wortox), this requirement could be relaxed if required by motifying po_vault.lua)

return {
	ACTIONFAIL =
	{
        APPRAISE =
        {
            NOTNOW = "Maybe later.",
        },
        REPAIR =
        {
            WRONGPIECE = "That... didn't fit.",
        },
        BUILD =
        {
            MOUNTED = "I gotta get off this fella before I can place this.",
            HASPET = "I have enough burden already!",
			TICOON = "Nuh uh. One's enough.",
        },
		SHAVE =
		{
			AWAKEBEEFALO = "I know better than to try that.",
			GENERIC = "Don't think I can.",
			NOBITS = "Eh. Not like I'd wanna shave my fur.",
            REFUSE = "only_used_by_woodie",
            SOMEONEELSESBEEFALO = "That'd be rude, no way I'm doing it.",
		},
		STORE =
		{
			GENERIC = "This thing fits no more.",
			NOTALLOWED = "That doesn't make sense.",
			INUSE = "I guess I'll wait.",
            NOTMASTERCHEF = "I can barely cook anything, let alone use fancy wares.",
		},
        CONSTRUCT =
        {
            INUSE = "Whoops, sorry!",
            NOTALLOWED = "That doesn't go there, no?",
            EMPTY = "Can't build with just air in my pockets.",
            MISMATCH = "Woh, that's not for this thing!",
            NOTREADY = "Perhaps after some waiting...?",
        },
		RUMMAGE =
		{
			GENERIC = "I can't do that.",
			INUSE = "I gotta wait my turn.",
            NOTMASTERCHEF = "I can barely cook anything, let alone use fancy wares.",
		},
		UNLOCK =
        {
        	WRONGKEY = "I can't do that.",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "How brittle was that key even?",
        	KLAUS = "Not now, not now!",
			QUAGMIRE_WRONGKEY = "Darn it. This ain't the right one.",
        },
		ACTIVATE =
		{
			LOCKED_GATE = "Locked, blocked.",
            HOSTBUSY = "He looks busy.",
            CARNIVAL_HOST_HERE = "Now just where is he...",
            NOCARNIVAL = "Crows gone, apparently.",
			EMPTY_CATCOONDEN = "Man, at least a few twigs would've been nice...",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDERS = "The search would just end in a minute like this.",
			KITCOON_HIDEANDSEEK_NOT_ENOUGH_HIDING_SPOTS = "Don't think they can hide anywhere here.",
			KITCOON_HIDEANDSEEK_ONE_GAME_PER_DAY = "That's that, maybe another day.",
            MANNEQUIN_EQUIPSWAPFAILED = "That'd just slip off it.",
            PILLOWFIGHT_NO_HANDPILLOW = "No pillow, no slap fight.",
		},
		OPEN_CRAFTING =
		{
            PROFESSIONALCHEF = "I can barely cook anything, let alone use fancy wares.",
			SHADOWMAGIC = "I'm not keen on magic...",
		},
        COOK =
        {
            GENERIC = "Not now.",
            INUSE = "My bad, you go ahead!",
            TOOFAR = "Can't reach that from here.",
        },
        START_CARRAT_RACE =
        {
            NO_RACERS = "Right, what's a race without competitors?",
        },

		DISMANTLE =
		{
			COOKING = "Let's wait for the meal before I do that.",
			INUSE = "Gotta be patient.",
			NOTEMPTY = "There's still things in there, no?",
        },
        FISH_OCEAN =
		{
			TOODEEP = "Line's too short for this kinda thing.",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "The line would just be too long in this pond.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_waxwell_and_wicker",
            NOBIRDS = "only_used_by_waxwell_and_wicker",
            NOWATERNEARBY = "only_used_by_waxwell_and_wicker",
            TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
            NOFIRES =       "only_used_by_waxwell_and_wicker",
            NOSILVICULTURE = "only_used_by_waxwell_and_wicker",
            NOHORTICULTURE = "only_used_by_waxwell_and_wicker",
            NOTENTACLEGROUND = "only_used_by_waxwell_and_wicker",
            NOSLEEPTARGETS = "only_used_by_waxwell_and_wicker",
            TOOMANYBEES = "only_used_by_waxwell_and_wicker",
            NOMOONINCAVES = "only_used_by_waxwell_and_wicker",
            ALREADYFULLMOON = "only_used_by_waxwell_and_wicker",
        },

        GIVE =
        {
            GENERIC = "Nuh uh.",
            DEAD = "...They're not moving.",
            SLEEPING = "Of course, it's dark out...",
            BUSY = "Hmmph. Later it is.",
            ABIGAILHEART = "I tried. Then again, I just wanted to help.",
            GHOSTHEART = "They look angry enough. Don't want them lashing at me more.",
            NOTGEM = "Uh, no, this looks like a gem slot...",
            WRONGGEM = "Seems like it needs a fancier one.",
            NOTSTAFF = "I remember this one. A... caller... something staff?",
            MUSHROOMFARM_NEEDSSHROOM = "Not like it grows anything apart from shrooms.",
            MUSHROOMFARM_NEEDSLOG = "Log of the magical kind, it needs.",
            MUSHROOMFARM_NOMOONALLOWED = "They just refuse to be in there, apparently.",
            SLOTFULL = "Nope. Too full.",
            FOODFULL = "Can't stack two plates on one another.",
            NOTDISH = "Not fancy enough I see.",
            DUPLICATE = "Isn't that the same one?",
            NOTSCULPTABLE = "Like clay in your hands, but not everything.",
            NOTATRIUMKEY = "Again, another keyhole.",
            CANTSHADOWREVIVE = "Don't think we could do that. Shouldn't, even.",
            WRONGSHADOWFORM = "Wrong layout, obviously.",
            NOMOON = "Don't think 'Celestial' works without the moon.",
			PIGKINGGAME_MESSY = "He wants the place tidy.",
			PIGKINGGAME_DANGER = "Perhaps not the best time to play.",
			PIGKINGGAME_TOOLATE = "It's not day.",
			CARNIVALGAME_INVALID_ITEM = "Can't play without a token, hmm...",
			CARNIVALGAME_ALREADY_PLAYING = "I'd best just watch and wait my turn.",
            SPIDERNOHAT = "Okay, a bunch of spiders don't feel right in there.",
            TERRARIUM_REFUSE = "Okay, guess that needs something goopy.",
            TERRARIUM_COOLDOWN = "It's empty. Doubt that'd work.",
            NOTAMONKEY = "What, do I look like I speak ooe ook?",
            QUEENBUSY = "Waiting, as usual.",
        },
        GIVETOPLAYER =
        {
            FULL = "Uh, make space please?",
            DEAD = "...They're not moving.",
            SLEEPING = "Please, wake up, I got something for you!",
            BUSY = "Whenever you're free.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Uh, make space please?",
            DEAD = "...They're not moving.",
            SLEEPING = "Please, wake up, I got something for you!",
            BUSY = "Whenever you're free.",
        },
        WRITE =
        {
            GENERIC = "Eh. I'll leave it be.",
            INUSE = "I'll wait.",
        },
        DRAW =
        {
            NOIMAGE = "I need a reference.",
        },
        CHANGEIN =
        {
            GENERIC = "Another time...",
            BURNING = "What, you want the beefalo to catch fire?!",
            INUSE = "Nah, One beefalo per station.",
            NOTENOUGHHAIR = "Guess the idea of shaving it wasn't so good after all.",
            NOOCCUPANT = "I suppose I need something here.",
        },
        ATTUNE =
        {
            NOHEALTH = "I'd fall to the floor head first if I try that.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "Buddy, come on now, 'tis not the time!",
            INUSE = "Aw shucks. I was gonna hop on.",
			SLEEPING = "Psst, hey, give me a minute.",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "I don't think it'd stay still fighting.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "I don't want to read all this again.",
            CANTLEARN = "Forbidden, apparently.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "Doesn't feel like it's for this place.",

			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "Found this out at seas, maybe I should read it there.",--Likely trying to read messagebottle treasure map in caves

            STASH_MAP_NOT_FOUND = "It says here there's treasure, but where in here?!",-- Likely trying to read stash map  in world without stash                  
        },
        WRAPBUNDLE =
        {
            EMPTY = "Wrapping oxygen. Truly a 2100's thing.",
        },
        PICKUP =
        {
			RESTRICTION = "I'd rather just use my blade.",
			INUSE = "Suppose I'll be waitin'.",
            NOTMINE_SPIDER = "only_used_by_webber",
            NOTMINE_YOTC =
            {
                "Wait, this isn't mine...",
                "OW- HEY, CUT THAT BITING!",
            },
			NO_HEAVY_LIFTING = "only_used_by_wanda",
            FULL_OF_CURSES = "Oh, hell no.",
        },
        SLAUGHTER =
        {
            TOOFAR = "The trail's gone, sigh.",
        },
        REPLATE =
        {
            MISMATCH = "Not this dish...",
            SAMEDISH = "Just one is enough.",
        },
        SAIL =
        {
        	REPAIR = "Ship-shape already.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Whoops-",
            BAD_TIMING1 = "Darn it!",
            BAD_TIMING2 = "This isn't songkran, me!",
        },
        LOWER_SAIL_FAIL =
        {
            "Uh, how do I-?",
            "Close, close, close...",
            "Uhh, sorry! We're not crashing, right??",
        },
        BATHBOMB =
        {
            GLASSED = "That's a nice formation... shame there's no water.",
            ALREADY_BOMBED = "It's already hot enough.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "I already have that one.",
		},
		COMPARE_WEIGHABLE =
		{
            FISH_TOO_SMALL = "Not too heavy.",
            OVERSIZEDVEGGIES_TOO_SMALL = "Giant, yet light...",
		},
        BEGIN_QUEST =
        {
            ONEGHOST = "only_used_by_wendy",
        },
		TELLSTORY =
		{
			GENERIC = "only_used_by_walter",
			NOT_NIGHT = "only_used_by_walter",
			NO_FIRE = "only_used_by_walter",
		},
        SING_FAIL =
        {
            SAMESONG = "only_used_by_wathgrithr",
        },
        PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "No point learning what I know.",
            FERTILIZER = "Ehh... I know this one.",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "Don't think they'll like salt.",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "Wait, since when...",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Gah, not even a drop??",
        },
        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "That's... not a beefalo!",
            BEEF_BELL_ALREADY_USED = "I'd rather just find my own one.",
            BEEF_BELL_HAS_BEEF_ALREADY = "Just one is enough.",
        },
        HITCHUP =
        {
            NEEDBEEF = "I need a beefalo.",
            NEEDBEEF_CLOSER = "My buddy's too far.",
            BEEF_HITCHED = "Did there, done that, no more.",
            INMOOD = "I don't think he'll like that right now...",
        },
        MARK =
        {
            ALREADY_MARKED = "I'm choosing only one.",
            NOT_PARTICIPANT = "Don't think I've got the rights.",
        },
        YOTB_STARTCONTEST =
        {
            DOESNTWORK = "Probably not the time for it.",
            ALREADYACTIVE = "Now just where is that man...",
        },
        YOTB_UNLOCKSKIN =
        {
            ALREADYKNOWN = "Oh, I think I already know that one.",
        },
        CARNIVALGAME_FEED =
        {
            TOO_LATE = "Gotta be faster...",
        },
        HERD_FOLLOWERS =
        {
            WEBBERONLY = "Maybe Webber can herd them.",
        },
        BEDAZZLE =
        {
            BURNING = "only_used_by_webber",
            BURNT = "only_used_by_webber",
            FROZEN = "only_used_by_webber",
            ALREADY_BEDAZZLED = "only_used_by_webber",
        },
        UPGRADE =
        {
            BEDAZZLED = "only_used_by_webber",
        },
		CAST_POCKETWATCH =
		{
			GENERIC = "only_used_by_wanda",
			REVIVE_FAILED = "only_used_by_wanda",
			WARP_NO_POINTS_LEFT = "only_used_by_wanda",
			SHARD_UNAVAILABLE = "only_used_by_wanda",
		},
        DISMANTLE_POCKETWATCH =
        {
            ONCOOLDOWN = "only_used_by_wanda",
        },

        ENTER_GYM =
        {
            NOWEIGHT = "only_used_by_wolfang",
            UNBALANCED = "only_used_by_wolfang",
            ONFIRE = "only_used_by_wolfang",
            SMOULDER = "only_used_by_wolfang",
            HUNGRY = "only_used_by_wolfang",
            FULL = "only_used_by_wolfang",
        },

        APPLYMODULE =
        {
            COOLDOWN = "only_used_by_wx78",
            NOTENOUGHSLOTS = "only_used_by_wx78",
        },
        REMOVEMODULES =
        {
            NO_MODULES = "only_used_by_wx78",
        },
        CHARGE_FROM =
        {
            NOT_ENOUGH_CHARGE = "only_used_by_wx78",
            CHARGE_FULL = "only_used_by_wx78",
        },

        HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "You don't want to talk, hm?",
        },

		CAST_SPELLBOOK =
		{
			NO_TOPHAT = "only_used_by_waxwell",
		},

		CASTAOE =
		{
			NO_MAX_SANITY = "only_used_by_waxwell",
		},
    },

	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "I... could've sworn I had enough stuff.",
		NO_TECH = "That... uh, I forgot how to make this...",
		NO_STATION = "I'm missing the proper gadgets for this.",
	},

	ACTIONFAIL_GENERIC = "No.",
	ANNOUNCE_BOAT_LEAK = "That's wetting my fur.",
	ANNOUNCE_BOAT_SINK = "Taking a big bath I go...",
	ANNOUNCE_DIG_DISEASE_WARNING = "Oh that was just going bad.", --removed
	ANNOUNCE_PICK_DISEASE_WARNING = "Eck- what's THAT smell??", --removed
	ANNOUNCE_ADVENTUREFAIL = "Oof, this feels like waking up back at the cottage...",
    ANNOUNCE_MOUNT_LOWHEALTH = "Hang in there, buddy! I'll try not to let you die!",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_NOWATERNEARBY = "only_used_by_waxwell_and_wicker",

	--waxwell specific
	ANNOUNCE_SHADOWLEVEL_ITEM = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T1 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T2 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T3 = "only_used_by_waxwell",
	ANNOUNCE_EQUIP_SHADOWLEVEL_T4 = "only_used_by_waxwell",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_EXITGYM = {
        MIGHTY = "only_used_by_wolfang",
        NORMAL = "only_used_by_wolfang",
        WIMPY = "only_used_by_wolfang",
    },

	ANNOUNCE_BEES = "BEEEEEEEEEEEEES!!!!",
	ANNOUNCE_BOOMERANG = "Ack! I gotta practice catching that!",
	ANNOUNCE_CHARLIE = "Now just what is that sound...",
	ANNOUNCE_CHARLIE_ATTACK = "a- AAAAAAAAAAAAAAAAAA—",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific
	ANNOUNCE_COLD = "I never... liked freezing temperatures...",
	ANNOUNCE_HOT = "This heat is worse than my hometown!",
	ANNOUNCE_CRAFTING_FAIL = "I suppose I should find more stuff for that.",
	ANNOUNCE_DEERCLOPS = "Big fella incoming.",
	ANNOUNCE_CAVEIN = "Why is there dust falling???",
	ANNOUNCE_ANTLION_SINKHOLE =
	{
		"Uhh what's that shaking about?",
		"The ground's shaking BADLY-",
		"Oh jeez oh no what now-",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "Here you go, ma'am.",
        "There. That might do.",
        "Calm down, please.",
	},
	ANNOUNCE_SACREDCHEST_YES = "Did that do something?",
	ANNOUNCE_SACREDCHEST_NO = "Was something supposed to uh...",
    ANNOUNCE_DUSK = "Darkness befalls...",

    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "Mmm.",
		PAINFUL = "That... wasn't okay...",
		SPOILED = "EW. JUST. EW.",
		STALE = "Eh, better than not eating that, I guess.",
		INVALID = "No way I'm trying that.",
        YUCKY = "HECK NO. NO.",

        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },

	ANNOUNCE_FOODMEMORY = "only_used_by_warly",

    ANNOUNCE_ENCUMBERED =
    {
        "Hoof... hoof...",
        "This is... rough...",
        "Gotta put... some work into it...",
        "I never... liked harsh work...",
        "Ow, my back...",
        "This is... heavy...",
        "Gah...",
        "Argh...",
        "Was this... even... a good idea...?",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING =
    {
		"I do NOT like that sound.",
		"I SHOULD GO.",
		"What on earth is happening???",
	},
    ANNOUNCE_RUINS_RESET = "Oh jeez, everything's back.",
    ANNOUNCE_SNARED = "OI!",
    ANNOUNCE_SNARED_IVY = "Wh- what?!",
    ANNOUNCE_REPELLED = "Gah, that didn't work?!",
	ANNOUNCE_ENTER_DARK = "I can't see a thing.",
	ANNOUNCE_ENTER_LIGHT = "That's better.",
	ANNOUNCE_FREEDOM = "I'm free! I'm finally free!",
	ANNOUNCE_HIGHRESEARCH = "I feel so smart now!",
	ANNOUNCE_HOUNDS = "I didn't make those sounds.",
	ANNOUNCE_WORMS = "Why's the floor rumbling a bit?",
	ANNOUNCE_HUNGRY = "Some meat would be nice about now...",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Whatever I've been finding should be close.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Whoops. Guess I lost it.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "Muddy hell. Lost the creature.",
	ANNOUNCE_INV_FULL = "I need more space...",
	ANNOUNCE_KNOCKEDOUT = "Ugh, my head!",
	ANNOUNCE_LOWRESEARCH = "I didn't learn very much from that.",
	ANNOUNCE_MOSQUITOS = "Aaah! Bug off!",
    ANNOUNCE_NOWARDROBEONFIRE = "Not when it's ON FIRE.",
    ANNOUNCE_NODANGERGIFT = "No, no, not right now!",
    ANNOUNCE_NOMOUNTEDGIFT = "Oughta get off first if anything.",
	ANNOUNCE_NODANGERSLEEP = "I'd be jumpscared by whatever's out there while I sleep.",
	ANNOUNCE_NODAYSLEEP = "Not naptime.",
	ANNOUNCE_NODAYSLEEP_CAVE = "Not down here. Way too creepy.",
	ANNOUNCE_NOHUNGERSLEEP = "Don't think I can sleep my hunger off...",
	ANNOUNCE_NOSLEEPONFIRE = "Heck no. Don't want my fur burnt.",
    ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "only_used_by_wx78",
	ANNOUNCE_NODANGERSIESTA = "What if something out there wakes me up??",
	ANNOUNCE_NONIGHTSIESTA = "I need sleep, not a short nap.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "Sheesh. Not here.",
	ANNOUNCE_NOHUNGERSIESTA = "I should eat first before resting.",
	ANNOUNCE_NO_TRAP = "Well, that was easy.",
	ANNOUNCE_PECKED = "Ow! Quit it!",
	ANNOUNCE_QUAKE = "That noise feels ominous.",
	ANNOUNCE_RESEARCH = "Never stop learning!",
	ANNOUNCE_SHELTER = "Thanks trees. Another reason why I like them.",
	ANNOUNCE_THORNS = "Ack!",
	ANNOUNCE_BURNT = "OW OW OW-",
	ANNOUNCE_TORCH_OUT = "Great, that's that.",
	ANNOUNCE_THURIBLE_OUT = "It's been thuribly depleted.",
	ANNOUNCE_FAN_OUT = "Fan's gone...",
    ANNOUNCE_COMPASS_OUT = "This compass doesn't point anymore.",
	ANNOUNCE_TRAP_WENT_OFF = "Woh, didn't mean to...",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "Sheesh, that just wasn't pleasant.",
	ANNOUNCE_TOWNPORTALTELEPORT = "There's sand in my fur, sigh.",
	ANNOUNCE_CANFIX = "\nI could fix that.",
	ANNOUNCE_ACCOMPLISHMENT = "I feel so accomplished!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "If only my friends could see me now...",
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Are you still hungry, plant?",
	ANNOUNCE_TOOL_SLIP = "Gah! Slippery devil...",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "T'was TOO CLOSE.",
	ANNOUNCE_TOADESCAPING = "OI OI, DON'T YOU LEAVE!",
	ANNOUNCE_TOADESCAPED = "Darn it, it left!",


	ANNOUNCE_DAMP = "Water, water...",
	ANNOUNCE_WET = "Seems like I'm having a shower.",
	ANNOUNCE_WETTER = "All this wetness is giving me wet dog smell.",
	ANNOUNCE_SOAKED = "This is just outrageous.",

	ANNOUNCE_WASHED_ASHORE = "Great, now I stink.",

    ANNOUNCE_DESPAWN = "Welp. Back to the cottage.",
	ANNOUNCE_BECOMEGHOST = "oOooOooo!!",
	ANNOUNCE_GHOSTDRAIN = "My humanity is about to start slipping away...",
	ANNOUNCE_PETRIFED_TREES = "Did I just hear trees screaming?",
	ANNOUNCE_KLAUS_ENRAGE = "WHO DID THAT?!",
	ANNOUNCE_KLAUS_UNCHAINED = "Oh great, now you have a mouth.",
	ANNOUNCE_KLAUS_CALLFORHELP = "Uh, Krampii...?",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "Hello?",
		GLASS_LOW = "You're almost out!",
		GLASS_REVEAL = "There.",
		IDOL_MED = "Hello?",
		IDOL_LOW = "You're almost out!",
		IDOL_REVEAL = "There.",
		SEED_MED = "Hello?",
		SEED_LOW = "You're almost out!",
		SEED_REVEAL = "There.",
	},

    --hallowed nights
    ANNOUNCE_SPOOKED = "Wh- who put them in there?!",
	ANNOUNCE_BRAVERY_POTION = "Whew, I can chop without fear now.",
	ANNOUNCE_MOONPOTION_FAILED = "That just did not work now, did it...",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "Might as well call people over.",
	ANNOUNCE_WINTERS_FEAST_BUFF = "Mmm, real good stuff there.",
	ANNOUNCE_IS_FEASTING = "I love this season...",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "Man. I can't feel the taste anymore.",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "Hey, no place to nap!",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "There ya go.",
    ANNOUNCE_REVIVED_FROM_CORPSE = "That there I don't even want to experience again.",

    ANNOUNCE_FLARE_SEEN = "Who set that off...?",
    ANNOUNCE_MEGA_FLARE_SEEN = "Okay, that's just asking for trouble.",
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Uh-oh. Sea monsters!",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD =
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD =
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT =
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING =
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --walter specfic
	ANNOUNCE_SLINGHSOT_OUT_OF_AMMO =
	{
		"only_used_by_walter",
		"only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_FIREWENTOUT =
	{
        "only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_NOT_NIGHT =
	{
        "only_used_by_walter",
	},

    -- wx specific
    ANNOUNCE_WX_SCANNER_NEW_FOUND = "only_used_by_wx78",
    ANNOUNCE_WX_SCANNER_FOUND_NO_DATA = "only_used_by_wx78",

    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "That didn't turn out well.",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "Oh jeez. This is why I can't cook.",
    QUAGMIRE_ANNOUNCE_LOSE = "I feel another curse.",
    QUAGMIRE_ANNOUNCE_WIN = "Toodles!",

    ANNOUNCE_ROYALTY =
    {
        "Your majesty.",
        "Your highness.",
        "My liege!",
    },

    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "Ooh, sparklies in my blade!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "C'mere you thingamabobs!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Best defense is best offense, I say!",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "Mmmyes, motivation!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "Ahh, that'll stop the wet!",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "I could go on for a whole night!",

    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "Aw man, I was just enjoying the electricity...",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Right, well, I should retreat.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "I suppose I am vulnerable as ever.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "Nevermind all that...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Man, I was just enjoying my dry privileges!",
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "(yawn...)",

	ANNOUNCE_OCEANFISHING_LINESNAP = "Aw hell. There goes.",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "I should reel in.",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "It's gone...",
	ANNOUNCE_OCEANFISHING_BADCAST = "Whoopsie.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE =
	{
		"Fish, please bite...",
		"Is this even the right place for this?",
		"Well, I suppose I COULD wait?",
		"Man. This wait is worse than fishing in those ponds.",
	},

	ANNOUNCE_WEIGHT = "Weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nYuppers, that's heavy.",

	ANNOUNCE_WINCH_CLAW_MISS = "Musta missed by a tiny bit.",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "Don't think there's anything down there.",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK =
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
		BOOK_SILVICULTURE = "only_used_by_wurt",
		BOOK_HORTICULTURE = "only_used_by_wurt",

        BOOK_FISH = "only_used_by_wurt",
        BOOK_FIRE = "only_used_by_wurt",
        BOOK_WEB = "only_used_by_wurt",
        BOOK_TEMPERATURE = "only_used_by_wurt",
        BOOK_LIGHT = "only_used_by_wurt",
        BOOK_RAIN = "only_used_by_wurt",
        BOOK_MOON = "only_used_by_wurt",
        BOOK_BEES = "only_used_by_wurt",

        BOOK_HORTICULTURE_UPGRADED = "only_used_by_wurt",
        BOOK_RESEARCH_STATION = "only_used_by_wurt",
        BOOK_LIGHT_UPGRADED = "only_used_by_wurt",
    },
    ANNOUNCE_WEAK_RAT = "Perhaps I should get a stronger carrat.",

    ANNOUNCE_CARRAT_START_RACE = "Go, carrats!",

    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "Wait wait- The OTHER way, darn it!",
        "Oi, turn back, turn back!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "Oh for goodness sake, WAKE UP!",
    ANNOUNCE_CARRAT_ERROR_WALKING = "Hey, this is a race! RUN, NOT WALK!",
    ANNOUNCE_CARRAT_ERROR_STUNNED = "You can do this, just get up!",

    ANNOUNCE_GHOST_QUEST = "only_used_by_wendy",
    ANNOUNCE_GHOST_HINT = "only_used_by_wendy",
    ANNOUNCE_GHOST_TOY_NEAR = {
        "only_used_by_wendy",
    },
	ANNOUNCE_SISTURN_FULL = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_DEATH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_RETRIEVE = "only_used_by_wendy",
	ANNOUNCE_ABIGAIL_LOW_HEALTH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_SUMMON =
	{
		LEVEL1 = "only_used_by_wendy",
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_GHOSTLYBOND_LEVELUP =
	{
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_NOINSPIRATION = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_TAUNT_BUFF = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_PANIC_BUFF = "only_used_by_wathgrithr",

    ANNOUNCE_WANDA_YOUNGTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOOLD = "only_used_by_wanda",
    ANNOUNCE_WANDA_OLDTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOYOUNG = "only_used_by_wanda",

	ANNOUNCE_POCKETWATCH_PORTAL = "Ack, I hurt my back...",

	ANNOUNCE_POCKETWATCH_MARK = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_RECALL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = "only_used_by_wanda",

    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "Hmm. Knowledge.",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "Don't need that no more.",
    ANNOUNCE_ARCHIVE_NO_POWER = "Is it not powered?",

    ANNOUNCE_PLANT_RESEARCHED =
    {
        "Learning more about 'em.",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "Hmm... time will tell.",

    ANNOUNCE_FERTILIZER_RESEARCHED = "Stinky as they may be, I am learning.",

	ANNOUNCE_FIRENETTLE_TOXIN =
	{
		"HOT HOT HOT HOT—",
		"JEEZ, THIS IS HOT!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "I don't want to accidentally touch that again...",

	ANNOUNCE_TALK_TO_PLANTS =
	{
        "Grow tall and strong.",
        "Rise up and thrive.",
		"Hi, how's it going?",
        "I'll be waiting for your growth.",
        "I'll try to look after you until you grow.",
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "You better hide!",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "Hey, can I join in?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND =
	{
		"Why hello there!",
		"Ah, that's where you were.",
		"Heh, gotcha!",
		"Eyy, found you!",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "Now just where was that other one?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "I got it!",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "{name} found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "They can't wait no more...",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "Well, too bad I guess.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "That'd be too far off for them.",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "Should be around here...",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "Hah, now that's something!",

	ANNOUNCE_TICOON_START_TRACKING	= "Where are you going?",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "Nothing...?",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "Should I go with it?",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "Yeah... maybe I should.",
	ANNOUNCE_TICOON_NEAR_KITCOON = "Anything here?",
	ANNOUNCE_TICOON_LOST_KITCOON = "I suppose that's been found.",
	ANNOUNCE_TICOON_ABANDONED = "I'll go find them myself.",
	ANNOUNCE_TICOON_DEAD = "Oh dear. I'll fulfill their mission regardless...",

    -- YOTB
    ANNOUNCE_CALL_BEEF = "Right here!",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "Judge won't see my beefalo like this.",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "Hmm... that's a new pattern!",

    -- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "Wh- JUST— WHAT IS THAT?!",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "Oh I'll poke you dead!",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Oi! Don't you fly away!",

    -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "Well, I think I'm used to these kinda things.",
    ANNOUNCE_MONKEY_CURSE_1 = "Fantastic, I'm returning to monke! *sigh*",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "Great, another curse, but unfun.",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "That's that, at least!",

    ANNOUNCE_PIRATES_ARRIVE = "I do NOT like that sound.",

    ANNOUNCE_BOOK_MOON_DAYTIME = "only_used_by_waxwell_and_wicker",

    ANNOUNCE_OFF_SCRIPT = "Wait, did I go off script?",

    ANNOUNCE_COZY_SLEEP = "Ahh, way better.",

	--
	ANNOUNCE_TOOL_TOOWEAK = "That's not gonna do the trick...",

    ANNOUNCE_LUNAR_RIFT_MAX = "Okay, why was there just a flash?",
    ANNOUNCE_SHADOW_RIFT_MAX = "Ominous, wasn't it?",

    ANNOUNCE_SCRAPBOOK_FULL = "Guess not.",

    ANNOUNCE_COACH = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },
    ANNOUNCE_WOLFGANG_WIMPY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_MIGHTY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_BEGIN_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_END_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_NOTEAM = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },

	BATTLECRY =
	{
		GENERIC = "You're due for a beating!",
		PIG = "Come here, you!",
		PREY = "Be my meal!",
		SPIDER = "I'll squish you good!",
		SPIDER_WARRIOR = "You're no better!",
		DEER = "You have NO IDEA what's coming!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "Hmph! Another time...",
		PIG = "You're free, for the day!",
		PREY = "Gosh darn it, I just couldn't.",
		SPIDER = "Off, you freak!",
		SPIDER_WARRIOR = "And don't return!",
	},

	DESCRIBE =
	{
		MULTIPLAYER_PORTAL = "Not quite like the portal I'm used to...",
        MULTIPLAYER_PORTAL_MOONROCK = "Uh. Yeah. Still not used to it.",
        MOONROCKIDOL = "Might be the key back to the cottage.",
        CONSTRUCTION_PLANS = "Plans for something.",

        ANTLION =
        {
            GENERIC = "Do you... need something?",
            VERYHAPPY = "I don't suppose you need anything else.",
            UNHAPPY = "Oh dear. Just tell me what you want!",
        },
        ANTLIONTRINKET = "Maybe someone else...",
        SANDSPIKE = "THAT'S SHARP!",
        SANDBLOCK = "That's too tall for me to climb!",
        GLASSSPIKE = "I'm glad that's over with.",
        GLASSBLOCK = "Nice glass castle there.",
        ABIGAIL_FLOWER =
        {
            GENERIC ="Pretty with a side of spooky.",
			LEVEL1 = "That seems a bit unready.",
			LEVEL2 = "I suppose that's looking better.",
			LEVEL3 = "Yup. That's way better.",

			-- deprecated
            LONG = "It hurts my soul to look at that thing.",
            MEDIUM = "It's giving me the creeps.",
            SOON = "Something is up with that flower!",
            HAUNTED_POCKET = "I don't think I should hang on to this.",
            HAUNTED_GROUND = "I'd die to find out what it does.",
        },

        BALLOONS_EMPTY = "I don't know how to blow them.",
        BALLOON = "Been a while since I've seen balloons.",
		BALLOONPARTY = "That looks full of joy. I guess.",
		BALLOONSPEED =
        {
            DEFLATED = "Not really of too much use now, is it?",
            GENERIC = "Gives me a bit o' swiftness.",
        },
		BALLOONVEST = "Is this supposed to be safe to wear?",
		BALLOONHAT = "I guess I could try that on...",

        BERNIE_INACTIVE =
        {
            BROKEN = "That's a sad bear.",
            GENERIC = "I wonder what it does.",
        },

        BERNIE_ACTIVE = "Huh... it's... moving??",
        BERNIE_BIG = "Okay, that just turned giant. I have so many questions.",

		BOOKSTATION =
		{
			GENERIC = "I'm not too much of a bookworm, but I'll try one from Ms. Wickerbottom anytime.",
			BURNT = "I'd better help Ms. Wickerbottom repair this later...",
		},
        BOOK_BIRDS = "I think Woodie would despise this.",
        BOOK_TENTACLES = "Wurt might love this one.",
        BOOK_GARDENING = "Oh, I'd like to try this one out.",
		BOOK_SILVICULTURE = "What's this about? Trees?",
		BOOK_HORTICULTURE = "Oh, I'd like to try this one out.",
        BOOK_SLEEP = "The cover alone makes me sleepy...",
        BOOK_BRIMSTONE = "The book itself smells like doom.",

        BOOK_FISH = "Seems to be all about fishing. No mentions of salmon, sadly.",
        BOOK_FIRE = "Safety first, so they say.",
        BOOK_WEB = "Yeah... I'm more angry at them than scared.",
        BOOK_TEMPERATURE = "What's this? How's it work?",
        BOOK_LIGHT = "Really shines.",
        BOOK_RAIN = "Rituals... I was never one to understand magic.",
        BOOK_MOON = "I love me a glorious full moon.",
        BOOK_BEES = "Not the bees...",
        
        BOOK_HORTICULTURE_UPGRADED = "This one seems more interesting to read.",
        BOOK_RESEARCH_STATION = "I suppose this tells you almost everything.",
        BOOK_LIGHT_UPGRADED = "Really, REALLY shines.",

        FIREPEN = "It's hot to the touch. Hm.",

        PLAYER =
        {
            GENERIC = "Good day, %s.",
            ATTACKER = "%s, did you happen to hurt someone?",
            MURDERER = "Oh I know what you did...",
            REVIVER = "Savior of the dead you are, %s.",
            GHOST = "I'll help you in a bit, %s. Just you wait.",
            FIRESTARTER = "%s, I don't think you should be burning stuff.",
        },
        WILSON =
        {
            GENERIC = "Well if it isn't %s!",
            ATTACKER = "Well, you look like you just did an experiment on someone.",
            MURDERER = "%s, go do your deadly experiments somewhere else.",
            REVIVER = "%s is a lifesaver.",
            GHOST = "Being ghastly isn't scientific. I'll fix that in a mo'.",
            FIRESTARTER = "%s, I don't suppose you want to experiment with FIRE?",
        },
        WOLFGANG =
        {
            GENERIC = "Why hello, %s!",
            ATTACKER = "Hey, calm your nerves. That's getting rough.",
            MURDERER = "I can't believe you would abuse your strength.",
            REVIVER = "%s not only has big muscles, but also a big heart.",
            GHOST = "I don't suppose you thought of fighting everything off.",
            FIRESTARTER = "Hey, look, you can't just set things on fire, %s.",
        },
        WAXWELL =
        {
            GENERIC = "Uh, hi, %s.",
            ATTACKER = "Mister, don't you go using magic on people, now...",
            MURDERER = "You sure love abusing that tome for worse, %s.",
            REVIVER = "%s knows magic, and he's using it well.",
            GHOST = "You don't gotta make that face, %s.",
            FIRESTARTER = "Magician or not, fire is still dangerous, sir!",
        },
        WX78 =
        {
            GENERIC = "Hello, %s!",
            ATTACKER = "%s, your systems aren't working right, huh...",
            MURDERER = "%s! Do I have to FIND the RESET button? What's with you?!",
            REVIVER = "Suppose their empathy module is responding a bit.",
            GHOST = "Wait, how are YOU a ghost?",
            FIRESTARTER = "You know you'll fry your circuits setting fires.",
        },
        WILLOW =
        {
            GENERIC = "Mmm, hello %s!",
            ATTACKER = "%s, did you burn someone?",
            MURDERER = "Oh not only do you burn, you also do morbid things...",
            REVIVER = "%s lights a fire in someone's life.",
            GHOST = "%s, did you overburn yourself?",
            FIRESTARTER = "I know you LOVE fires, but that's too far.",
        },
        WENDY =
        {
            GENERIC = "Having a good day, %s?",
            ATTACKER = "%s, you look extra creepy...",
            MURDERER = "Hey, you don't gotta sacrifice people for your sis!",
            REVIVER = "%s looks after other ghosts, too.",
            GHOST = "Your sister won't be happy seeing you like this. Hang on.",
            FIRESTARTER = "Sorry %s, but burning things won't bring her back.",
        },
        WOODIE =
        {
            GENERIC = "Hey there, %s!",
            ATTACKER = "%s...? I thought we all could get along?",
            MURDERER = "%s... I trusted you...",
            REVIVER = "%s really does have that empathy in him.",
            GHOST = "I'd better help you quick, %s.",
            BEAVER = "Man, sorry, but you look so huggable like this.",
            BEAVERGHOST = "Well, I really need to get you a heart.",
            MOOSE = "Heh, aren't you bigger!",
            MOOSEGHOST = "Uh... yeah. I'll help you in a bit.",
            GOOSE = "Goose is the most fearsome, you said. Well!",
            GOOSEGHOST = "Oh jeez. I'll get help.",
            FIRESTARTER = "You don't want a forest fire, do you %s?",
        },
        WICKERBOTTOM =
        {
            GENERIC = "Grand day, %s!",
            ATTACKER = "Ms. Wicker, can we talk this out?",
            MURDERER = "Ms. Wicker... but... but...",
            REVIVER = "This is why I respect you, %s.",
            GHOST = "Oh. Oh no. I'll seek help immediately, %s!",
            FIRESTARTER = "Uh, I don't suppose you meant to burn that.",
        },
        WES =
        {
            GENERIC = "%s! How's it going?",
            ATTACKER = "Oh you're not telling me nothing. You DID something.",
            MURDERER = "%s, staying silent won't help. I know what you did.",
            REVIVER = "Despite being mute, %s still knows what to do.",
            GHOST = "Yup, that's... not funny at all. I'll help.",
            FIRESTARTER = "Did you like, light a fire?",
        },
        WEBBER =
        {
            GENERIC = "Hello hello, %s!",
            ATTACKER = "Say, I thought you'd know better.",
            MURDERER = "Hey, did you JUST...",
            REVIVER = "%s knows how to help.",
            GHOST = "%s, I'll get you a heart. Might have to use your friends...",
            FIRESTARTER = "You might burn your spider dens doing that.",
        },
        WATHGRITHR =
        {
            GENERIC = "Having a nice one, %s?",
            ATTACKER = "I don't think that's just an act anymore.",
            MURDERER = "Your show has gone too far, %s!",
            REVIVER = "%s isn't just acting. She knows what she's doing.",
            GHOST = "Valhalla awaits naught, I'm afraid.",
            FIRESTARTER = "Fiery act, wasn't that...",
        },
        WINONA =
        {
            GENERIC = "Hello, %s!",
            ATTACKER = "I thought you read about workplace safety?",
            MURDERER = "I cannot fire you, but you know what you did!",
            REVIVER = "You know more than machines, I like that.",
            GHOST = "That's certainly not good. Hang in there.",
            FIRESTARTER = "Safety first, Safety first! No fires!",
        },
        WORTOX =
        {
            GENERIC = "H-Hello, %s!... ehehe...",
            ATTACKER = "Uhh, take the pranking part lighter, will you?",
            MURDERER = "I didn't know you needed souls badly, you could've asked me!",
            REVIVER = "Thanks for that, %s.",
            GHOST = "Oh no, hang on just a tiny bit...",
            FIRESTARTER = "Well I hope that prank was controlled...",
        },
        WORMWOOD =
        {
            GENERIC = "Bloom well, %s!",
            ATTACKER = "%s, why would you...?",
            MURDERER = "You want friends? I'll be your foe!",
            REVIVER = "%s is a very good friend, he is.",
            GHOST = "I'll be bringing you back, worry not.",
            FIRESTARTER = "You'll burn yourself like that, %s...",
        },
        WARLY =
        {
            GENERIC = "Bon...uh, Bonjour, %s!",
            ATTACKER = "Did you like, smack someone?",
            MURDERER = "You want more bones in your soup...\nToo bad, you're NOT taking me!",
            REVIVER = "Not only does he cook well, it seems!",
            GHOST = "I hope you didn't eat a harmful dish for taste test...",
            FIRESTARTER = "Hey hey hey! Turn down the flames!",
        },

        WURT =
        {
            GENERIC = "Hi there, %s!",
            ATTACKER = "%s, please don't go hurting people.",
            MURDERER = "You're florping kidding me, why'd you-?!",
            REVIVER = "You're one kind merm, %s!",
            GHOST = "%s, I'll get help, just you wait.",
            FIRESTARTER = "Your colony will burn if you do that, don't!",
        },

        WALTER =
        {
            GENERIC = "Hello, %s!",
            ATTACKER = "Hey, they didn't teach you that, right?",
            MURDERER = "%s? But why?",
            REVIVER = "%s really has every badge. Ghost first-aid included.",
            GHOST = "I know the fearless part, but reckless is uh...",
            FIRESTARTER = "I don't think they taught you to cause forest fires.",
        },

        WANDA =
        {
            GENERIC = "Hi there, %s!",
            ATTACKER = "Wait wait wait, can we have some time to talk this out?",
            MURDERER = "Are you right in your mind?! We're not Them!",
            REVIVER = "Why thank you, %s!",
            GHOST = "Do you need a heart...? I don't think time helps here...",
            FIRESTARTER = "What's fire got to do with your time?",
        },

        WONKEY =
        {
            GENERIC = "Uh. Hello?",
            ATTACKER = "Oi, not cool!",
            MURDERER = "Go ape somewhere else, and don't return!",
            REVIVER = "Did you just- save... egh, I don't know-",
            GHOST = "Okay, I'll help anyway.",
            FIRESTARTER = "You know, you'll burn bananas.",
        },

        MIGRATION_PORTAL =
        {
        --    GENERIC = "If I had any friends, this could take me to them.",
        --    OPEN = "If I step through, will I still be me?",
        --    FULL = "It seems to be popular over there.",
        },
        GLOMMER =
        {
            GENERIC = "I've heard them described as carrotlegs.",
            SLEEPING = "That's cute.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "What a flower...",
            DEAD = "That's not so pretty anymore.",
        },
        GLOMMERWINGS = "Wings of whatever that was.",
        GLOMMERFUEL = "It... looks like bubblegum, but no.",
        BELL = "Certainly not dinner bell.",
        STATUEGLOMMER =
        {
            GENERIC = "What's that on top?",
            EMPTY = "Well, that's that.",
        },

        LAVA_POND_ROCK = "Rocks by a hot pond.",

		WEBBERSKULL = "Looks like this belonged to someone.",
		WORMLIGHT = "Glowy, not sure how it tastes.",
		WORMLIGHT_LESSER = "Is this old?",
		WORM =
		{
		    PLANT = "Hey, I've seen enough flora to distinguish them!",
		    DIRT = "Whatever's tunneling looks big.",
		    WORM = "Oh jeez, what the-?!",
		},
        WORMLIGHT_PLANT = "That's just a glowing fruit.",
		MOLE =
		{
			HELD = "What, you want rocks or something?",
			UNDERGROUND = "Something's digging around.",
			ABOVEGROUND = "Mole. Just doing mole things.",
		},
		MOLEHILL = "Does it have rocks?",
		MOLEHAT = "I could see way more with this.",

		EEL = "Hmm, one of my favorite fishes.",
		EEL_COOKED = "That honestly looks delicious.",
		UNAGI = "Now that's just heavenly.",
		EYETURRET = "What is it looking at me for, anyway?",
		EYETURRET_ITEM = "Gotta put this somewhere as defense.",
		MINOTAURHORN = "Very pointy. Glad that didn't get to me badly.",
		MINOTAURCHEST = "Loot time!",
		THULECITE_PIECES = "Bits of whatever it is.",
		POND_ALGAE = "Just some plants. Meh.",
		GREENSTAFF = "This dismantles things?",
		GIFT = "Mmm hmm. Must be the season.",
        GIFTWRAP = "Might as well give something to someone.",
		POTTEDFERN = "Fern. Pot. What's more?",
        SUCCULENT_POTTED = "Succulent. Pot. Yup.",
		SUCCULENT_PLANT = "Were these here before?",
		SUCCULENT_PICKED = "Definitely not eating that.",
		SENTRYWARD = "Useful for lookouts.",
        TOWNPORTAL =
        {
			GENERIC = "Looks nice for a magical thing.",
			ACTIVE = "Dare I touch it?",
		},
        TOWNPORTALTALISMAN =
        {
			GENERIC = "Perhaps an ornament. I don't know.",
			ACTIVE = "Huh, the spikes extended...",
		},
        WETPAPER = "Moist sheet, that is.",
        WETPOUCH = "Might I open it to see what's inside?",
        MOONROCK_PIECES = "Bits of... petrified life.",
        MOONBASE =
        {
            GENERIC = "That looks like a base for something.",
            BROKEN = "It's seen better days.",
            STAFFED = "So... what's that supposed to do?",
            WRONGSTAFF = "Something tells me that doesn't fit.",
            MOONSTAFF = "Weird how it's producing cold light on its own.",
        },
        MOONDIAL =
        {
			GENERIC = "I've heard about tides, but this is new.",
			NIGHT_NEW = "Darkest of night.",
			NIGHT_WAX = "Starting to wax.",
			NIGHT_FULL = "Full moon, my beloved.",
			NIGHT_WANE = "That's waning.",
			CAVE = "Doubt this'll work down here. More of a decor.",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
			GLASSED = "Isn't that glass right there just ominous?",
        },
		THULECITE = "Looks strong.",
		ARMORRUINS = "Not really my style, but it works.",
		ARMORSKELETON = "I don't know how it works, but this is fantastic.",
		SKELETONHAT = "I vaguely remember someone who wants to wear this for an eternity.\nNow where did I hear that from...",
		RUINS_BAT = "I'd rather use my blade still.",
		RUINSHAT = "Bit too shiny for my liking. Works anyhoo.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "Nothing so far, it seems.",
            WARN = "That glow on it feels ominous.",
            WAXING = "That... can't be good, can it?",
            STEADY = "Seems to be glowing badly now.",
            WANING = "Hm, the glow's fading.",
            DAWN = "Almost done, are we?",
            NOMAGIC = "Nothing to measure.",
		},
		BISHOP_NIGHTMARE = "How does that even work at all??",
		ROOK_NIGHTMARE = "Not as straight, but still horrible!",
		KNIGHT_NIGHTMARE = "That's just busted up!",
		MINOTAUR = "Something says he wants me gone.",
		SPIDER_DROPPER = "As if regular ones aren't annoying already...",
		NIGHTMARELIGHT = "Gives me the creeps.",
		NIGHTSTICK = "Electric isn't really my thing.",
		GREENGEM = "Green like the leaves I'm used to.",
		MULTITOOL_AXE_PICKAXE = "I call it Pickaxax!",
		ORANGESTAFF = "Wee bit disorienting.",
		YELLOWAMULET = "I like the glow of this.",
		GREENAMULET = "Better saved for complicated crafts.",
		SLURPERPELT = "I like my fur better.",

		SLURPER = "What is that, a ball of rolling fur?",
		SLURPER_PELT = "I like my fur better.",
		ARMORSLURPER = "Helps me with my stomach issues.",
		ORANGEAMULET = "Nice that I don't have to bend down for things.",
		YELLOWSTAFF = "How does it call forth a star, anyway?",
		YELLOWGEM = "Feels warmer than red ones.",
		ORANGEGEM = "Not sure what this does.",
        OPALSTAFF = "Looks chilly even when not cast.",
        OPALPRECIOUSGEM = "This looks important for something.",
        TELEBASE =
		{
			VALID = "That'll do.",
			GEMS = "Guess I need to place more gems.",
		},
		GEMSOCKET =
		{
			VALID = "Floats, apparently.",
			GEMS = "Gotta put a gem there.",
		},
		STAFFLIGHT = "Warm and welcoming for winter nights.",
        STAFFCOLDLIGHT = "That's a bit too cold for my liking...",

        ANCIENT_ALTAR = "Must've been important.",

        ANCIENT_ALTAR_BROKEN = "Looks busted down.",

        ANCIENT_STATUE = "What were they, bugs?",

        LICHEN = "Feels crunchy against my legs.",
		CUTLICHEN = "Not sure I'd want to try that.",

		CAVE_BANANA = "I could have that.",
		CAVE_BANANA_COOKED = "That's new. Might try.",
		CAVE_BANANA_TREE = "How does this even grow in here?",
		ROCKY = "What are you, lobster of the caves?",

		COMPASS =
		{
			GENERIC="Now which way was I facing...",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "Similar to mine, albeit sharper.",
        ARMORSNURTLESHELL = "That's safety in a pocket.",
        BAT = "Shoo, you!",
        BATBAT = "I don't even know how this is a good weapon.",
        BATWING = "Well, I'll totally try that.",
        BATWING_COOKED = "Looks like chicken wings. Except not.",
        BATCAVE = "Bet there's lots of bats in there.",
        BEDROLL_FURRY = "Looks comfy, would use this any day.",
        BUNNYMAN = "They look like they'll eat me more than I do them.",
        FLOWER_CAVE = "Brightness in the dark. Neat.",
        GUANO = "Different color, probably better I guess.",
        LANTERN = "Beats a torch.",
        LIGHTBULB = "I'd wish it glows in my pockets.",
        MANRABBIT_TAIL = "Shorter than mine.",
        MUSHROOMHAT = "Smells like spores... I don't like that.",
        MUSHROOM_LIGHT2 =
        {
            ON = "Puts me at ease.",
            OFF = "I would love to see it greenish.",
            BURNT = "Sigh. It was pretty...",
        },
        MUSHROOM_LIGHT =
        {
            ON = "A good decor for a cozy base.",
            OFF = "Let's put some light in there.",
            BURNT = "Oh come on. How did that burn?",
        },
        SLEEPBOMB = "Wouldn't want to be caught in the spores.",
        MUSHROOMBOMB = "Not on me, not on me...",
        SHROOM_SKIN = "Grotesque.",
        TOADSTOOL_CAP =
        {
            EMPTY = "Empty hole of nothing.",
            INGROUND = "Huh...",
            GENERIC = "Looks highly choppable. Might be just me.",
        },
        TOADSTOOL =
        {
            GENERIC = "...I take my words back.",
            RAGE = "Calm down there, I'm sorry!",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "Shrooms. Hm.",
            BURNT = "Didn't like it anyway.",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "Heck, that's big.",
            BLOOM = "That SMELLS. Augh.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "Bright red, aren't they?",
            BLOOM = "Why do spores have to be smelly?",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "Teensy tiny green.",
            BLOOM = "Smells...",
        },
        MUSHTREE_TALL_WEBBED = "Yuck. All sticky and even more smelly.",
        SPORE_TALL =
        {
            GENERIC = "Floating around aimlessly.",
            HELD = "It's sorta glowing in my hands.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "Ehh.",
            HELD = "It's sorta glowing in my hands.",
        },
        SPORE_SMALL =
        {
            GENERIC = "Okay, I guess.",
            HELD = "It's sorta glowing in my hands.",
        },
        RABBITHOUSE =
        {
            GENERIC = "Wooden planked carrots. Hmph.",
            BURNT = "Smells like charcoal than carrot.",
        },
        SLURTLE = "That's not a snail. Worse.",
        SLURTLE_SHELLPIECES = "Bits and bobs. Dunno if I can use it for anything.",
        SLURTLEHAT = "Pointy tip, defensive even. Nice.",
        SLURTLEHOLE = "Not touching that, ever.",
        SLURTLESLIME = "Ugh... nasty...",
        SNURTLE = "WHY ARE YOU RUNNING?\nWHY ARE YOU RUNNING?!?",
        SPIDER_HIDER = "Stop hiding, you...",
        SPIDER_SPITTER = "Don't you DARE spit at me.",
        SPIDERHOLE = "I don't like how it's webbed.",
        SPIDERHOLE_ROCK = "I don't like how it's webbed.",
        STALAGMITE = "Rocks. Hmph.",
        STALAGMITE_TALL = "EVEN more rocks.",

        TURF_CARPETFLOOR = "Made from local boof. Hopefully none were hurt.",
        TURF_CHECKERFLOOR = "Reminds me of my old days playing chess.",
        TURF_DIRT = "Flooring.",
        TURF_FOREST = "Flooring.",
        TURF_GRASS = "Flooring.",
        TURF_MARSH = "Flooring.",
        TURF_METEOR = "Moon flooring. Feels... awkward.",
        TURF_PEBBLEBEACH = "Beachy.",
        TURF_ROAD = "Roads in the wild.",
        TURF_ROCKY = "Flooring.",
        TURF_SAVANNA = "Flooring.",
        TURF_WOODFLOOR = "Feels almost at home.",

		TURF_CAVE="FLOORING.",
		TURF_FUNGUS="FLOORING.",
		TURF_FUNGUS_MOON = "FLOORING.",
		TURF_ARCHIVE = "FLOORING.",
		TURF_SINKHOLE="FLOORING.",
		TURF_UNDERROCK="FLOORING.",
		TURF_MUD="FLOORING.",

		TURF_DECIDUOUS = "FLOORING.",
		TURF_SANDY = "FLOORING.",
		TURF_BADLANDS = "FLOORING.",
		TURF_DESERTDIRT = "Flooring.",
		TURF_FUNGUS_GREEN = "Flooring.",
		TURF_FUNGUS_RED = "Flooring.",
		TURF_DRAGONFLY = "Do you want proof that it's fireproof?",

        TURF_SHELLBEACH = "Hm, pretty shells...",

		TURF_RUINSBRICK = "FLOORING.",
		TURF_RUINSBRICK_GLOW = "FLOORING.",
		TURF_RUINSTILES = "FLOORING.",
		TURF_RUINSTILES_GLOW = "FLOORING.",
		TURF_RUINSTRIM = "FLOORING.",
		TURF_RUINSTRIM_GLOW = "FLOORING.",

        TURF_MONKEY_GROUND = "Finally, some good sand.",

        TURF_CARPETFLOOR2 = "A different shade of flooring.",
        TURF_MOSAIC_GREY = "FLOORING.",
        TURF_MOSAIC_RED = "FLOORING.",
        TURF_MOSAIC_BLUE = "FLOORING.",

        TURF_BEARD_RUG = "I... despise that.",

		POWCAKE = "Looks edible, but not at the same time.",
        CAVE_ENTRANCE = "Curious. I want to break that open.",
        CAVE_ENTRANCE_RUINS = "Looks ancient.",

       	CAVE_ENTRANCE_OPEN =
        {
            GENERIC = "Bah. I just wanted to explore.",
            OPEN = "Exploration!",
            FULL = "Welp. Not now then.",
        },
        CAVE_EXIT =
        {
            GENERIC = "Wait, where's the exit?",
            OPEN = "I should go get fresh air.",
            FULL = "I'll just wait down here.",
        },

		MAXWELLPHONOGRAPH = "Old and tuney.",--single player
		BOOMERANG = "Never touched one o' these before.",
		PIGGUARD = "What's he defending for?",
		ABIGAIL =
		{
            LEVEL1 =
            {
                "That's a poor spirit if I've seen one.",
                "That's a poor spirit if I've seen one.",
            },
            LEVEL2 =
            {
                "That's a poor spirit if I've seen one.",
                "That's a poor spirit if I've seen one.",
            },
            LEVEL3 =
            {
                "That's a poor spirit if I've seen one.",
                "That's a poor spirit if I've seen one.",
            },
		},
		ADVENTURE_PORTAL = "Now where's that going to lead?",
		AMULET = "Does this help me with my mistakes?",
		ANIMAL_TRACK = "Hmm, suspicious.",
		ARMORGRASS = "Better than nothing.",
		ARMORMARBLE = "Heavy duty, works quite okay.",
		ARMORWOOD = "My favorite.",
		ARMOR_SANITY = "I'm not sure I want to wear that for long.",
		ASH =
		{
			GENERIC = "Cinders.",
			REMAINS_GLOMMERFLOWER = "Oh, the poor flower.",
			REMAINS_EYE_BONE = "Oh, the poor bone.",
			REMAINS_THINGIE = "Wait, didn't I put a thing in there?",
		},
		AXE = "Chop, chop.",
		BABYBEEFALO =
		{
			GENERIC = "That's adorable!",
		    SLEEPING = "Goodnight, lad.",
        },
        BUNDLE = "Packed and ready to go!",
        BUNDLEWRAP = "Better organized than jammed in my pockets.",
		BACKPACK = "I forgot mine back at the cottage!",
		BACONEGGS = "Mmmm, bacons my beloved.",
		BANDAGE = "If it works, it works.",
		BASALT = "That's one tough rock.", --removed
		BEARDHAIR = "Having fur is way better.",
		BEARGER = "HE'S. SO. CUTE.",
		BEARGERVEST = "Fluffy and cozy, Mmm!",
		ICEPACK = "Stocks my meals up nice and good.",
		BEARGER_FUR = "I almost feel bad doing that to him.",
		BEDROLL_STRAW = "Having it rough tonight, I am.",
		BEEQUEEN = "I was NEVER A FAN OF BEES!",
		BEEQUEENHIVE =
		{
			GENERIC = "Not getting my feet stuck in that.",
			GROWING = "Huh. That's popping out of the ground.",
		},
        BEEQUEENHIVEGROWN = "That's big...",
        BEEGUARD = "Ohohoho no, I don't like being stung...",
        HIVEHAT = "Soothes my mind, apparently.",
        MINISIGN =
        {
            GENERIC = "Organization!",
            UNDRAWN = "Might as well draw on it.",
        },
        MINISIGN_ITEM = "Let's put it down.",
		BEE =
		{
			GENERIC = "Bzz.",
			HELD = "Please don't sting me.",
		},
		BEEBOX =
		{
			READY = "Sweet goodness!",
			FULLHONEY = "Sweet goodness!",
			GENERIC = "Honey in the making.",
			NOHONEY = "No honey, sigh.",
			SOMEHONEY = "Ooh, that's coming along.",
			BURNT = "Toasted honey. This is sad.",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "Plenty to pick.",
			LOTS = "Hmm, could take one.",
			SOME = "That looks like it's growing nicely.",
			EMPTY = "Let's put a shroom in there.",
			ROTTEN = "I should add a new living log.",
			BURNT = "Burnt with a side of smoked spores.",
			SNOWCOVERED = "See, this is why the cold sucks.",
		},
		BEEFALO =
		{
			FOLLOWER = "He's nice.",
			GENERIC = "B O O F !",
			NAKED = "Well, I'm sorry alright.",
			SLEEPING = "Sleep well, fella.",
            --Domesticated states:
            DOMESTICATED = "We got our own buddy.",
            ORNERY = "Shaggy but packs a punch.",
            RIDER = "Quick on his feet, he is.",
            PUDGY = "Fattened up nicely, haven't you?",
            MYPARTNER = "I love having him as a buddy.",
		},

		BEEFALOHAT = "Cozy and smelly to wear.",
		BEEFALOWOOL = "I feel somewhat bad for them.",
		BEEHAT = "That'll help me against stings.",
        BEESWAX = "Now what should I do with you?",
		BEEHIVE = "Full of bees.",
		BEEMINE = "Packed with bees, ready for war.",
		BEEMINE_MAXWELL = "I'm not getting anywhere near that.",--removed
		BERRIES = "Mmm. Berries.",
		BERRIES_COOKED = "Cooked... berries? Eh.",
        BERRIES_JUICY = "Lovely flavor. Gotta eat them quick.",
        BERRIES_JUICY_COOKED = "Gotta have them now!",
		BERRYBUSH =
		{
			BARREN = "Needs poop.",
			WITHERED = "Too hot out, no?",
			GENERIC = "I'd love to pick some.",
			PICKED = "Gotta wait now.",
			DISEASED = "æ",--removed
			DISEASING = "Smells off. Augh.",--removed
			BURNING = "Oh that's roasting it! Bush included!",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "Too starved of fertilizers.",
			WITHERED = "Heated up, are you?",
			GENERIC = "I'll pick that when needed.",
			PICKED = "Keep growin' 'em.",
			DISEASED = "æ",--removed
			DISEASING = "Smells off. Augh.",--removed
			BURNING = "Smells like toasted berries. And bush.",
		},
		BIGFOOT = "Quite big, ain't it?",--removed
		BIRDCAGE =
		{
			GENERIC = "I gotta find a bird.",
			OCCUPIED = "There there.",
			SLEEPING = "Sweet dreams.",
			HUNGRY = "Oh, you need something?",
			STARVING = "I really gotta find you food...",
			DEAD = "Oh dear.",
			SKELETON = "Let's take that out.",
		},
		BIRDTRAP = "To catch birds for our cages.",
		CAVE_BANANA_BURNT = "Dang, I'd wish it was still there.",
		BIRD_EGG = "Egg.",
		BIRD_EGG_COOKED = "Egg. Cooked.",
		BISHOP = "Oh I don't like you.",
		BLOWDART_FIRE = "Spit fire!",
		BLOWDART_SLEEP = "Prey on sleeping targets. Heheheh.",
		BLOWDART_PIPE = "Pew!",
		BLOWDART_YELLOW = "Zap 'em from afar!",
		BLUEAMULET = "Chilling!",
		BLUEGEM = "I can feel the cold inside it.",
		BLUEPRINT =
		{
            COMMON = "Looks like a plan for a thing.",
            RARE = "Looks like a GREAT plan for a thing.",
        },
        SKETCH = "Hmm.",
		COOKINGRECIPECARD = 
		{
			GENERIC = "Uh. But how do I cook this?",
		},
		BLUE_CAP = "Why do all veggies have to smell?",
		BLUE_CAP_COOKED = "It still SMELLS.",
		BLUE_MUSHROOM =
		{
			GENERIC = "Shroom. Blue.",
			INGROUND = "Not the time, perhaps?",
			PICKED = "Gonna wait for it to rain.",
		},
		BOARDS = "Smooth wood. What about it?",
		BONESHARD = "Shards of calcium. Maybe.",
		BONESTEW = "Too much for me to ask for, but it's filling.",
		BUGNET = "Time to catch bugs.",
		BUSHHAT = "Hopefully nobody in the camp falls for this.",
		BUTTER = "BUTTAH!",
		BUTTERFLY =
		{
			GENERIC = "I don't see those too often back in the forest.",
			HELD = "Well, what shall I do with you?",
		},
		BUTTERFLYMUFFIN = "Crunchy. Could do without the butterfly though.",
		BUTTERFLYWINGS = "Maybe I could try this...?",
		BUZZARD = "You'd better not peck at my meat meals.",

		SHADOWDIGGER = "He's got himself working for himself. Huh.",
        SHADOWDANCER = "Well, one needs company in the wilderness, I suppose.",

		CACTUS =
		{
			GENERIC = "I've never picked one before.",
			PICKED = "That looks flattened.",
		},
		CACTUS_MEAT_COOKED = "I'm not particularly interested.",
		CACTUS_MEAT = "Not sure I'd want to eat spines.",
		CACTUS_FLOWER = "Hmm... I wonder if it's sweet.",

		COLDFIRE =
		{
			EMBERS = "I really should put something in.",
			GENERIC = "Nice and tolerable.",
			HIGH = "That's too darn cold!",
			LOW = "I should put something in.",
			NORMAL = "Nice and tolerable.",
			OUT = "That's over with.",
		},
		CAMPFIRE =
		{
			EMBERS = "I really should put something in.",
			GENERIC = "Nice and comfy.",
			HIGH = "That's quite the fire...",
			LOW = "I should put something in.",
			NORMAL = "Nice and comfy.",
			OUT = "That's over with.",
		},
		CANE = "So I can trot on.",
		CATCOON = "What is that, a cat? Raccoon?",
		CATCOONDEN =
		{
			GENERIC = "That hole looks habitable for a critter.",
			EMPTY = "Must've run down.",
		},
		CATCOONHAT = "Keeps my ears warm.",
		COONTAIL = "Better yours than mine.",
		CARROT = "Oh hell no.",
		CARROT_COOKED = "I'd rather NOT.",
		CARROT_PLANTED = "What is that, a carrot?",
		CARROT_SEEDS = "Seeds.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "Now people can see my exploration progress.",
			BURNING = "That's not gonna write any maps.",
			BURNT = "No reports to the camp, I guess.",
		},
		WATERMELON_SEEDS = "Seeds.",
		CAVE_FERN = "Cave... ferns?",
		CHARCOAL = "Smells like toasted logs.",
        CHESSPIECE_PAWN = "Weakest piece, so they say.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "That's a rook.",
            STRUGGLE = "Wait, why are you moving?",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "That looks like a horse. Or a knight.",
            STRUGGLE = "Wait, why are you moving?",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "Bishop, bishop...",
            STRUGGLE = "Wait, why are you moving?",
        },
        CHESSPIECE_MUSE = "I'm not too interested in sculptures.",
        CHESSPIECE_FORMAL = "Looks like a suit more than anything.",
        CHESSPIECE_HORNUCOPIA = "Fancy fruit carving.",
        CHESSPIECE_PIPE = "I'm not that good at these things.",
        CHESSPIECE_DEERCLOPS = "It still stares deep into you.",
        CHESSPIECE_BEARGER = "He's still cute despite the grumpy look.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Honk.",
        },
        CHESSPIECE_DRAGONFLY = "That's not burning anyone now.",
		CHESSPIECE_MINOTAUR = "Can't ram anymore, can you?",
        CHESSPIECE_BUTTERFLY = "Looks good, I guess.",
        CHESSPIECE_ANCHOR = "Looks heavier than other ones.",
        CHESSPIECE_MOON = "I still wonder if it's actually a moon.",
        CHESSPIECE_CARRAT = "Almost lifelike.",
        CHESSPIECE_MALBATROSS = "Catch of the day, not a fish, but a big sea bird.",
        CHESSPIECE_CRABKING = "I now hunger for crabs.",
        CHESSPIECE_TOADSTOOL = "Reminder not to chop random shrooms. Whatever.",
        CHESSPIECE_STALKER = "He was scary, but we got through anyhow.",
        CHESSPIECE_KLAUS = "Not quite festive, are you?",
        CHESSPIECE_BEEQUEEN = "Glad that's done with. I didn't like her.",
        CHESSPIECE_ANTLION = "Doesn't look like an ant to me.",
        CHESSPIECE_BEEFALO = "Boof.",
		CHESSPIECE_KITCOON = "Not hiding, this isn't.",
		CHESSPIECE_CATCOON = "Looks... nice. I think.",
        CHESSPIECE_MANRABBIT = "They are way better when they don't call you out for meat.",
        CHESSPIECE_GUARDIANPHASE3 = "No more enlightening laser beams.",
        CHESSPIECE_EYEOFTERROR = "What are you looking at, hm?",
        CHESSPIECE_TWINSOFTERROR = "I sort of want to do that again. Maybe.",
        CHESSPIECE_DAYWALKER = "Big pig, big pig.",

        CHESSJUNK1 = "Looks run down.",
        CHESSJUNK2 = "What was this about?",
        CHESSJUNK3 = "That's worn out.",
		CHESTER = "Chestuh. Thanks for the help.",
		CHESTER_EYEBONE =
		{
			GENERIC = "Whatcha starin' at?",
			WAITING = "Wait, where's Chester?",
		},
		COOKEDMANDRAKE = "Just look at its poor face.",
		COOKEDMEAT = "Now this, is what I call food.",
		COOKEDMONSTERMEAT = "Ehh... I guess it works for now...",
		COOKEDSMALLMEAT = "More like a snack than anything.",
		COOKPOT =
		{
			COOKING_LONG = "Patience, patience...",
			COOKING_SHORT = "Almost there!",
			DONE = "Time to eat!",
			EMPTY = "Defo should cook something up.",
			BURNT = "Did someone overcook the darn pot?",
		},
		CORN = "I could have that.",
		CORN_COOKED = "POPCORNS!",
		CORN_SEEDS = "Seeds.",
        CANARY =
		{
			GENERIC = "Huh, aren't you rare.",
			HELD = "Stay still, stop fluttering about.",
		},
        CANARY_POISONED = "It looks... sickened.",

		CRITTERLAB = "Hello?",
        CRITTER_GLOMLING = "Aww, now ain't that a puffball.",
        CRITTER_DRAGONLING = "I like small dragons better than too enormous.",
		CRITTER_LAMB = "Doesn't spit, how cute!",
        CRITTER_PUPPY = "Ohohoho you'd be a good pal.",
        CRITTER_KITTEN = "Ms. Wickerbottom would love you so.",
        CRITTER_PERDLING = "Not as annoying as the berry thieves!",
		CRITTER_LUNARMOTHLING = "Screech less and maybe we can get along.",

		CROW =
		{
			GENERIC = "Crows. Hm.",
			HELD = "I should do something with you.",
		},
		CUTGRASS = "Grass. Could help in the long run.",
		CUTREEDS = "Reeds... what do I need these for?",
		CUTSTONE = "Quite smooth for a refined chunk of rock.",
		DEADLYFEAST = "That's... not a good way out.", --unimplemented
		DEER =
		{
			GENERIC = "Do you like, even have eyes?",
			ANTLER = "Oh, you grew antlers. Neat stuff.",
		},
        DEER_ANTLER = "Didn't know they were so brittle...",
        DEER_GEMMED = "That gem on its head doesn't look too comfortable.",
		DEERCLOPS = "Not something you see every day...",
		DEERCLOPS_EYEBALL = "Yikes. That's over the size of my hands.",
		EYEBRELLAHAT =	"Keeps my fur dry.",
		DEPLETED_GRASS =
		{
			GENERIC = "Grass. Just grass.",
		},
        GOGGLESHAT = "Do I look like a pilot now?",
        DESERTHAT = "Keeps my eyes clean.",
        ANTLIONHAT = "I'll leave that to the camp experts.",
		DEVTOOL = "Wait, am I supposed to even have this?",
		DEVTOOL_NODEV = "I don't think I am supposed to have this!",
		DIRTPILE = "Looks like a clue.",
		DIVININGROD =
		{
			COLD = "Faintly calling.", --singleplayer
			GENERIC = "It's leading somewhere.", --singleplayer
			HOT = "I should be here!", --singleplayer
			WARM = "It's picking something up.", --singleplayer
			WARMER = "Definitely this way.", --singleplayer
		},
		DIVININGRODBASE =
		{
			GENERIC = "Huh. A small wooden hole.", --singleplayer
			READY = "What do you need, hm?", --singleplayer
			UNLOCKED = "Ah, so that's what.", --singleplayer
		},
		DIVININGRODSTART = "I might want to take that.", --singleplayer
		DRAGONFLY = "Dragon? Fly? Dragonfly???",
		ARMORDRAGONFLY = "This'll keep me out of fiery troubles.",
		DRAGON_SCALES = "These still feel pretty lukewarm.",
		DRAGONFLYCHEST = "Extra space, plus it's fireproof!",
		DRAGONFLYFURNACE =
		{
			HAMMERED = "What broke it?",
			GENERIC = "That's some good heat. Just needs some brightness.", --no gems
			NORMAL = "Now that's better.", --one gem
			HIGH = "Ahh, a good heater for winters.", --two gems
		},

        HUTCH = "Hutchie.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Do you attract Hutch, lil' guy?",
            WAITING = "Uh. You good?",
        },
		LAVASPIT =
		{
			HOT = "Hot hot hot!",
			COOL = "It's still somewhat warm.",
		},
		LAVA_POND = "Definitely not letting my tail near that.",
		LAVAE = "I'm glad you do not grow.",
		LAVAE_COCOON = "Frozen hard as a rock.",
		LAVAE_PET =
		{
			STARVING = "I should feed it...",
			HUNGRY = "Are you hungry?",
			CONTENT = "It looks alright.",
			GENERIC = "Well, aren't you adorable.",
		},
		LAVAE_EGG =
		{
			GENERIC = "Now what does this hatch into?",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "It looks cold.",
			COMFY = "It's probably happy being warm.",
		},
		LAVAE_TOOTH = "What kind of tooth is this?",

		DRAGONFRUIT = "Where's the dragon in it?",
		DRAGONFRUIT_COOKED = "I still don't see the dragon in it.",
		DRAGONFRUIT_SEEDS = "Seeds.",
		DRAGONPIE = "I've heard it's crunchy... I should try it!",
		DRUMSTICK = "This could make for a good meal.",
		DRUMSTICK_COOKED = "I love myself some wings.",
		DUG_BERRYBUSH = "Let's put that closer to camp.",
		DUG_BERRYBUSH_JUICY = "Valuable. I should plant it.",
		DUG_GRASS = "Might as well plant it somewhere.",
		DUG_MARSH_BUSH = "I should put this down.",
		DUG_SAPLING = "Good resource. Let's plant it at the camp.",
		DURIAN = "That REEKS.",
		DURIAN_COOKED = "That REEKS EVEN MORE.",
		DURIAN_SEEDS = "Seeds.",
		EARMUFFSHAT = "Not sure it'll actually cover my ears.",
		EGGPLANT = "Nuh uh.",
		EGGPLANT_COOKED = "I don't want this.",
		EGGPLANT_SEEDS = "Seeds.",

		ENDTABLE =
		{
			BURNT = "Sigh. Let's just dispose of that.",
			GENERIC = "Vase on a table.",
			EMPTY = "Might I put a plant inside?",
			WILTED = "I should replace that.",
			FRESHLIGHT = "Comforting glow in the dark.",
			OLDLIGHT = "Let's replace that soon.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE =
		{
			BURNING = "I prefer it not on fire.",
			BURNT = "Oh well.",
			CHOPPED = "Merely a tree anymore.",
			POISON = "Oh- WOAH, WHAT?!",
			GENERIC = "I love me some pretty trees.",
		},
		ACORN = "I should plant this.",
        ACORN_SAPLING = "Keep growin'.",
		ACORN_COOKED = "Mmm. Smells nice.",
		BIRCHNUTDRAKE = "You'd better stay away.",
		EVERGREEN =
		{
			BURNING = "I prefer it not on fire.",
			BURNT = "Oh well.",
			CHOPPED = "Stump.",
			GENERIC = "Looking nice there, tree.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "I prefer it not on fire.",
			BURNT = "Oh well.",
			CHOPPED = "Not much wood left.",
			GENERIC = "What a lumpy tree.",
		},
		TWIGGYTREE =
		{
			BURNING = "I prefer it not on fire.",
			BURNT = "Oh well.",
			CHOPPED = "Not even a stick remaining.",
			GENERIC = "Looks thin.",
			DISEASED = "It looks even more thin.", --unimplemented
		},
		TWIGGY_NUT_SAPLING = "Grow up.",
        TWIGGY_OLD = "You look weak.",
		TWIGGY_NUT = "Defo should plant this.",
		EYEPLANT = "What is that, an eye plant?",
		INSPECTSELF = "How's my fur?",
		FARMPLOT =
		{
			GENERIC = "Might as well plow some seeds.",
			GROWING = "Now we wait.",
			NEEDSFERTILIZER = "That looks like it needs some nutrients.",
			BURNT = "That's not growing anything.",
		},
		FEATHERHAT = "Woodie might not like the sight of this.",
		FEATHER_CROW = "Black feather.",
		FEATHER_ROBIN = "Fiery feather.",
		FEATHER_ROBIN_WINTER = "Cold feather.",
		FEATHER_CANARY = "A nice feather.",
		FEATHERPENCIL = "Now I can write stuff on my journey log.",
        COOKBOOK = "Gets me hungry looking through the menu.",
		FEM_PUPPET = "She's trapped!", --single player
		FIREFLIES =
		{
			GENERIC = "Glowing bugs. Hmph.",
			HELD = "A tiny light in my pocket.",
		},
		FIREHOUND = "You look heated up.",
		FIREPIT =
		{
			EMBERS = "I really should put something in.",
			GENERIC = "Nice and comfy.",
			HIGH = "Roaring. But safe.",
			LOW = "I should put something in.",
			NORMAL = "Nice and comfy.",
			OUT = "I could light it up.",
		},
		COLDFIREPIT =
		{
			EMBERS = "I really should put something in.",
			GENERIC = "Nice and tolerable.",
			HIGH = "Contained, but TOO cold!",
			LOW = "I should put something in.",
			NORMAL = "Nice and tolerable.",
			OUT = "I could light it again.",
		},
		FIRESTAFF = "Not using this on trees.",
		FIRESUPPRESSOR =
		{
			ON = "That'll save a forest.",
			OFF = "Should save it for emergencies.",
			LOWFUEL = "I should put logs in.",
		},

		FISH = "I prefer unagi.",
		FISHINGROD = "Time to go fishing.",
		FISHSTICKS = "I wish I had some sauce.",
		FISHTACOS = "I'd prefer just the taco and fish.",
		FISH_COOKED = "Nicely grilled.",
		FLINT = "I could use this for my blade.",
		FLOWER =
		{
            GENERIC = "Common flora.",
            ROSE = "I've seen these covering the portal...",
        },
        FLOWER_WITHERED = "It needs sunlight...",
		FLOWERHAT = "Not exactly my style.",
		FLOWER_EVIL = "That's just not right.",
		FOLIAGE = "Leaves.",
		FOOTBALLHAT = "Does this even fit with my ears?",
        FOSSIL_PIECE = "Ancient bones. Hm.",
        FOSSIL_STALKER =
        {
			GENERIC = "I should find more pieces.",
			FUNNY = "What even is that pose?",
			COMPLETE = "Belongs in a museum.",
        },
        STALKER = "Did it just grow in size?!",
        STALKER_ATRIUM = "Now that's PURE HORROR if I've SEEN ONE.",
        STALKER_MINION = "Where is it crawling to???",
        THURIBLE = "Not sure I have a use for this.",
        ATRIUM_OVERGROWTH = "Uh, I can't make it out.",
		FROG =
		{
			DEAD = "Ribbitn't.",
			GENERIC = "Are those horns on your head?",
			SLEEPING = "Better off sleeping than awake.",
		},
		FROGGLEBUNWICH = "Would do without the vegs.",
		FROGLEGS = "All that's left of the frog.",
		FROGLEGS_COOKED = "Looks edible to me.",
		FRUITMEDLEY = "Hopefully there's bananas in there.",
		FURTUFT = "Left a tiny gift, he did.",
		GEARS = "I'm not one for cogs and wheels.",
		GHOST = "Spirits of the dead...",
		GOLDENAXE = "Let's get to more chopping.",
		GOLDENPICKAXE = "I could've sworn it lasted shorter in another world.",
		GOLDENPITCHFORK = "What for, anyway?",
		GOLDENSHOVEL = "Dig dug, dig dug.",
		GOLDNUGGET = "Shiny. I should find a use for this.",
		GRASS =
		{
			BARREN = "I should fertilize it.",
			WITHERED = "Bit too hot out.",
			BURNING = "Not the resources...",
			GENERIC = "Grass, nothing more about it.",
			PICKED = "Picked almost clean.",
			DISEASED = "æ", --unimplemented
			DISEASING = "Smells off. Augh.", --unimplemented
		},
		GRASSGEKKO =
		{
			GENERIC = "You have a nice tail I could use there.",
			DISEASED = "No vets out here, sadly.", --unimplemented
		},
		GREEN_CAP = "Shroom of the green kind.",
		GREEN_CAP_COOKED = "Hm. That changed.",
		GREEN_MUSHROOM =
		{
			GENERIC = "Shroom. Green.",
			INGROUND = "Not the time, perhaps?",
			PICKED = "Gonna wait for it to rain.",
		},
		GUNPOWDER = "Gotta be careful with this thing.",
		HAMBAT = "I'd still prefer my blade over whatever this implement is.",
		HAMMER = "Hammertime.",
		HEALINGSALVE = "Long as it works, I'll use it.",
		HEATROCK =
		{
			FROZEN = "Too cold for me to bear.",
			COLD = "I don't like how it's chilling.",
			GENERIC = "How does this even work?",
			WARM = "Lukewarm and nice.",
			HOT = "I could carry this all winter.",
		},
		HOME = "Hello, anyone here?",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "Nothing written.",
			BURNT = "Not readable anymore.",
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "Nothing written.",
			BURNT = "I could see the direction, just not the text.",
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "Nothing written.",
			BURNT = "I could see the direction, just not the text.",
		},
		HONEY = "Would love this on some meat.",
		HONEYCOMB = "I don't really want to touch it.",
		HONEYHAM = "Real good stuff, this.",
		HONEYNUGGETS = "Oh, I like these bite-sized and sweet.",
		HORN = "I might as well find a use for it.",
		HOUND = "I'd wish I could talk it out, but I can't.",
		HOUNDCORPSE =
		{
			GENERIC = "Maybe we should clean that.",
			BURNING = "That disposes of it.",
			REVIVING = "Uh, Wha-?",
		},
		HOUNDBONE = "Yeesh.",
		HOUNDMOUND = "I'm glad I don't live in one of those.",
		ICEBOX = "Keeps food nice and cool.",
		ICEHAT = "Bit heavy, isn't it...",
		ICEHOUND = "You come in blue too?",
		INSANITYROCK =
		{
			ACTIVE = "I hate these sort of puzzles.",
			INACTIVE = "That's tiny.",
		},
		JAMMYPRESERVES = "Sweet, and gets stuck in my fur.",

		KABOBS = "Barbeque anyone?",
		KILLERBEE =
		{
			GENERIC = "Don't you dare sting me.",
			HELD = "Don't you DARE sting me.",
		},
		KNIGHT = "Chop ma, Chop ma. Don't ask, I don't like you.",
		KOALEFANT_SUMMER = "You're so full of meat, aren't you?",
		KOALEFANT_WINTER = "They're even better like this.",
		KRAMPUS = "OI OI OI! STOP!",
		KRAMPUS_SACK = "Plenty of space for my belongings.",
		LEIF = "I'm not good at axes, but I'll slice ya regardless!",
		LEIF_SPARSE = "I'm not good at axes, but I'll slice ya regardless!",
		LIGHTER  = "I don't like seeing her use this on trees.",
		LIGHTNING_ROD =
		{
			CHARGED = "Contained.",
			GENERIC = "Safety for the camp.",
		},
		LIGHTNINGGOAT =
		{
			GENERIC = "Must've been a kin of someone ancient.",
			CHARGED = "Okay, that's without a doubt, shocking.",
		},
		LIGHTNINGGOATHORN = "Does this attract lightning?",
		GOATMILK = "I'd glontch this anytime.",
		LITTLE_WALRUS = "His dad is way more skilled than him.",
		LIVINGLOG = "You look like you can belong on something.",
		LOG =
		{
			BURNING = "Oh please, that's for the fire, but not like this!",
			GENERIC = "Timber! Better than seeing them burnt.",
		},
		LUCY = "Did I just hear you speak?",
		LUREPLANT = "What is that, a big bulb of leaves?",
		LUREPLANTBULB = "Not luring anyone now.",
		MALE_PUPPET = "He's trapped!", --single player

		MANDRAKE_ACTIVE = "I will cut you up if you don't shut your mouth.",
		MANDRAKE_PLANTED = "Huh. Weird root.",
		MANDRAKE = "I wonder how it tastes like. Hopefully not terrible.",

        MANDRAKESOUP = "He could've just screamed less.",
        MANDRAKE_COOKED = "Just look at its poor face.",
        MAPSCROLL = "It's just a paper without any directions.",
        MARBLE = "I still prefer wood for building.",
        MARBLEBEAN = "Wait, you CAN grow them?",
        MARBLEBEAN_SAPLING = "HUH.",
        MARBLESHRUB = "Not as pretty as real trees, you aren't!",
        MARBLEPILLAR = "What are you, just a lost decor?",
        MARBLETREE = "Trees are way prettier than whatever that is.",
        MARSH_BUSH =
        {
			BURNT = "No more spikes.",
            BURNING = "It could've been of some use, but eh.",
            GENERIC = "That's full of spikes.",
            PICKED = "At least it didn't hurt too badly...",
        },
        BURNT_MARSH_BUSH = "Dunno what that bush was for, anyhow.",
        MARSH_PLANT = "That's just a plant.",
        MARSH_TREE =
        {
            BURNING = "This one I'll let burn.",
            BURNT = "Sharp and toasted.",
            CHOPPED = "Thankfully the stump isn't spiky.",
            GENERIC = "Sinister looking.",
        },
        MAXWELL = "He smells.",--single player
        MAXWELLHEAD = "Head of an egoist.",--removed
        MAXWELLLIGHT = "That just so happens to light itself up. Huh.",--single player
        MAXWELLLOCK = "I could definitely put something in that tiny hole.",--single player
        MAXWELLTHRONE = "Yeesh. Wouldn't want to sit on that.",--single player
        MEAT = "Just need to cook it.",
        MEATBALLS = "It could've turned out better than this.",
        MEATRACK =
        {
            DONE = "That's good.",
            DRYING = "Now we wait.",
            DRYINGINRAIN = "Now we wait even longer.",
            GENERIC = "Might as well put something on that.",
            BURNT = "Wasn't expecting the rack to overdo that to itself.",
            DONE_NOTMEAT = "That should be dry.",
            DRYING_NOTMEAT = "Eh.",
            DRYINGINRAIN_NOTMEAT = "It ain't drying like this.",
        },
        MEAT_DRIED = "Haven't had jerky in a while.",
        MERM = "I could only hear aughs from their speech.",
        MERMHEAD =
        {
            GENERIC = "Yikes, that stinks.",
            BURNT = "That's even worse than before.",
        },
        MERMHOUSE =
        {
            GENERIC = "Looks run down. Not like I'd want to peek inside.",
            BURNT = "Not much left of it.",
        },
        MINERHAT = "Good for the caverns down below. And nights.",
        MONKEY = "Go away, will you?",
        MONKEYBARREL = "Who painted their houses?",
        MONSTERLASAGNA = "Disgusting. Still doesn't beat veggies.",
        FLOWERSALAD = "I'll only eat the flower, thank you very much.",
        ICECREAM = "Goodness gracious, I need to eat this.",
        WATERMELONICLE = "It's like a popsicle, but literally frozen.",
        TRAILMIX = "All natural and great. Mmmm.",
        HOTCHILI = "Spicy, spicy!",
        GUACAMOLE = "Ehh... if it tastes meaty, I'll take it.",
        MONSTERMEAT = "Just what is that?",
        MONSTERMEAT_DRIED = "Not really too keen on eating it.",
        MOOSE = "Uh. What do I call you?",
        MOOSE_NESTING_GROUND = "Looks like that's for eggs.",
        MOOSEEGG = "Holy cow, that's huge.",
        MOSSLING = "You look somewhat adorable. Maybe.",
        FEATHERFAN = "Huge and breezy.",
        MINIFAN = "Hm. Could help a bit with the heat.",
        GOOSE_FEATHER = "Could use this for a pillow.",
        STAFF_TORNADO = "Destructive!",
        MOSQUITO =
        {
            GENERIC = "Why are they THAT big?",
            HELD = "Do NOT think of anything funny.",
        },
        MOSQUITOSACK = "Not sure I'd want to use this for myself.",
        MOUND =
        {
            DUG = "Mound no more.",
            GENERIC = "Do you store your hoard down there?",
        },
        NIGHTLIGHT = "The light makes me feel uneasy.",
        NIGHTMAREFUEL = "Weird and gooey to the touch.",
        NIGHTSWORD = "I'd rather use my blade, thank you.",
        NITRE = "How do I use this?",
        ONEMANBAND = "Takes a lot of effort to even play one thing.",
        OASISLAKE =
		{
			GENERIC = "Water, out in the badlands?",
			EMPTY = "Naught but a dry patch.",
		},
        PANDORASCHEST = "Dare I open it?",
        PANFLUTE = "Almost puts me to sleep, too.",
        PAPYRUS = "Could use this to add to my journey log.",
        WAXPAPER = "Not for writing. Something else, perhaps.",
        PENGUIN = "Stop saying WAH.",
        PERD = "Stop or I'll make you my dinner.",
        PEROGIES = "Now this is actually good.",
        PETALS = "A few petals of flowers. Eh.",
        PETALS_EVIL = "Why do they feel so ominous when held?",
        PHLEGM = "Don't want to touch that.",
        PICKAXE = "Mine, mine away.",
        PIGGYBACK = "For more stuff. Doesn't help with my walking however.",
        PIGHEAD =
        {
            GENERIC = "Pig head on a stick. What about it?",
            BURNT = "Smells like overcooked bacon.",
        },
        PIGHOUSE =
        {
            FULL = "How do you even sleep in that?",
            GENERIC = "They have amazing architecture for pigs.",
            LIGHTSOUT = "Oh I don't even care, alright.",
            BURNT = "Smells like burnt bacon to me.",
        },
        PIGKING = "You look like you ate a ten-course meal, sir.",
        PIGMAN =
        {
            DEAD = "Here we gather for the fallen pig...",
            FOLLOWER = "Knew we could get along somehow.",
            GENERIC = "A walking, talking pig. That's new.",
            GUARD = "Good day, officer.",
            WEREPIG = "We're somewhat similar. Except I can talk.",
        },
        PIGSKIN = "Twirly tail, that.",
        PIGTENT = "They have camps too?",
        PIGTORCH = "I wonder why the guards are so bent on defending that.",
        PINECONE = "I should plant it.",
        PINECONE_SAPLING = "You'll grow into a fine tree.",
        LUMPY_SAPLING = "Wait, I thought you can't propagate?",
        PITCHFORK = "For flooring work.",
        PLANTMEAT = "This is new.",
        PLANTMEAT_COOKED = "Feels better cooked than raw.",
        PLANT_NORMAL =
        {
            GENERIC = "Fresh produce that I don't think I'll have.",
            GROWING = "Grow faster for the others, will you?",
            READY = "Should pick that now.",
            WITHERED = "Naught but dry leaves.",
        },
        POMEGRANATE = "I heard Wortox loves these.",
        POMEGRANATE_COOKED = "I should give this to him.",
        POMEGRANATE_SEEDS = "Seeds.",
        POND = "How's it that deep?",
        POOP = "Not my kinda thing to pick up.",
        FERTILIZER = "At least I don't have my hands too dirty.",
        PUMPKIN = "Really plump.",
        PUMPKINCOOKIE = "Sweet and neat to have!",
        PUMPKIN_COOKED = "I like it hot.",
        PUMPKIN_LANTERN = "Spoopy indeed.",
        PUMPKIN_SEEDS = "Seeds.",
        PURPLEAMULET = "I don't really want to put it on for long.",
        PURPLEGEM = "That's not even reflecting light.",
        RABBIT =
        {
            GENERIC = "Looks like a snack to me.",
            HELD = "I shall throw you into a pot.",
        },
        RABBITHOLE =
        {
            GENERIC = "A pity, living in such a tiny hole.",
            SPRING = "They obviously don't want it flooded.",
        },
        RAINOMETER =
        {
            GENERIC = "Now I can know when to explore.",
            BURNT = "That just went out horribly.",
        },
        RAINCOAT = "This'll keep me dry, although I need my supplies...",
        RAINHAT = "Keeps my fur quite dry.",
        RATATOUILLE = "Why would anyone make this thing...",
        RAZOR = "I'll leave the shaving to those two.",
        REDGEM = "Looks like a fire about to happen.",
        RED_CAP = "Heard red ones are bad for ya.",
        RED_CAP_COOKED = "That changed.",
        RED_MUSHROOM =
        {
            GENERIC = "Shroom. Red.",
			INGROUND = "Not the time, perhaps?",
			PICKED = "Gonna wait for it to rain.",
        },
        REEDS =
        {
            BURNING = "Aw come on, that's invaluable!",
            GENERIC = "I should pick those.",
            PICKED = "I'll have to wait.",
        },
        RELIC = "Some ancient furniture, I take it.",
        RUINS_RUBBLE = "Maybe I can fix that.",
        RUBBLE = "Rubble.",
        RESEARCHLAB =
        {
            GENERIC = "How is this science?",
            BURNT = "Well, I'm not getting answers.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "I was never one for my alchemy, but ok.",
            BURNT = "Chemically proven to be burnt.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "It looks more of a relic than a station.",
            BURNT = "I could've sworn I heard the cries of the logs.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Presti-ha-ti... tator? What?",
            BURNT = "I'm still confused by its name.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "Why does it look like Wilson?",
            BURNT = "We should make another one.",
        },
        RESURRECTIONSTONE = "I heard it does wonders.",
        ROBIN =
        {
            GENERIC = "That's just a redbird.",
            HELD = "Comfortable, aren't you?",
        },
        ROBIN_WINTER =
        {
            GENERIC = "That's a neat shade of Azure.",
            HELD = "It looks cold.",
        },
        ROBOT_PUPPET = "They're trapped!", --single player
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",--removed
            OUT = "Looks fragile.",--removed
            LOW = "The lava's crusting over.",--removed
            NORMAL = "Nice and comfy.",--removed
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "I could possibly move that.",
            RAISED = "A bit too high up.",
        },
        ROCK = "Maybe I should mine it, see what's inside.",
        PETRIFIED_TREE = "Stoned trees? Wha?",
        ROCK_PETRIFIED_TREE = "Stoned trees? Wha?",
        ROCK_PETRIFIED_TREE_OLD = "Stoned trees? Wha?",
        ROCK_ICE =
        {
            GENERIC = "That's cold to the touch.",
            MELTED = "It's merely just a puddle now.",
        },
        ROCK_ICE_MELTED = "It's merely just a puddle now.",
        ICE = "Really cold. Could make ice cream though.",
        ROCKS = "I could make these into something useful.",
        ROOK = "Watch where you're ramming, darn it!",
        ROPE = "Ooh. Could be good for tying up a spear.",
        ROTTENEGG = "That gives off quite the stench...",
        ROYAL_JELLY = "Just one of that alone could liven someone up.",
        JELLYBEAN = "Jelly beeeeeans!",
        SADDLE_BASIC = "I could get on boof with this.",
        SADDLE_RACE = "This is for boof, but only if it's a rider.",
        SADDLE_WAR = "I could go on a war with boof.",
        SADDLEHORN = "Gets the saddle off of 'em.",
        SALTLICK = "That'll keep the animals around.",
        BRUSH = "I'd want to use this on myself too, but it's too big.",
		SANITYROCK =
		{
			ACTIVE = "Oh, it's blocking my path.",
			INACTIVE = "That is certainly a small pyramid thing.",
		},
		SAPLING =
		{
			BURNING = "Oh no, not the resources.",
			WITHERED = "It needs some chill.",
			GENERIC = "You aren't growing, are you?",
			PICKED = "Now we wait for it to grow sticks.",
			DISEASED = "æ", --removed
			DISEASING = "Smells off. Augh.", --removed
		},
   		SCARECROW =
   		{
			GENERIC = "That honestly doesn't look like it's helping.",
			BURNING = "The scarecrow is screaming.",
			BURNT = "That was honestly a sight.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "I should take up sculpting some day.",
			BLOCK = "That looks like a good base.",
			SCULPTURE = "Turned out nicely.",
			BURNT = "Crisp.",
   		},
        SCULPTURE_KNIGHTHEAD = "That looks like a... horse head.",
		SCULPTURE_KNIGHTBODY =
		{
			COVERED = "That looks off.",
			UNCOVERED = "Oh so that's what.",
			FINISHED = "Got yer head back.",
			READY = "Are you supposed to move like that?",
		},
        SCULPTURE_BISHOPHEAD = "What is that, a head for something?",
		SCULPTURE_BISHOPBODY =
		{
			COVERED = "I don't think that's its true purpose.",
			UNCOVERED = "I should find its head.",
			FINISHED = "There. Fixed.",
			READY = "Why are you shaking...?",
		},
        SCULPTURE_ROOKNOSE = "Nose-like, it seems.",
		SCULPTURE_ROOKBODY =
		{
			COVERED = "This one's bigger than the others.",
			UNCOVERED = "I should get it fixed.",
			FINISHED = "Works.",
			READY = "That's giving me the creeps.",
		},
        GARGOYLE_HOUND = "Yeesh. I'm glad I don't get that treatment.",
        GARGOYLE_WEREPIG = "I bet it could wake up any time...",
		SEEDS = "The start of agriculture.",
		SEEDS_COOKED = "Naught but a snack now.",
		SEWING_KIT = "I should consult Ms. Wickerbottom on how to sew.",
		SEWING_TAPE = "But can it patch a leaking water tank?",
		SHOVEL = "Time to dig some holes.",
		SILK = "Silky smooth. I'm not gonna recall where it came from.",
		SKELETON = "Yikes.",
		SCORCHED_SKELETON = "YIKES.",
		SKULLCHEST = "That's one ominous looking chest.", --removed
		SMALLBIRD =
		{
			GENERIC = "Looks like an eye with tiny wings.",
			HUNGRY = "You hungry?",
			STARVING = "Oh dear. It's starving.",
			SLEEPING = "Eye closed shut for the night.",
		},
		SMALLMEAT = "Cook this up and I have a nice snack.",
		SMALLMEAT_DRIED = "Some jerky to chew on.",
		SPAT = "You don't look too soft.",
		SPEAR = "Useful in emergencies. Would rather use my blade though.",
		SPEAR_WATHGRITHR = "Ah, a weapon of good quality.",
		WATHGRITHRHAT = "What's the fancy look gonna help with?",
		SPIDER =
		{
			DEAD = "Not sure I'd want to lookithat.",
			GENERIC = "Looks more like a black ball with eyes and a mouth.",
			SLEEPING = "Oh look, a sleeping target.",
		},
		SPIDERDEN = "Yuck.",
		SPIDEREGGSACK = "I'm not one to carry these around.",
		SPIDERGLAND = "Now what's this for?",
		SPIDERHAT = "I don't really want to wear this...",
		SPIDERQUEEN = "Woah, that's humongus!",
		SPIDER_WARRIOR =
		{
			DEAD = "And stay dead, you!",
			GENERIC = "Why's it look so angry?",
			SLEEPING = "You'd better not wake up.",
		},
		SPOILED_FOOD = "Yikes. That's far gone.",
        STAGEHAND =
        {
			AWAKE = "I shouldn't have looked back...",
			HIDING = "Why is there just a table out here?",
        },
        STATUE_MARBLE =
        {
            GENERIC = "Statues, statues...",
            TYPE1 = "You've got to wonder how old these are.",
            TYPE2 = "Not sure why there's statues all over the place.",
            TYPE3 = "Huh. Fancy looking.", --bird bath type statue
        },
		STATUEHARP = "Must've lost its head long ago.",
		STATUEMAXWELL = "I can smell his ego stinking the place up.",
		STEELWOOL = "That's not even soft.",
		STINGER = "I hate having these poked at me.",
		STRAWHAT = "It could help a bit with the sun.",
		STUFFEDEGGPLANT = "Nope. Nope nope nope.",
		SWEATERVEST = "Dapper? Eh. I prefer my clothes.",
		REFLECTIVEVEST = "Wards off some of the heat.",
		HAWAIIANSHIRT = "Quite fancy for a Summer shirt.",
		TAFFY = "I'm not a big fan of these, but okay.",
		TALLBIRD = "Why's it so tall?",
		TALLBIRDEGG = "I don't think I should hatch this.",
		TALLBIRDEGG_COOKED = "This is better.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "What, you need some fire?",
			GENERIC = "I'm not parenting that.",
			HOT = "You want it less hot??",
			LONG = "I could tell it's gonna take way longer.",
			SHORT = "Not so long now, is it?",
		},
		TALLBIRDNEST =
		{
			GENERIC = "Ooooh I want to make a meal outta that egg.",
			PICKED = "Stolen.",
		},
		TEENBIRD =
		{
			GENERIC = "Not too leggy yet.",
			HUNGRY = "I bet you're hungry.",
			STARVING = "It's gonna peck someone if we don't feed it.",
			SLEEPING = "How do they sleep like that?",
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "What does this silly machine even do?", --single player
			GENERIC = "Huh. Curious.", --single player
			LOCKED = "That there doesn't feel complete.", --single player
			PARTIAL = "I should find more pieces.", --single player
		},
		TELEPORTATO_BOX = "A... box. Of sorts.", --single player
		TELEPORTATO_CRANK = "What am I supposed to use this crank for?", --single player
		TELEPORTATO_POTATO = "That looks more like someone's head.", --single player
		TELEPORTATO_RING = "Too big to even fit a finger.", --single player
		TELESTAFF = "Now this, is a new kind of teleportation.",
		TENT =
		{
			GENERIC = "I could use some shuteye.",
			BURNT = "Not even safe for sleeping.",
		},
		SIESTAHUT =
		{
			GENERIC = "Maybe I can rest my back.",
			BURNT = "Aw, I wanted a nap!",
		},
		TENTACLE = "Please don't.",
		TENTACLESPIKE = "A bit better than my blade, but won't last as long.",
		TENTACLESPOTS = "Just a patch of tentacle.",
		TENTACLE_PILLAR = "That's huge.",
        TENTACLE_PILLAR_HOLE = "Adventure awaits...?",
		TENTACLE_PILLAR_ARM = "Wouldn't want to be caught in those.",
		TENTACLE_GARDEN = "Another one of those things.",
		TOPHAT = "Fancy, isn't it?",
		TORCH = "I'd prefer an oil lantern.",
		TRANSISTOR = "Amazing how you can make one of these out here.",
		TRAP = "I could totally get dinner with this.",
		TRAP_TEETH = "Good for a defense.",
		TRAP_TEETH_MAXWELL = "Who would do such thing?", --single player
		TREASURECHEST =
		{
			GENERIC = "For our loot and treasure!",
			BURNT = "Aw come on. Hopefully nothing inside burnt.",
		},
		TREASURECHEST_TRAP = "Ooh, free stuff?",
		SACRED_CHEST =
		{
			GENERIC = "This one's weird.",
			LOCKED = "Seems to be thinking on its own.",
		},
		TREECLUMP = "Drat. That's blocked.", --removed

		TRINKET_1 = "How could these get melted?", --Melted Marbles
		TRINKET_2 = "Reminds me of a kid.", --Fake Kazoo
		TRINKET_3 = "Great. An unsolvable puzzle.", --Gord's Knot
		TRINKET_4 = "Heard they're good for gardens.", --Gnome
		TRINKET_5 = "I'm not into toy rockets.", --Toy Rocketship
		TRINKET_6 = "All frazzled up and unusable.", --Frazzled Wires
		TRINKET_7 = "What's that game about?", --Ball and Cup
		TRINKET_8 = "I'd love a long soak. If we even have a tub.", --Rubber Bung
		TRINKET_9 = "If only they match one another...", --Mismatched Buttons
		TRINKET_10 = "Not sure if anyone here needs these.", --Dentures
		TRINKET_11 = "Are you a liar or a sitter?", --Lying Robot
		TRINKET_12 = "Floppy looking.", --Dessicated Tentacle
		TRINKET_13 = "Heard they're good for gardens.", --Gnomette
		TRINKET_14 = "That's not going to hold any tea.", --Leaky Teacup
		TRINKET_15 = "More of those chess pieces.", --Pawn
		TRINKET_16 = "One of the weakest, soon to be the strongest.", --Pawn
		TRINKET_17 = "I swear if it doesn't work well as a fork, let alone a spoon...", --Bent Spork
		TRINKET_18 = "Are there tiny soldiers inside?", --Trojan Horse
		TRINKET_19 = "Why's it not balanced?", --Unbalanced Top
		TRINKET_20 = "Oh, good. I needed a lil' scratch.", --Backscratcher
		TRINKET_21 = "Egg beater? All beaten.", --Egg Beater
		TRINKET_22 = "Might as well give this to one of the cats in deciduous.", --Frayed Yarn
		TRINKET_23 = "Wonder who'd need to use one of these.", --Shoehorn
		TRINKET_24 = "Should I bring this to Ms. Wickerbottom?", --Lucky Cat Jar
		TRINKET_25 = "Yikes. That's not at all freshening.", --Air Unfreshener
		TRINKET_26 = "Now where's nome?", --Potato Cup
		TRINKET_27 = "Could definitely use one of these on a sunny day.", --Coat Hanger
		TRINKET_28 = "Rams right into a target.", --Rook
        TRINKET_29 = "Imagine a castle tower sliding.", --Rook
        TRINKET_30 = "Moves in an L shape.", --Knight
        TRINKET_31 = "I miss my young days of playing chess.", --Knight
        TRINKET_32 = "This doesn't tell any fortunes.", --Cubic Zirconia Ball
        TRINKET_33 = "Spider ring, spider ring...", --Spider Ring
        TRINKET_34 = "Not sure what people think of this as. A wish granter?", --Monkey Paw
        TRINKET_35 = "Wilson might be looking for one of these.", --Empty Elixir
        TRINKET_36 = "I already have my fangs, thank you very much.", --Faux fangs
        TRINKET_37 = "Doesn't work on me, for one.", --Broken Stake
        TRINKET_38 = "I'm pretty certain this isn't supposed to be around here.", -- Binoculars Griftlands trinket
        TRINKET_39 = "Missing its pair. Hmph.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "What is this, some kind of currency?", -- Snail Scale Griftlands trinket
        TRINKET_41 = "Warm.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "I don't really like snakes.", -- Toy Cobra Hot Lava trinket
        TRINKET_43 = "Crocodile. Hopefully this one doesn't chomp.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "I'd have to ask one of my campmates on what this is.", -- Broken Terrarium ONI trinket
        TRINKET_45 = "Hello? Hello???", -- Odd Radio ONI trinket
        TRINKET_46 = "That could dry my fur if it wasn't broken.", -- Hairdryer ONI trinket

        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "That toy looks like it's flickering.",
        LOST_TOY_2  = "That toy looks like it's flickering.",
        LOST_TOY_7  = "That toy looks like it's flickering.",
        LOST_TOY_10 = "That toy looks like it's flickering.",
        LOST_TOY_11 = "That toy looks like it's flickering.",
        LOST_TOY_14 = "That toy looks like it's flickering.",
        LOST_TOY_18 = "That toy looks like it's flickering.",
        LOST_TOY_19 = "That toy looks like it's flickering.",
        LOST_TOY_42 = "That toy looks like it's flickering.",
        LOST_TOY_43 = "That toy looks like it's flickering.",

        HALLOWEENCANDY_1 = "Sweet goodness.",
        HALLOWEENCANDY_2 = "What are these?",
        HALLOWEENCANDY_3 = "Literally corn?",
        HALLOWEENCANDY_4 = "I sure hope they taste alright.",
        HALLOWEENCANDY_5 = "I just hope my fangs don't go bad from these.",
        HALLOWEENCANDY_6 = "Uhh...",
        HALLOWEENCANDY_7 = "Raisins? I'd like some.",
        HALLOWEENCANDY_8 = "Now what is this, hmm...",
        HALLOWEENCANDY_9 = "It's all in my jaws...",
        HALLOWEENCANDY_10 = "Gonna give these to Wilson. Or myself.",
        HALLOWEENCANDY_11 = "I'd prefer the real deal...",
        HALLOWEENCANDY_12 = "Lice?!", --ONI meal lice candy
        HALLOWEENCANDY_13 = "What do they call these again?", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I'd like some spiciness.", --Hot Lava pepper candy
        CANDYBAG = "I'm gonna sweep all the candy into this!",

		HALLOWEEN_ORNAMENT_1 = "Spooky.",
		HALLOWEEN_ORNAMENT_2 = "Batty. Amongst other things.",
		HALLOWEEN_ORNAMENT_3 = "I should hang this up somewhere.",
		HALLOWEEN_ORNAMENT_4 = "Better decor than real.",
		HALLOWEEN_ORNAMENT_5 = "Freaky adornment.",
		HALLOWEEN_ORNAMENT_6 = "Caw much?",

		HALLOWEENPOTION_DRINKS_WEAK = "Ah well. That's all I could've made.",
		HALLOWEENPOTION_DRINKS_POTENT = "Nice. That's a strong brew.",
        HALLOWEENPOTION_BRAVERY = "Gets me more courage.",
		HALLOWEENPOTION_MOON = "Looks like an experiment about to happen.",
		HALLOWEENPOTION_FIRE_FX = "Beautiful.",
		MADSCIENCE_LAB = "I just hope I don't go overboard with this thing.",
		LIVINGTREE_ROOT = "That's like planting a tree, but in a beaker.",
		LIVINGTREE_SAPLING = "Now we wait for the absolutely regular and normal tree.",

        DRAGONHEADHAT = "Anyone want to lead?",
        DRAGONBODYHAT = "I suppose I'm going to be the body part.",
        DRAGONTAILHAT = "Can someone be its tail?",
        PERDSHRINE =
        {
            GENERIC = "What is it that you desire?",
            EMPTY = "I need something a gobbler loves.",
            BURNT = "Darn it.",
        },
        REDLANTERN = "Much like the Chinese festivals.",
        LUCKY_GOLDNUGGET = "Luckier than usual.",
        FIRECRACKERS = "That thing's loud.",
        PERDFAN = "Large and could cause quite a breeze.",
        REDPOUCH = "Gotta be some coins inside, right?",
        WARGSHRINE =
        {
            GENERIC = "A shrine of worship.",
            EMPTY = "Gotta put a torch on that.",
            BURNING = "OH COME ON!", --for willow to override
            BURNT = "Darn it!",
        },
        CLAYWARG =
        {
        	GENERIC = "WOAH!",
        	STATUE = "Uh, you saw that, right?",
        },
        CLAYHOUND =
        {
        	GENERIC = "It's ALIVE!",
        	STATUE = "You did not just move, did you?",
        },
        HOUNDWHISTLE = "Doesn't stop me. Hah!",
        CHESSPIECE_CLAYHOUND = "Hmph. At least it doesn't move no more.",
        CHESSPIECE_CLAYWARG = "In the end we emerge victorious.",

		PIGSHRINE =
		{
            GENERIC = "Piggy stuff.",
            EMPTY = "I gotta place meat.",
            BURNT = "Really???",
		},
		PIG_TOKEN = "This could be used for something.",
		PIG_COIN = "I could use this in a fight.",
		YOTP_FOOD1 = "Shall I?",
		YOTP_FOOD2 = "Ehh...",
		YOTP_FOOD3 = "Hm.",

		PIGELITE1 = "Hey uh, can't we talk this out?", --BLUE
		PIGELITE2 = "Quit staring at me like that...", --RED
		PIGELITE3 = "Oi, don't you do any tricks!", --WHITE
		PIGELITE4 = "Go hit another one of your kind!", --GREEN

		PIGELITEFIGHTER1 = "Hey uh, can't we talk this out?", --BLUE
		PIGELITEFIGHTER2 = "Quit staring at me like that...", --RED
		PIGELITEFIGHTER3 = "Oi, don't you do any tricks!", --WHITE
		PIGELITEFIGHTER4 = "Go hit another one of your kind!", --GREEN

		CARRAT_GHOSTRACER = "I wouldn't want to touch that...",

        YOTC_CARRAT_RACE_START = "That's a starting line alright.",
        YOTC_CARRAT_RACE_CHECKPOINT = "A point for checking one's progress.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "That's where they should end up.",
            BURNT = "Darn it. That'd have been a good end line.",
            I_WON = "Whew, good job lil' one!",
            SOMEONE_ELSE_WON = "Ah... oh well, congrats {winner}.",
        },

		YOTC_CARRAT_RACE_START_ITEM = "Gotta put this down.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "That will mark our checkpoint.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "And that shall be the end.",

		YOTC_SEEDPACKET = "Seeeeeeds.",
		YOTC_SEEDPACKET_RARE = "Seeds again. Just fancier.",

		MINIBOATLANTERN = "Ahh. That's a nice glow.",

        YOTC_CARRATSHRINE =
        {
            GENERIC = "What shall I craft... hmph...",
            EMPTY = "I gotta know what carrats love.",
            BURNT = "Gah. I knew we needed fire safety.",
        },

        YOTC_CARRAT_GYM_DIRECTION =
        {
            GENERIC = "They should run correctly now.",
            RAT = "You know where to go now, right?",
            BURNT = "Can we like, install fire safety measures around here?",
        },
        YOTC_CARRAT_GYM_SPEED =
        {
            GENERIC = "You shall run faster.",
            RAT = "Keep it up!",
            BURNT = "Gah...",
        },
        YOTC_CARRAT_GYM_REACTION =
        {
            GENERIC = "React to this!",
            RAT = "Reaction improving, yup yup!",
            BURNT = "Seriously...?",
        },
        YOTC_CARRAT_GYM_STAMINA =
        {
            GENERIC = "Definitely for stamina training.",
            RAT = "You shall not tire out!",
            BURNT = "Oh great. More obstacles to training.",
        },

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "Let's get this down.",
        YOTC_CARRAT_GYM_SPEED_ITEM = "Where should I put this...",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "Might as well get the carrat to training.",
        YOTC_CARRAT_GYM_REACTION_ITEM = "They should react better with this kit.",

        YOTC_CARRAT_SCALE_ITEM = "That should rate how well it's doing.",
        YOTC_CARRAT_SCALE =
        {
            GENERIC = "Let's see how good the carrat is.",
            CARRAT = "Guess you just need more training huh?",
            CARRAT_GOOD = "You look fit for a race!",
            BURNT = "Blasted.",
        },

        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "Boofs...",
            EMPTY = "What shall I offer...",
            BURNT = "Oh please.",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "No boof to groom with.",
            OCCUPIED = "Alright, you're up.",
            BURNT = "Poor boof won't get to dress up now.",
        },
        BEEFALO_GROOMER_ITEM = "I should set this up.",

        YOTR_RABBITSHRINE =
        {
            GENERIC = "Vegan.",
            EMPTY = "What, you want a carrot?",
            BURNT = "Eh. I didn't mind it.",
        },

        NIGHTCAPHAT = "Probably good for naps.",

        YOTR_FOOD1 = "Yikes.",
        YOTR_FOOD2 = "Not sure what to make of that.",
        YOTR_FOOD3 = "Is it supposed to be bouncy?",
        YOTR_FOOD4 = "Uh. Okay.",

        YOTR_TOKEN = "What's the token for?",

        COZY_BUNNYMAN = "Good. Don't complain about my food choices.",

        HANDPILLOW_BEEFALOWOOL = "Smells like boof.",
        HANDPILLOW_KELP = "Yeesh. A bit soggy.",
        HANDPILLOW_PETALS = "This smells nicer than the other two.",
        HANDPILLOW_STEELWOOL = "That's rough to even sleep on.",

        BODYPILLOW_BEEFALOWOOL = "Smells like boof.",
        BODYPILLOW_KELP = "Yeesh. A bit soggy.",
        BODYPILLOW_PETALS = "This smells nicer than the other two.",
        BODYPILLOW_STEELWOOL = "That's rough to even sleep on.",

		BISHOP_CHARGE_HIT = "YEOWCH!",
		TRUNKVEST_SUMMER = "Not warm enough.",
		TRUNKVEST_WINTER = "Now that's what I call warm.",
		TRUNK_COOKED = "Steak? Not quite, but I'll take it.",
		TRUNK_SUMMER = "I should cook this.",
		TRUNK_WINTER = "I should definitely cook this.",
		TUMBLEWEED = "Tumble along now.",
		TURKEYDINNER = "Turkey, huh? Hmm..",
		TWIGS = "These will be real useful later.",
		UMBRELLA = "I don't like my fur wet.",
		GRASS_UMBRELLA = "Helps a little, better than nothing.",
		UNIMPLEMENTED = "Wait, do you even belong here?",
		WAFFLES = "Give me some maple syrup and we're set.",
		WALL_HAY =
		{
			GENERIC = "That doesn't look secure...",
			BURNT = "I knew it was a bad idea!",
		},
		WALL_HAY_ITEM = "Are we sure we're using this?",
		WALL_STONE = "Now that's a good wall.",
		WALL_STONE_ITEM = "I should put this down around camp.",
		WALL_RUINS = "This, is a GREAT wall in the making.",
		WALL_RUINS_ITEM = "Sturdy, I need to lay these down.",
		WALL_WOOD =
		{
			GENERIC = "Spiky, isn't it?",
			BURNT = "Bah.",
		},
		WALL_WOOD_ITEM = "Not sure if the spikes really help.",
		WALL_MOONROCK = "That'll take a while to bring down.",
		WALL_MOONROCK_ITEM = "Looks astral.",
		WALL_DREADSTONE = "It's both safe and dreaded.",
		WALL_DREADSTONE_ITEM = "Well, we've made this for some reason.",
		FENCE = "That'll keep things in.",
        FENCE_ITEM = "Good fencing for gardens.",
        FENCE_GATE = "A nice way in and out.",
        FENCE_GATE_ITEM = "Gates for opening. And closing.",
		WALRUS = "Heard they have horns on the wrong sides. Not wrong.",
		WALRUSHAT = "I should love to wear that.",
		WALRUS_CAMP =
		{
			EMPTY = "Looks like a site.",
			GENERIC = "Hello? Anyone home?",
		},
		WALRUS_TUSK = "Well, that's a tusk, not a horn.",
		WARDROBE =
		{
			GENERIC = "I like how it's made out of wood.",
            BURNING = "Really.",
			BURNT = "Okay. No more swapping clothes.",
		},
		WARG = "That's way bigger than I am. And probably bites hard.",
        WARGLET = "Medium-sized hounds??",

		WASPHIVE = "I'm not fond of killer bees.",
		WATERBALLOON = "Good for a water festival.",
		WATERMELON = "I'm not a big fan of these.",
		WATERMELON_COOKED = "How does one cook watermelon...",
		WATERMELONHAT = "Yikes, that's sticky...",
		WAXWELLJOURNAL =
		{
			GENERIC = "So that's where he got all his ego from.",
			NEEDSFUEL = "only_used_by_waxwell",
		},
		WETGOOP = "Failure.",
        WHIP = "Whip 'em up good.",
		WINTERHAT = "Keeps my ears warm.",
		WINTEROMETER =
		{
			GENERIC = "Tells me how cold it is. Or hot.",
			BURNT = "Got too hot for its own good.",
		},

        WINTER_TREE =
        {
            BURNT = "Man...",
            BURNING = "Did a bulb short circuit?!",
            CANDECORATE = "Happy Winter's Feast!",
            YOUNG = "About time.",
        },
		WINTER_TREESTAND =
		{
			GENERIC = "I should get a sapling in.",
            BURNT = "Aw man...",
		},
        WINTER_ORNAMENT = "Let's hang that on a tree.",
        WINTER_ORNAMENTLIGHT = "Lights make for a great decor on any tree.",
        WINTER_ORNAMENTBOSS = "Oh, that one looks impressive.",
		WINTER_ORNAMENTFORGE = "Now that's fiery.",
		WINTER_ORNAMENTGORGE = "Leaves me hungry for some grub.",

        WINTER_FOOD1 = "I should have this.", --gingerbread cookie
        WINTER_FOOD2 = "Sweeeeeet.", --sugar cookie
        WINTER_FOOD3 = "I wish I could hold it like an actual walking cane.", --candy cane
        WINTER_FOOD4 = "Eternal? But how?", --fruitcake
        WINTER_FOOD5 = "Sweet goodness for a log. Good filling, even.", --yule log cake
        WINTER_FOOD6 = "Put that pudding inside my maw.", --plum pudding
        WINTER_FOOD7 = "An apple filled with juice? Gimme!", --apple cider
        WINTER_FOOD8 = "It's always warm for some reason. Not that I'll complain.", --hot cocoa
        WINTER_FOOD9 = "Chills me down on a hot day.", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "What a grand furnace for cooking.",
			COOKING = "Now we wait for the meal.",
			ALMOST_DONE_COOKING = "Almost there!",
			DISH_READY = "Feast's ready!",
		},
		BERRYSAUCE = "Merry berry!",
		BIBINGKA = "Hmm...",
		CABBAGEROLLS = "If it doesn't taste too cabbage-y I'll have it.",
		FESTIVEFISH = "FISH!",
		GRAVY = "Gravy?! Lemme have it!",
		LATKES = "Pancake-like, I love.",
		LUTEFISK = "I'd hope Wilson has better jokes on this.",
		MULLEDDRINK = "I'd slurp this down.",
		PANETTONE = "Festive bread, what's not to love?",
		PAVLOVA = "More desserts to be!",
		PICKLEDHERRING = "I'll take it.",
		POLISHCOOKIE = "Cookies, mmm!",
		PUMPKINPIE = "PUMPKIN PIE!? YIPPEEEE—",
		ROASTTURKEY = "That's a big drumstick!",
		STUFFING = "Real good stuffing, that!",
		SWEETPOTATO = "Let me have a bite!",
		TAMALES = "Hmm... I would want to try this.",
		TOURTIERE = "How nice looking.",

		TABLE_WINTERS_FEAST =
		{
			GENERIC = "A table fit for a feast.",
			HAS_FOOD = "Let's eat then?",
			WRONG_TYPE = "Oh, nonono. Not that.",
			BURNT = "WHY?!",
		},

		GINGERBREADWARG = "Wait, that's made out of sweets?",
		GINGERBREADHOUSE = "I wonder how it tastes like.",
		GINGERBREADPIG = "Not sure I'd want to bite him.",
		CRUMBS = "Left a delicious trail, it did.",
		WINTERSFEASTFUEL = "So that powers the furnace?",

        KLAUS = "Okay, you certainly don't look jolly.",
        KLAUS_SACK = "I really, really want to peek inside.",
		KLAUSSACKKEY = "Now that looks like the true key.",
		WORMHOLE =
		{
			GENERIC = "Woodie's right about it looking like a bum.",
			OPEN = "Should I...?",
		},
		WORMHOLE_LIMITED = "That looks greenish and sick.",
		ACCOMPLISHMENT_SHRINE = "I did a do. Yay.", --single player
		LIVINGTREE = "Totally normal. Absolutely normal. Nothing wrong with it.",
		ICESTAFF = "Ice cold staff.",
		REVIVER = "Now to give this to an unfortunate soul...",
		SHADOWHEART = "Yikes. That's still beating.",
        ATRIUM_RUBBLE =
        {
			LINE_1 = "Looks like an ancient race. Seems to be terrified.",
			LINE_2 = "Not sure what this one depicts. Wait uh, a goat?",
			LINE_3 = "That doesn't look good for them.",
			LINE_4 = "Oh dear...",
			LINE_5 = "That looks like an empire with lots of advancements.",
		},
        ATRIUM_STATUE = "Holding something, are you?",
        ATRIUM_LIGHT =
        {
			ON = "Sheesh. That's one spooky light.",
			OFF = "It's probably turned off.",
		},
        ATRIUM_GATE =
        {
			ON = "Very much activated.",
			OFF = "Hm. What goes down there?",
			CHARGING = "Absorbing something??",
			DESTABILIZING = "I do not like the looks of that.",
			COOLDOWN = "I do believe it isn't ready, yet.",
        },
        ATRIUM_KEY = "This looks like it could fit a hole somewhere.",
		LIFEINJECTOR = "What's this made of??",
		SKELETON_PLAYER =
		{
			MALE = "%s went out trying to go against %s.",
			FEMALE = "%s went out trying to go against %s.",
			ROBOT = "%s went out trying to go against %s.",
			DEFAULT = "%s went out trying to go against %s.",
		},
		HUMANMEAT = "Even I do not want this.",
		HUMANMEAT_COOKED = "I still don't want it...",
		HUMANMEAT_DRIED = "It's still from someone. I don't like that.",
		ROCK_MOON = "Musta came from up above.",
		MOONROCKNUGGET = "Musta came from up above.",
		MOONROCKCRATER = "Hmph. I wonder what it does.",
		MOONROCKSEED = "Now what are you, floating orb?",

        REDMOONEYE = "Good for marking our campsites.",
        PURPLEMOONEYE = "Purple gems are honestly better used for something else.",
        GREENMOONEYE = "That'll help guide ways.",
        ORANGEMOONEYE = "Nobody will get lost anymore.",
        YELLOWMOONEYE = "That should do it for pathfinders.",
        BLUEMOONEYE = "That there is a marker fit for a landmark.",

        --Arena Event
        LAVAARENA_BOARLORD = "Mister, why can't we just make a deal or something?!",
        BOARRIOR = "Yikes. That one I totally can't deal with.",
        BOARON = "Little pig with big horns. What's not to like...",
        PEGHOOK = "You'd better not shower me in that.",
        TRAILS = "MONKE! MONKE!!!",
        TURTILLUS = "Tutel! It SPEENS!",
        SNAPPER = "You'd better keep those spits to yourself.",
		RHINODRILL = "You know you could work in the mines with that nose.",
		BEETLETAUR = "Augh. I just hope he's the last one.",

        LAVAARENA_PORTAL =
        {
            ON = "Bye I guess. *sigh*",
            GENERIC = "I just hope that's our ticket back.",
        },
        LAVAARENA_KEYHOLE = "Needs a key similar to the one back there.",
		LAVAARENA_KEYHOLE_FULL = "That'll do.",
        LAVAARENA_BATTLESTANDARD = "Y'all, chop that battle standard!",
        LAVAARENA_SPAWNER = "How does that even teleport things in???",

        HEALINGSTAFF = "That summons a feel-good field of flowers.",
        FIREBALLSTAFF = "Calls a big meteor from the skies.",
        HAMMER_MJOLNIR = "Could forge blades, but could also smack things.",
        SPEAR_GUNGNIR = "Pierces the toughest of enemies.",
        BLOWDART_LAVA = "That will help with distancing.",
        BLOWDART_LAVA2 = "That dart packs quite a punch.",
        LAVAARENA_LUCY = "Again, I could've sworn I heard her talking.",
        WEBBER_SPIDER_MINION = "I suppose they're friendly, no?",
        BOOK_FOSSIL = "Stoned frozen, but just for a short while.",
		LAVAARENA_BERNIE = "That could distract enemies for a little.",
		SPEAR_LANCE = "Straight up.",
		BOOK_ELEMENTAL = "What's all the scripts inside?",
		LAVAARENA_ELEMENTAL = "Spicy turret, that!",

   		LAVAARENA_ARMORLIGHT = "I don't think that helps much.",
		LAVAARENA_ARMORLIGHTSPEED = "Could give me a boost, but won't protect me enough.",
		LAVAARENA_ARMORMEDIUM = "Decent.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "Nice fangs to encourage someone.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "That's for greater stamina.",
		LAVAARENA_ARMORHEAVY = "Really, the best around here?",
		LAVAARENA_ARMOREXTRAHEAVY = "That one works but it'll slow me down.",

		LAVAARENA_FEATHERCROWNHAT = "That'll give me a tiny boost.",
        LAVAARENA_HEALINGFLOWERHAT = "Hmm... I might have to give this to someone.",
        LAVAARENA_LIGHTDAMAGERHAT = "Looks like a war helm.",
        LAVAARENA_STRONGDAMAGERHAT = "Looks like an even better war helm.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "I should give this to someone who wields that staff.",
        LAVAARENA_EYECIRCLETHAT = "Focuses magic energies. Not sure how.",
        LAVAARENA_RECHARGERHAT = "That will give someone more energy to work with.",
        LAVAARENA_HEALINGGARLANDHAT = "That'll help me soothe my wounds.",
        LAVAARENA_CROWNDAMAGERHAT = "Fits Wolfgang, I think.",

		LAVAARENA_ARMOR_HP = "That there is the best thing to keep someone alive.",

		LAVAARENA_FIREBOMB = "Kablooey?",
		LAVAARENA_HEAVYBLADE = "Not sure I'd want to hold that.",

        --Quagmire
        QUAGMIRE_ALTAR =
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",

        QUAGMIRE_HOE = "It's a farming instrument.",

        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "Seeds...",

        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "Seeds...",

        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "Seeds...",

        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "Seeds...",

        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "Seeds...",

        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "Seeds...",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "Seeds...",

        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",

		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
		QUAGMIRE_SUGARWOODTREE =
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB =
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},

		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE =
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",


		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",


		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",

        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },

        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",

        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",

        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",

        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT =
        {
        	GENERIC = "A neat defense mechanic, that.",
        	OFF = "Needs power.",
        	BURNING = "She didn't install fire safety units??",
        	BURNT = "Drat, that's that.",
        },
        WINONA_SPOTLIGHT =
        {
        	GENERIC = "What an ingenious idea!",
        	OFF = "Needs power.",
        	BURNING = "She didn't install fire safety units??",
        	BURNT = "Drat, that's that.",
        },
        WINONA_BATTERY_LOW =
        {
        	GENERIC = "So I just put nitre in?",
        	LOWPOWER = "Now where's more nitre...",
        	OFF = "I'll power it myself then?",
        	BURNING = "She didn't install fire safety units??",
        	BURNT = "Drat, that's that.",
        },
        WINONA_BATTERY_HIGH =
        {
        	GENERIC = "Magical.",
        	LOWPOWER = "I bet there's more gems around.",
        	OFF = "Doesn't work without gems.",
        	BURNING = "She didn't install fire safety units??",
        	BURNT = "Drat, that's that.",
        },

        --Wormwood
        COMPOSTWRAP = "I'd rather not sniff that.",
        ARMOR_BRAMBLE = "Pokey defense.",
        TRAP_BRAMBLE = "I just hope I don't trip that.",

        BOATFRAGMENT03 = "Remains.",
        BOATFRAGMENT04 = "Remains.",
        BOATFRAGMENT05 = "Remains.",
		BOAT_LEAK = "That's giving me the chills.",
        MAST = "Time to go sailing.",
        SEASTACK = "That's a big rock.",
        FISHINGNET = "Nothing but net.", --unimplemented
        ANTCHOVIES = "Yeesh. Can I toss it back?", --unimplemented
        STEERINGWHEEL = "This controls where the boat goes.",
        ANCHOR = "Keeps the boat parked.",
        BOATPATCH = "Safe than sorry.",
        DRIFTWOOD_TREE =
        {
            BURNING = "Burning fast.",
            BURNT = "Not much of use.",
            CHOPPED = "The stump could still prove useful.",
            GENERIC = "Dried tree.",
        },

        DRIFTWOOD_LOG = "Could be good for an oar... or something else.",

        MOON_TREE =
        {
            BURNING = "That's a big fire.",
            BURNT = "That's its life.",
            CHOPPED = "Honestly rather large, it was.",
            GENERIC = "How did these grow out here?",
        },
		MOON_TREE_BLOSSOM = "Small flowers from the tree.",

        MOONBUTTERFLY =
        {
        	GENERIC = "Butterfly. Lunar-ish.",
        	HELD = "That's neat.",
        },
		MOONBUTTERFLYWINGS = "More luney than the ones back at camp.",
        MOONBUTTERFLY_SAPLING = "How did it turn into a sapling??",
        ROCK_AVOCADO_FRUIT = "Let's just break it open first.",
        ROCK_AVOCADO_FRUIT_RIPE = "Hm. I could try that.",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "Doesn't look half bad.",
        ROCK_AVOCADO_FRUIT_SPROUT = "That's gonna grow into a fine bush.",
        ROCK_AVOCADO_BUSH =
        {
        	BARREN = "Gonna need some fertz on that.",
			WITHERED = "Darn, it needs coolness..",
			GENERIC = "Curious. It grows rocks.",
			PICKED = "We wait, as usual.",
			DISEASED = "æ", --unimplemented
            DISEASING = "Smells off. Augh.", --unimplemented
			BURNING = "Put it out, put it out!",
		},
        DEAD_SEA_BONES = "That's just sad looking.",
        HOTSPRING =
        {
        	GENERIC = "I wish to have a dip.",
        	BOMBED = "Now that's more grand.",
        	GLASS = "How did a full moon glass that over?",
			EMPTY = "Ah well. Let's hope it refills.",
        },
        MOONGLASS = "Fragile, but probably sharp.",
        MOONGLASS_CHARGED = "The glow dims every passing minute.",
        MOONGLASS_ROCK = "That's like a mirror in the ground.",
        BATHBOMB = "Never used one o' these. Hm.",
        TRAP_STARFISH =
        {
            GENERIC = "Well. That's a starfish.",
            CLOSED = "Extraordinary starfish, more like.",
        },
        DUG_TRAP_STARFISH = "Just glad I didn't lose my legs.",
        SPIDER_MOON =
        {
        	GENERIC = "More horrors for my sights.",
        	SLEEPING = "Well. Best not wake that up.",
        	DEAD = "Good riddance.",
        },
        MOONSPIDERDEN = "Those look like legs sticking out.",
		FRUITDRAGON =
		{
			GENERIC = "Living, walking fruit. Cute.",
			RIPE = "I feel some warmth from it.",
			SLEEPING = "Nap well, fella.",
		},
        PUFFIN =
        {
            GENERIC = "Bird at sea. Hmph.",
            HELD = "You look bigger than other birds.",
            SLEEPING = "Snoozin'.",
        },

		MOONGLASSAXE = "Absolutely good choppin'.",
		GLASSCUTTER = "Hm. Good edge, that.",

        ICEBERG =
        {
            GENERIC = "Let's steer clear of that.", --unimplemented
            MELTED = "It's completely melted.", --unimplemented
        },
        ICEBERG_MELTED = "It's completely melted.", --unimplemented

        MINIFLARE = "Not for festivals.",
        MEGAFLARE = "Still not for festivals. Draws attention, even.",

		MOON_FISSURE =
		{
			GENERIC = "Fills my head with... thoughts...",
			NOLIGHT = "A hole full of secrets.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "Defo not ready.",
            GENERIC = "I swear it's whispering.",
        },

        MOON_ALTAR_IDOL = "Looks like a head for something.",
        MOON_ALTAR_GLASS = "Seems to fit one of those holes.",
        MOON_ALTAR_SEED = "Might belong on one of those pieces.",

        MOON_ALTAR_ROCK_IDOL = "That rock looks different.",
        MOON_ALTAR_ROCK_GLASS = "That rock looks different.",
        MOON_ALTAR_ROCK_SEED = "That rock looks different.",

        MOON_ALTAR_CROWN = "Looks like a key of sorts.",
        MOON_ALTAR_COSMIC = "Waiting for someone?",

        MOON_ALTAR_ASTRAL = "You look like you need more friends around you.",
        MOON_ALTAR_ICON = "Well, doesn't this look like a moon thing.",
        MOON_ALTAR_WARD = "Definitely lunar like.",

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "I wonder why we can't just make better boats.",
            BURNT = "Totally not giving anyone sea knowledge.",
        },
        BOAT_ITEM = "That there is just an adventure waiting.",
        BOAT_GRASS_ITEM = "If it works, it works.",
        STEERINGWHEEL_ITEM = "That'll be good for controlling the masts.",
        ANCHOR_ITEM = "Stops the boat nice and safe, it will.",
        MAST_ITEM = "Time to catch some wind, you.",
        MUTATEDHOUND =
        {
        	DEAD = "Better that than alive.",
        	GENERIC = "A good anatomy lesson...",
        	SLEEPING = "Best not bother it.",
        },

        MUTATED_PENGUIN =
        {
			DEAD = "Whew.",
			GENERIC = "Okay, that's grotesque.",
			SLEEPING = "Much as I would want to rid of them...",
		},
        CARRAT =
        {
        	DEAD = "Ah well.",
        	GENERIC = "That's... a rat...",
        	HELD = "Eh. Just don't nibble.",
        	SLEEPING = "Sleep tight now.",
        },

		BULLKELP_PLANT =
        {
            GENERIC = "Kelp... is it seaweed-like?",
            PICKED = "I'd have to wait.",
        },
		BULLKELP_ROOT = "I should plant this near camp.",
        KELPHAT = "I don't even want to describe the smell.",
		KELP = "Now if I had some eel...",
		KELP_COOKED = "That doesn't look too appetizing.",
		KELP_DRIED = "Mmm, crunchy!",

		GESTALT = "What are you supposed to be?",
        GESTALT_GUARD = "You look rather big.",

		COOKIECUTTER = "Quit staring at the boat.",
		COOKIECUTTERSHELL = "Bit spiky.",
		COOKIECUTTERHAT = "That helps with some rain. And ouchies.",
		SALTSTACK =
		{
			GENERIC = "They look like posing people.",
			MINED_OUT = "Could grow back if given time.",
			GROWING = "I do wonder how they grow into shapes.",
		},
		SALTROCK = "Quite salty smelling.",
		SALTBOX = "That'll last our rations for way longer.",

		TACKLESTATION = "Fishin' time.",
		TACKLESKETCH = "Hm, I bet I could craft one o' these up.",

        MALBATROSS = "Of course you'd want to steal my fish.",
        MALBATROSS_FEATHER = "Quite big for a feather.",
        MALBATROSS_BEAK = "Must've tasted a lot of fish, this did.",
        MAST_MALBATROSS_ITEM = "Now to put this down.",
        MAST_MALBATROSS = "That's quite the speed it's giving.",
		MALBATROSS_FEATHERED_WEAVE = "If only I could sleep on that...",

        GNARWAIL =
        {
            GENERIC = "Your horn looks sharp. Best not pierce my boat, alright?",
            BROKENHORN = "Welp. That's one broken horn.",
            FOLLOWER = "Coming nicely.",
            BROKENHORN_FOLLOWER = "I do suppose you can grow that back...? No?",
        },
        GNARWAIL_HORN = "Pointy and smells like the ocean.",

        WALKINGPLANK = "Ah well. That's probably one way out.",
        WALKINGPLANK_GRASS = "Ah well. That's probably one way out.",
        OAR = "Row, row, row...",
		OAR_DRIFTWOOD = "A bit faster rowin' with this.",

		OCEANFISHINGROD = "Let's see if I catch something.",
		OCEANFISHINGBOBBER_NONE = "Hm. Just bait, I see.",
        OCEANFISHINGBOBBER_BALL = "Simple, that.",
        OCEANFISHINGBOBBER_OVAL = "A bit more advanced.",
		OCEANFISHINGBOBBER_CROW = "I just hope it's not too dark for the fish to see.",
		OCEANFISHINGBOBBER_ROBIN = "Red and bright. Works nicely.",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "Not sure if using a cold feather helps.",
		OCEANFISHINGBOBBER_CANARY = "Hopefully not too shocking.",
		OCEANFISHINGBOBBER_GOOSE = "Now that, is a good float.",
		OCEANFISHINGBOBBER_MALBATROSS = "I bet this will toss quite far.",

		OCEANFISHINGLURE_SPINNER_RED = "Best used for dawnbreaks. And noon.",
		OCEANFISHINGLURE_SPINNER_GREEN = "Works during evenings.",
		OCEANFISHINGLURE_SPINNER_BLUE = "Great for nights.",
		OCEANFISHINGLURE_SPOON_RED = "Small fish might want this. At noon.",
		OCEANFISHINGLURE_SPOON_GREEN = "Those small fish would love this in the evening.",
		OCEANFISHINGLURE_SPOON_BLUE = "The small fish would bite this at night.",
		OCEANFISHINGLURE_HERMIT_RAIN = "I just hope I'm not soaked while I fish.",
		OCEANFISHINGLURE_HERMIT_SNOW = "Better when snowy.",
		OCEANFISHINGLURE_HERMIT_DROWSY = "That'll weaken the fish.",
		OCEANFISHINGLURE_HERMIT_HEAVY = "Let's see if I get the grand fish.",

		OCEANFISH_SMALL_1 = "Rather a small runt.",
		OCEANFISH_SMALL_2 = "Totally small looking.",
		OCEANFISH_SMALL_3 = "I'd wish it was somewhat bigger.",
		OCEANFISH_SMALL_4 = "I prefer bigger ones...",
		OCEANFISH_SMALL_5 = "Why do you smell like popcorn?",
		OCEANFISH_SMALL_6 = "That looks quite leafy. Hm.",
		OCEANFISH_SMALL_7 = "That's a nice bud on your head.",
		OCEANFISH_SMALL_8 = "I almost burned my hands.",
        OCEANFISH_SMALL_9 = "Don't spit at me.",

		OCEANFISH_MEDIUM_1 = "That looks muddy. Hopefully the meat inside is good.",
		OCEANFISH_MEDIUM_2 = "You look sorta delicious.",
		OCEANFISH_MEDIUM_3 = "I'm glad it doesn't roar.",
		OCEANFISH_MEDIUM_4 = "You were hard to catch. Hmph.",
		OCEANFISH_MEDIUM_5 = "You... smell like corn.",
		OCEANFISH_MEDIUM_6 = "Koi koi koi...",
		OCEANFISH_MEDIUM_7 = "Koi koi koi...",
		OCEANFISH_MEDIUM_8 = "Cold to the touch.",
        OCEANFISH_MEDIUM_9 = "It smells rather sweet.",

		PONDFISH = "Won't last me too long.",
		PONDEEL = "Yes, YES! EEL!",

        FISHMEAT = "I bet I could just chomp on this.",
        FISHMEAT_COOKED = "Lovely smelling.",
        FISHMEAT_SMALL = "Yup. Won't help much.",
        FISHMEAT_SMALL_COOKED = "Merely a meal.",
		SPOILED_FISH = "Bah.",

		FISH_BOX = "Quite nice that I can just store fish in there.",
        POCKET_SCALE = "Let's see...",

		TACKLECONTAINER = "Mmm. More space for my pockets.",
		SUPERTACKLECONTAINER = "Truly spectacular.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "Let's see if it's good.",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nHm. That's grand.",
			BURNING = "Definitely not putting a fish in that.",
			BURNT = "Of course that'd be gone. Ugh.",
			OWNER = "Heh. I caught this one.\nWeight: {weight}\nCaught by: {owner}",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nPretty good, if I say so myself.",
		},

		OCEANFISHABLEFLOTSAM = "That's mud.",

		CALIFORNIAROLL = "Almost as good as unagi.",
		SEAFOODGUMBO = "I'd just slurp this.",
		SURFNTURF = "Oh, that looks great.",

        WOBSTER_SHELLER = "You look absolutely edible.",
        WOBSTER_DEN = "I wish I could just cram my hand inside.",
        WOBSTER_SHELLER_DEAD = "I've been told these don't do much.",
        WOBSTER_SHELLER_DEAD_COOKED = "Eh. At least it smells nice.",

        LOBSTERBISQUE = "I should try this out.",
        LOBSTERDINNER = "Best eaten at any time, honestly.",

        WOBSTER_MOONGLASS = "You look absolutely inedible.",
        MOONGLASS_WOBSTER_DEN = "This one I wouldn't stick my hand in.",

		TRIDENT = "I don't really prefer this thing.",

		WINCH =
		{
			GENERIC = "That'll pick things from the depths.",
			RETRIEVING_ITEM = "Doing a good job, it is.",
			HOLDING_ITEM = "Let's see here...",
		},

        HERMITHOUSE = {
            GENERIC = "That looks like a very sorry house.",
            BUILTUP = "Definitely way better now.",
        },

        SHELL_CLUSTER = "Looks like a pile of shells to me. Hm.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "Quite lowered, that.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "Hmm. I'm not a musician.",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "Rather high now.",
        },

        CHUM = "Not for eating. It's for the fishes, however.",

        SUNKENCHEST =
        {
            GENERIC = "What's inside, hmm?",
            LOCKED = "Aw come on. Where's the key?",
        },

        HERMIT_BUNDLE = "I should unpack this.",
        HERMIT_BUNDLE_SHELLS = "I can hear shells inside.",

        RESKIN_TOOL = "Changes things up nice and tidy.",
        MOON_FISSURE_PLUGGED = "That sure does the job.",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG =
        {
            "Woah, you just got bigger.",
            "Walter, you sure you've been feeding her the right food?",
        },
        WOBYSMALL =
        {
            "Well, ain't she cute.",
            "That's an adorable pet there.",
        },
		WALTERHAT = "That there is a nice hat for a scout like him.",
		SLINGSHOT = "Hope I don't get hit by that.",
		SLINGSHOTAMMO_ROCK = "Pebbles.",
		SLINGSHOTAMMO_MARBLE = "Heavy rounds.",
		SLINGSHOTAMMO_THULECITE = "Ancient shots of hurt.",
        SLINGSHOTAMMO_GOLD = "Luxurious for ammo, isn't it?",
        SLINGSHOTAMMO_SLOW = "That's gonna slow someone.",
        SLINGSHOTAMMO_FREEZE = "Ice cold.",
		SLINGSHOTAMMO_POOP = "Yikes. Don't shoot me with that.",
        PORTABLETENT = "That'll be fantastic for some shuteye.",
        PORTABLETENT_ITEM = "Now how do I set this up, hmm...",

        -- Wigfrid
        BATTLESONG_DURABILITY = "That shall last my blade a bit more.",
        BATTLESONG_HEALTHGAIN = "Keeps ears healthy, apparently.",
        BATTLESONG_SANITYGAIN = "Gets you clear minded. Hm.",
        BATTLESONG_SANITYAURA = "Less fear, more courage.",
        BATTLESONG_FIRERESISTANCE = "That'll keep my tail somewhat safer.",
        BATTLESONG_INSTANT_TAUNT = "Strategic annoyance of audience.",
        BATTLESONG_INSTANT_PANIC = "Strikes fear into her foes.",

        -- Webber
        MUTATOR_WARRIOR = "It has a mean attitude to it.",
        MUTATOR_DROPPER = "That'll drop right into a spider's mouth.",
        MUTATOR_HIDER = "Ain't hiding from me right now, for one.",
        MUTATOR_SPITTER = "I'd hope it's not spitting at me, even as a spider treat.",
        MUTATOR_MOON = "Looks lunar like.",
        MUTATOR_HEALER = "Healthy for spiders, definitely not for anyone else.",
        SPIDER_WHISTLE = "Defo not using that.",
        SPIDERDEN_BEDAZZLER = "Hmm. A good decor for the dens, I suppose.",
        SPIDER_HEALER = "STOP healing yourself!",
        SPIDER_REPELLENT = "I'd wish this worked on my part.",
        SPIDER_HEALER_ITEM = "Now why do I want you alive?",

		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "What's this do?",
		GHOSTLYELIXIR_FASTREGEN = "What's this do?",
		GHOSTLYELIXIR_SHIELD = "What's this do?",
		GHOSTLYELIXIR_ATTACK = "What's this do?",
		GHOSTLYELIXIR_SPEED = "What's this do?",
		GHOSTLYELIXIR_RETALIATION = "What's this do?",
		SISTURN =
		{
			GENERIC = "Might need petals.",
			SOME_FLOWERS = "A few more here and there...",
			LOTS_OF_FLOWERS = "There we go. That's a good tribute.",
		},

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Let's get cookin'. Wait, how do I use this?",
            DONE = "That there looks nice.",

			COOKING_LONG = "Patience, patience...",
			COOKING_SHORT = "Almost!",
			EMPTY = "Oh I wish there was food inside.",
        },

        PORTABLEBLENDER_ITEM = "I'd hope it could blend up more stuff.",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "Makes meals more tasty.",
            DONE = "Smells good.",
        },
        SPICEPACK = "The chef's own pack.",
        SPICE_GARLIC = "I'd love some garlic on my food.",
        SPICE_SUGAR = "Can't go wrong with more sweetness.",
        SPICE_CHILI = "I just hope it's bearable.",
        SPICE_SALT = "Salty, and I love it.",
        MONSTERTARTARE = "Uh, you sure this is edible?",
        FRESHFRUITCREPES = "Now THIS I'd LOVE to eat!",
        FROGFISHBOWL = "Frogs and fish. How's this gonna turn out...",
        POTATOTORNADO = "I missed these!",
        DRAGONCHILISALAD = "That miiiiight burn my mouth.",
        GLOWBERRYMOUSSE = "Glowy. Must taste better than the ingredient itself.",
        VOLTGOATJELLY = "Now that's a jelly I would want to try.",
        NIGHTMAREPIE = "This looks creepy.",
        BONESOUP = "Well, probably sourced from the desert, I assume.",
        MASHEDPOTATOES = "Gimme, gimme!",
        POTATOSOUFFLE = "It's all puffed up and nice smelling.",
        MOQUECA = "Hmm... a fish stew of sorts?",
        GAZPACHO = "It's perfectly fine if it's juice.",
        ASPARAGUSSOUP = "I'm not having that.",
        VEGSTINGER = "That'll refresh my head.",
        BANANAPOP = "Quite nice as an ice cream.",
        CEVICHE = "Can I have more?",
        SALSA = "That's... not exactly what I want to eat.",
        PEPPERPOPPER = "Can I just have the filling?",

        TURNIP = "Defo not having that.",
        TURNIP_COOKED = "Nope.",
        TURNIP_SEEDS = "Seeds...",

        GARLIC = "The number one breath enhancer.",
        GARLIC_COOKED = "Perfectly browned.",
        GARLIC_SEEDS = "Seeds...",

        ONION = "Nuh uh.",
        ONION_COOKED = "NUH UH.",
        ONION_SEEDS = "Seeds...",

        POTATO = "This is perfectly acceptable. If cooked.",
        POTATO_COOKED = "I'll enjoy this.",
        POTATO_SEEDS = "Seeds...",

        TOMATO = "It's better as a sauce...",
        TOMATO_COOKED = "No.",
        TOMATO_SEEDS = "Seeds...",

        ASPARAGUS = "Uh. No thanks.",
        ASPARAGUS_COOKED = "Still no.",
        ASPARAGUS_SEEDS = "Seeds...",

        PEPPER = "Too hot for my mouth.",
        PEPPER_COOKED = "That's even more hot.",
        PEPPER_SEEDS = "Seeds...",

        WEREITEM_BEAVER = "How does his curse work again?",
        WEREITEM_GOOSE = "I bet this is what he uses for control.",
        WEREITEM_MOOSE = "Honestly just not tasty looking.",

        MERMHAT = "Has a stink to it.",
        MERMTHRONE =
        {
            GENERIC = "Looks like a rug to me.",
            BURNT = "Naught but a burnt rug.",
        },
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "Hmm, someone's been busy.",
            BURNT = "All that hard work gone to waste...",
        },
        MERMHOUSE_CRAFTED =
        {
            GENERIC = "That looks way better that those houses in the swamp.",
            BURNT = "To think she put her heart into this.",
        },

        MERMWATCHTOWER_REGULAR = "Better than those pig guards' posts.",
        MERMWATCHTOWER_NOKING = "An outpost guarding no king...",
        MERMKING = "Well, you certainly look like a king. Who smells.",
        MERMGUARD = "Protecting their kin and mates alike.",
        MERM_PRINCE = "The next generation of the royal merm family.",

        SQUID = "You'd better not steal the delicious ocean fish.",

		GHOSTFLOWER = "A hint of ghostly essence in there.",
        SMALLGHOST = "Well, you're way beyond my help, I'm afraid.",

        CRABKING =
        {
            GENERIC = "That wasn't a castle?!",
            INERT = "Looks like a stone castle in the middle of nowhere to me.",
        },
		CRABKING_CLAW = "Oh nonono— keep your pincers away from the boat!",

		MESSAGEBOTTLE = "Curious.",
		MESSAGEBOTTLEEMPTY = "Just a jar.",

        MEATRACK_HERMIT =
        {
            DONE = "That'll be for the crab lady.",
            DRYING = "Now we wait and she'll have a meal.",
            DRYINGINRAIN = "Afraid she might have to wait longer.",
            GENERIC = "Definitely needs something on there.",
            BURNT = "Wasn't expecting the rack to overdo that to itself.",
            DONE_NOTMEAT = "That should be dry.",
            DRYING_NOTMEAT = "Eh.",
            DRYINGINRAIN_NOTMEAT = "It ain't drying like this.",
        },
        BEEBOX_HERMIT =
        {
            READY = "She'll be in joy.",
            FULLHONEY = "She'll be in joy.",
            GENERIC = "I'll let the bees work it out.",
            NOHONEY = "There's nothing in there.",
            SOMEHONEY = "That's slowly filling up.",
            BURNT = "...",
        },

        HERMITCRAB = "Hello there, madam crab.",

        HERMIT_PEARL = "I need to fulfill her request.",
        HERMIT_CRACKED_PEARL = "I tried... but I'll have to tell her...",

        -- DSEAS
        WATERPLANT = "Sea... flowers? Huh.",
        WATERPLANT_BOMB = "Jeez, this is sharp.",
        WATERPLANT_BABY = "Time will tell its growth.",
        WATERPLANT_PLANTER = "I could put this on a sea stack.",

        SHARK = "Okay, yup. I don't like you one bit.",

        MASTUPGRADE_LAMP_ITEM = "That'll brighten our trips.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "Keeps the boat safe from bursting into flames.",

        WATERPUMP = "Not the most efficient, but gets the job done regardless.",

        BARNACLE = "Hm.",
        BARNACLE_COOKED = "I think it won't taste half bad.",

        BARNACLEPITA = "That looks tasty for a sea thing.",
        BARNACLESUSHI = "This looks good, although I'd still prefer unagi.",
        BARNACLINGUINE = "Noodles with barnacles? Sure why not!",
        BARNACLESTUFFEDFISHHEAD = "I'd personally want to just have the filling.",

        LEAFLOAF = "This looks like a brick...",
        LEAFYMEATBURGER = "I'd rather just eat the meat part.",
        LEAFYMEATSOUFFLE = "It looks jiggly. A bit unsettling.",
        MEATYSALAD = "Protein infused salad. Well, I won't have the greens.",

        -- GROTTO

		MOLEBAT = "What are you supposed to be, big nosed guy?",
        MOLEBATHILL = "That looks like snot...",

        BATNOSE = "Uh... this one I'll pass.",
        BATNOSE_COOKED = "I suppose it's somewhat better...?",
        BATNOSEHAT = "That'll keep my hands free for other things.",

        MUSHGNOME = "What a funny fella. Could do without the popping spores though.",

        SPORE_MOON = "They really, really pop aloud. And it hurts.",

        MOON_CAP = "Would you eat a mutated veggie? I wouldn't.",
        MOON_CAP_COOKED = "That looks even worse. Nuh uh.",

        MUSHTREE_MOON = "That there looks strange.",

        LIGHTFLIER = "You sure can light someone's path, little one.",

        GROTTO_POOL_BIG = "That's a big hunk of glass and waterfall.",
        GROTTO_POOL_SMALL = "Pretty, tiny pond with some glass sticking out.",

        DUSTMOTH = "You look like a great roomba around here.",

        DUSTMOTHDEN = "The fellas live in there? Hm.",

        ARCHIVE_LOCKBOX = "I'd want to know what's beneath the lock.",
        ARCHIVE_CENTIPEDE = "Well, definitely not out of order as I thought.",
        ARCHIVE_CENTIPEDE_HUSK = "That looks almost out of order.",

        ARCHIVE_COOKPOT =
        {
            COOKING_LONG = "Patience, patience...",
			COOKING_SHORT = "Almost there!",
			DONE = "Time to eat!",
			EMPTY = "Defo should cook something up.",
			BURNT = "Did someone overcook the darn pot?",
        },

        ARCHIVE_MOON_STATUE = "They seem to worship the moon back then.",
        ARCHIVE_RUNE_STATUE =
        {
            LINE_1 = "Makes me wish I knew what these meant.",
            LINE_2 = "I WONDER if these notes meant something to someone.",
            LINE_3 = "They look like markings for studies.",
            LINE_4 = "If only I understood these.",
            LINE_5 = "Maybe I should ask Ms. Wickerbottom about this.",
        },

        ARCHIVE_RESONATOR = {
            GENERIC = "Where are you pointing me to?",
            IDLE = "Nowhere to lead.",
        },

        ARCHIVE_RESONATOR_ITEM = "I should deploy this down, see what it does.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "It seems like it's lacking energy.",
          GENERIC =  "You look like a vending machine. Except not.",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "That's snapped shut, so it seems.",
            GENERIC = "You generate an orb of energy. That's concerning.",
        },

        ARCHIVE_SECURITY_PULSE = "Where are you going? Someplace interesting?",

        ARCHIVE_SWITCH = {
            VALID = "Those seem to be necessary for whatever this is.",
            GEMS = "Huh. Might need more of the same gem.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "Seems to not be functioning.",
            GENERIC = "I'd thought it'd at least react to the power being restored...",
        },

        WALL_STONE_2 = "Nicely carved.",
        WALL_RUINS_2 = "Looks real luxurious.",

        REFINED_DUST = "I have no clue what this is.",
        DUSTMERINGUE = "That looks like a dessert. But not for people.",

        SHROOMCAKE = "Literally a shroom cake. Hm.",

        NIGHTMAREGROWTH = "I'm not sure I'd want to look at that...",

        TURFCRAFTINGSTATION = "More flooring to be had.",

        MOON_ALTAR_LINK = "What even is this essence?",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "That honestly smells.",
            WET = "That looks moist.",
            DRY = "Now that's just too dry.",
            BALANCED = "Balanced.",
            BURNT = "Not making any more compost.",
        },
        COMPOST = "It SMELLS... yet again.",
        SOIL_AMENDER =
		{
			GENERIC = "I bet I have to wait this out.",
			STALE = "That's becoming more potent.",
			SPOILED = "Nearly there, isn't it?",
		},

		SOIL_AMENDER_FERMENTED = "The best mixture.",

        WATERINGCAN =
        {
            GENERIC = "Gotta give the plants their daily fill.",
            EMPTY = "I should find a pond.",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "This looks like it could water a whole lot.",
            EMPTY = "Spacious as it is, it needs water.",
        },

		FARM_PLOW = "Doing its job nice and quickly.",
		FARM_PLOW_ITEM = "Where should I put the garden...",
		FARM_HOE = "This'll help with my tilling needs.",
		GOLDEN_FARM_HOE = "I do suppose this was unnecessary.",
		NUTRIENTSGOGGLESHAT = "That'll let me in on the nutrients.",
		PLANTREGISTRYHAT = "Lets me keep track of plants somehow.",

        FARM_SOIL_DEBRIS = "I'd better dig that out.",

		FIRENETTLES = "That stings to the touch.",
		FORGETMELOTS = "Well I'll remember you less, alright.",
		SWEETTEA = "At least they make a good tea.",
		TILLWEED = "You're definitely trouble for other plants.",
		TILLWEEDSALVE = "All natural healing.",
        WEED_IVY = "You're not a regular plant...",
        IVY_SNARE = "Let go of me this instant!",

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "For showing off grand harvests.",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nHm.",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nThat's hefty alright.",
            HAS_ITEM_LIGHT = "Too tiny, too light.",
			BURNING = "That's not how you cook veggies...",
			BURNT = "Well, I had no care anyhow.",
        },

        CARROT_OVERSIZED = "Giant-sized. Not like I'll have them.",
        CORN_OVERSIZED = "If only I could grind you up into a drink.",
        PUMPKIN_OVERSIZED = "Would make a fantastic pie.",
        EGGPLANT_OVERSIZED = "I'm not having you.",
        DURIAN_OVERSIZED = "It reeks...",
        POMEGRANATE_OVERSIZED = "Wortox will LOVE this.",
        DRAGONFRUIT_OVERSIZED = "Juicy and big.",
        WATERMELON_OVERSIZED = "Plump and round.",
        TOMATO_OVERSIZED = "Again, they're better as ketchup.",
        POTATO_OVERSIZED = "Cooking this up will make for a fine meal.",
        ASPARAGUS_OVERSIZED = "Nope. Not eating you.",
        ONION_OVERSIZED = "I'd hope we could have onion rings.",
        GARLIC_OVERSIZED = "That there... smells.",
        PEPPER_OVERSIZED = "I feel hot just looking at it.",

        VEGGIE_OVERSIZED_ROTTEN = "What rotten luck.",

		FARM_PLANT =
		{
			GENERIC = "A flora of sorts.",
			SEED = "Keep growing now.",
			GROWING = "May you grow into a fine crop.",
			FULL = "That looks ready.",
			ROTTEN = "Well. I suppose I got to it late.",
			FULL_OVERSIZED = "That's grand looking.",
			ROTTEN_OVERSIZED = "We should've harvested it sooner...",
			FULL_WEED = "Wait a darn minute, you don't belong here!",

			BURNING = "No plants love fire, ever! Put that out!",
		},

        FRUITFLY = "I'll crush you alright!",
        LORDFRUITFLY = "You're due for extermination!",
        FRIENDLYFRUITFLY = "It brightens up the local flora populace.",
        FRUITFLYFRUIT = "That fly might be attracted to this.",

        SEEDPOUCH = "A good pack for my seed problems.",

		-- Crow Carnival
		CARNIVAL_HOST = "Greetings, good sir.",
		CARNIVAL_CROWKID = "Why hello there.",
		CARNIVAL_GAMETOKEN = "I'd wish I could buy something with these.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "Neat.",
			GENERIC_SMALLSTACK = "More to be used.",
			GENERIC_LARGESTACK = "A lot to trade in.",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "Hole in the ground.",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "I might need to use a token.",
			PLAYING = "So I just run around and feed the chicks?",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "Gotta set this up.",
		CARNIVALGAME_FEEDCHICKS_FOOD = "Here, birds!",

		CARNIVALGAME_MEMORY_KIT = "Gotta set this up.",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "I might need to use a token.",
			PLAYING = "Ah, one of these memory games...",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "Hole in the ground.",
			PLAYING = "Which one had the star, again?",
		},

		CARNIVALGAME_HERDING_KIT = "Gotta set this up.",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "I might need to use a token.",
			PLAYING = "I'd wish I was a lil' better at this.",
		},
		CARNIVALGAME_HERDING_CHICK = "Heyyyy, get over here!",

		CARNIVALGAME_SHOOTING_KIT = "Gotta set this up.",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "I might need to use a token.",
			PLAYING = "I'm not particularly good at ranged stuff.",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "Hole in the ground.",
			PLAYING = "Stay still, will you?!",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "I might need to use a token.",
			PLAYING = "Just gotta smash this button in.",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "Gotta set this up.",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "I might need to use a token.",
			PLAYING = "Probably the easiest out of all other games.",
		},

		CARNIVALGAME_PUCKDROP_KIT = "Gotta set this up.",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "I might need to use a token.",
			PLAYING = "I just hope I win good prizes.",
		},

		CARNIVAL_PRIZEBOOTH_KIT = "Let's put this down and see what's in store.",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "That? No... maybe that? Hm...",
		},

		CARNIVALCANNON_KIT = "Let's see what this thing does.",
		CARNIVALCANNON =
		{
			GENERIC = "It... blows up. Neat...",
			COOLDOWN = "Well. I guess that's sorta fun.",
		},

		CARNIVAL_PLAZA_KIT = "This tree honestly looks very glittery.",
		CARNIVAL_PLAZA =
		{
			GENERIC = "This looks barren.",
			LEVEL_2 = "Could use a few more decors here and there.",
			LEVEL_3 = "Now this looks like a good cawnival.",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "What's this for?",
		CARNIVALDECOR_EGGRIDE = "Huh. Alright then.",

		CARNIVALDECOR_LAMP_KIT = "This could make for a good lamp.",
		CARNIVALDECOR_LAMP = "Pretty stuff.",
		CARNIVALDECOR_PLANT_KIT = "A miniature tree.",
		CARNIVALDECOR_PLANT = "Well, ain't that cute.",
		CARNIVALDECOR_BANNER_KIT = "What is this, now?",
		CARNIVALDECOR_BANNER = "A good decor, I suppose.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "This one looks real hard to get.",
			UNCOMMON = "This here feels like it isn't seen often.",
			GENERIC = "Plenty of these on me lately.",
		},
		CARNIVALDECOR_FIGURE_KIT = "Hmm.",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "Hmm.",

        CARNIVAL_BALL = "It's genius in its simplicity.", --unimplemented
		CARNIVAL_SEEDPACKET = "Looks like seeds to me. Hmph.",
		CARNIVALFOOD_CORNTEA = "Oddly refreshing.",

        CARNIVAL_VEST_A = "All-natural clothing? Count me in!",
        CARNIVAL_VEST_B = "Cover me in leaves, mmmmyes.",
        CARNIVAL_VEST_C = "I'd want to wear this.",

        -- YOTB
        YOTB_SEWINGMACHINE = "Is this for the beefalos?",
        YOTB_SEWINGMACHINE_ITEM = "I should like to put this down.",
        YOTB_STAGE = "How does he just pop up out of nowhere?",
        YOTB_POST =  "That'll be for the beefalos to be hitched upon.",
        YOTB_STAGE_ITEM = "Let's set the stage.",
        YOTB_POST_ITEM =  "Time to put this up.",


        YOTB_PATTERN_FRAGMENT_1 = "Let's get these sewed together.",
        YOTB_PATTERN_FRAGMENT_2 = "Let's get these sewed together.",
        YOTB_PATTERN_FRAGMENT_3 = "Let's get these sewed together.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "That's adorable.",
            YOTB = "Now where is that man? I want to show him this...",
        },

        WAR_BLUEPRINT = "Looking like a war costume, that.",
        DOLL_BLUEPRINT = "Would make a beefalo really cute.",
        FESTIVE_BLUEPRINT = "Festivizes a beefalo.",
        ROBOT_BLUEPRINT = "I have no clue how I can sew this up...",
        NATURE_BLUEPRINT = "I hope this makes them smell better.",
        FORMAL_BLUEPRINT = "Dressing them up to a formal party.",
        VICTORIAN_BLUEPRINT = "Hm. Real good looking.",
        ICE_BLUEPRINT = "That'll make them look like they've been through snow.",
        BEAST_BLUEPRINT = "Makes me feel a lil' luckier.",

        BEEF_BELL = "Gives me a personal beef buddy.",

		-- YOT Catcoon
		KITCOONDEN =
		{
			GENERIC = "I could put my arms inside.",
            BURNT = "...",
			PLAYING_HIDEANDSEEK = "Where are youuuu?",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Come on, come on... show up!",
		},

		KITCOONDEN_KIT = "The kit for kitties.",

		TICOON =
		{
			GENERIC = "You know what you're doing, hm?",
			ABANDONED = "I won't need your help for now.",
			SUCCESS = "Oh nice, you found one.",
			LOST_TRACK = "Ah, someone else got it.",
			NEARBY = "Hm? Is something close?",
			TRACKING = "I'll follow you.",
			TRACKING_NOT_MINE = "Have fun, you two.",
			NOTHING_TO_TRACK = "Guess that's all there is.",
			TARGET_TOO_FAR_AWAY = "I don't think it's finding anything around.",
		},

		YOT_CATCOONSHRINE =
        {
            GENERIC = "Hm. What's in store?",
            EMPTY = "Perhaps a feather will do?",
            BURNT = "Dear, that is just sad.",
        },

		KITCOON_FOREST = "Well aren'tcha just adorable.",
		KITCOON_SAVANNA = "Well aren'tcha just adorable.",
		KITCOON_MARSH = "You're a cute little fella.",
		KITCOON_DECIDUOUS = "Well aren'tcha just adorable.",
		KITCOON_GRASS = "Well aren'tcha just adorable.",
		KITCOON_ROCKY = "You're a cute little fella.",
		KITCOON_DESERT = "You're a cute little fella.",
		KITCOON_MOON = "You're a cute little fella.",
		KITCOON_YOT = "You're a cute little fella.",

        -- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "You a big hunk of moon rock or something?",
            DEAD = "You almost broke my blade, y'know.",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "Oh come on. Just stay down.",
            DEAD = "Don't get up, you...",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "Hey HEY STOP WITH THAT!",
        ALTERGUARDIAN_PHASE3 = "Alright, you've done it.",
        ALTERGUARDIAN_PHASE3TRAP = "Yikes, that's trying to put me to sleep. Eternally.",
        ALTERGUARDIAN_PHASE3DEADORB = "I just hope you're gone for good.",
        ALTERGUARDIAN_PHASE3DEAD = "Naught but remains.",

        ALTERGUARDIANHAT = "Makes my head clear of thoughts. Quite.",
        ALTERGUARDIANHATSHARD = "That looks like it could shine in a lamp.",

        MOONSTORM_GLASS = {
            GENERIC = "Just glass.",
            INFUSED = "You seem to be glowing with energy..."
        },

        MOONSTORM_STATIC = "Hm. Full of electrical charges.",
        MOONSTORM_STATIC_ITEM = "He said I should keep this for later.",
        MOONSTORM_SPARK = "It tickles, but it hurts more.",

        BIRD_MUTANT = "That's not regular wildlife...",
        BIRD_MUTANT_SPITTER = "It's trying to spit at me!",

        WAGSTAFF_NPC = "Who are you supposed to be, old man?",
        ALTERGUARDIAN_CONTAINED = "Seems to be siphoning whatever energy is in there.",

        WAGSTAFF_TOOL_1 = "Is it that?!",
        WAGSTAFF_TOOL_2 = "So uh, this one, right?",
        WAGSTAFF_TOOL_3 = "I do suppose this might be it?",
        WAGSTAFF_TOOL_4 = "Sir, is it that one?!",
        WAGSTAFF_TOOL_5 = "What do you do? Which one are you?",

        MOONSTORM_GOGGLESHAT = "Potatoes powering goggles... how?",

        MOON_DEVICE = {
            GENERIC = "What is the device for, anyway?",
            CONSTRUCTION1 = "That looks half done.",
            CONSTRUCTION2 = "Let's get this started then.",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "I'm no clockmaker...",
			RECHARGING = "It looks like it's unwinding.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "I'm no clockmaker...",
			RECHARGING = "It looks like it's unwinding.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "I'm no clockmaker...",
			RECHARGING = "It should be cooling down.",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "I'm no clockmaker...",
			RECHARGING = "It should be cooling down.",
			UNMARKED = "only_used_by_wanda",
			MARKED_SAMESHARD = "only_used_by_wanda",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "I'm no clockmaker...",
			RECHARGING = "It should be cooling down.",
			UNMARKED = "only_used_by_wanda unmarked",
			MARKED_SAMESHARD = "only_used_by_wanda same shard",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "Sheesh. That looks sharp on the edges.",
			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "I'm no tinkerer.",
        POCKETWATCH_DISMANTLER = "Seems to take her clocks apart swiftly.",

        POCKETWATCH_PORTAL_ENTRANCE =
		{
			GENERIC = "Adventure awaits.",
			DIFFERENTSHARD = "A journey awaits.",
		},
        POCKETWATCH_PORTAL_EXIT = "If only that didn't hurt my back.",

        -- Waterlog
        WATERTREE_PILLAR = "I've seen one of these before. Except these are taller.",
        OCEANTREE = "Fancy how it grows in water at all.",
        OCEANTREENUT = "I bet we could plant this somewhere.",
        WATERTREE_ROOT = "Bits of wood.",

        OCEANTREE_PILLAR = "It's tall enough to me.",

        OCEANVINE = "Hangs the fruit.",
        FIG = "Huh. I've never had this.",
        FIG_COOKED = "I might want to try this out then...",

        SPIDER_WATER = "There's all kinds of spiders everywhere here. Hm.",
        MUTATOR_WATER = "Makes spiders float on water when they eat it.",
        OCEANVINE_COCOON = "Oh I don't like that.",
        OCEANVINE_COCOON_BURNT = "That's good riddance.",

        GRASSGATOR = "You look bigger than the gekkos back on land.",

        TREEGROWTHSOLUTION = "That's for the tree. Or a farm plot.",

        FIGATONI = "Looks fancy. I'll take it.",
        FIGKABAB = "Skewered meat and fig together on a stick. Mmm.",
        KOALEFIG_TRUNK = "Pretty new to me.",
        FROGNEWTON = "Hopefully tastes better than bunwich.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "Such familiar tree... I think I've been there before?",
            CRIMSON = "I remember that being a sign of evil.",
            ENABLED = "Pretty beam, that.",
			WAITING_FOR_DARK = "I don't know how this one functions.",
			COOLDOWN = "Maybe it'll grow back.",
			SPAWN_DISABLED = "I feel no evil presence.",
        },

        -- Wolfgang
        MIGHTY_GYM =
        {
            GENERIC = "So that's where he does workouts.",
            BURNT = "Not much of use anymore.",
        },

        DUMBBELL = "I personally think I can't lift that high up.",
        DUMBBELL_GOLDEN = "Luxurious workout tool.",
		DUMBBELL_MARBLE = "That looks really heavy...",
        DUMBBELL_GEM = "That there seems too shiny for a dumbbell.",
        POTATOSACK = "Is it really, really made out of potatoes? They look heavy!",

        DUMBBELL_HEAT = "That's a good use of the thermal stone.",
        DUMBBELL_REDGEM = "Workouts on fire, taken literally.",
        DUMBBELL_BLUEGEM = "That looks pretty cold to hold.",

        TERRARIUMCHEST =
		{
			GENERIC = "Well, trap tripped.",
			BURNT = "That's gone.",
			SHIMMER = "That looks glowy...",
		},

		EYEMASKHAT = "What a view... inside an eye-mouth.",

        EYEOFTERROR = "We meet again. What, you want me to poke you again?",
        EYEOFTERROR_MINI = "Old tricks there, mister eye. This is nothing new.",
        EYEOFTERROR_MINI_GROUNDED = "I think I know what those are.",

        FROZENBANANADAIQUIRI = "A good drink for a hot day.",
        BUNNYSTEW = "Its life was cut short, but it made for a delicious stew.",
        MILKYWHITES = "I'm not touching that. No.",

        CRITTER_EYEOFTERROR = "This one looks to be friendly.",

        SHIELDOFTERROR = "I'm not good at shields, but this is small enough for holding.",
        TWINOFTERROR1 = "You again? Hmph. You softened down.",
        TWINOFTERROR2 = "You again? Hmph. You softened down.",

        -- Year of the Catcoon
        CATTOY_MOUSE = "A mouse on wheeeeeeeels.",
        KITCOON_NAMETAG = "Time to think of a good name... I'm bad at this...",

		KITCOONDECOR1 =
        {
            GENERIC = "A fake bird for the kittens.",
            BURNT = "Welp...",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "A distraction for the fellas.",
            BURNT = "Darn it...",
        },

		KITCOONDECOR1_KIT = "Oughta put this down.",
		KITCOONDECOR2_KIT = "Probably not too difficult to build.",

        -- WX78
        WX78MODULE_MAXHEALTH = "Very... complex, to say the least.",
        WX78MODULE_MAXSANITY1 = "Very... complex, to say the least.",
        WX78MODULE_MAXSANITY = "Very... complex, to say the least.",
        WX78MODULE_MOVESPEED = "Very... complex, to say the least.",
        WX78MODULE_MOVESPEED2 = "Very... complex, to say the least.",
        WX78MODULE_HEAT = "Very... complex, to say the least.",
        WX78MODULE_NIGHTVISION = "Very... complex, to say the least.",
        WX78MODULE_COLD = "Very... complex, to say the least.",
        WX78MODULE_TASER = "Very... complex, to say the least.",
        WX78MODULE_LIGHT = "Very... complex, to say the least.",
        WX78MODULE_MAXHUNGER1 = "Very... complex, to say the least.",
        WX78MODULE_MAXHUNGER = "Very... complex, to say the least.",
        WX78MODULE_MUSIC = "Very... complex, to say the least.",
        WX78MODULE_BEE = "Very... complex, to say the least.",
        WX78MODULE_MAXHEALTH2 = "Very... complex, to say the least.",

        WX78_SCANNER =
        {
            GENERIC = "Scanning the environment away.",
            HUNTING = "You go, Jimmy.",
            SCANNING = "Hm, did it find something useful?",
        },

        WX78_SCANNER_ITEM = "It's probably on shutdown.",
        WX78_SCANNER_SUCCEEDED = "You want to show the robot something?",

        WX78_MODULEREMOVER = "Looks like a plier.",

        SCANDATA = "I'm not reading that.",

		-- QOL 2022
		JUSTEGGS = "I'd wish I had some ketchup to go with this.",
		VEGGIEOMLET = "I'll only have the egg, thank you very much.",
		TALLEGGS = "Oddly very filling for one big egg.",
		BEEFALOFEED = "That's for boof.",
		BEEFALOTREAT = "That's still for boof. But more fancy.",

        -- Pirates
        BOAT_ROTATOR = "Rotating the boat around.",
        BOAT_ROTATOR_KIT = "Makes the boat go speen.",
        BOAT_BUMPER_KELP = "This is like wearing a grass suit for the boat.",
        BOAT_BUMPER_KELP_KIT = "Mediocre protection, but better than nothing.",
		BOAT_BUMPER_SHELL = "That'll stop the most severe crashes.",
        BOAT_BUMPER_SHELL_KIT = "Good protection for the boat.",
        BOAT_CANNON = {
            GENERIC = "It's not loaded.",
            AMMOLOADED = "Now I just gotta aim.",
            NOAMMO = "I have nothing to load it with.",
        },
        BOAT_CANNON_KIT = "A soon to be cannon.",
        CANNONBALL_ROCK_ITEM = "This will definitely do major damage.",

        OCEAN_TRAWLER = {
            GENERIC = "Thankless fishing work.",
            LOWERED = "Patience is... something.",
            CAUGHT = "Oh, neat. Let's see what's in there.",
            ESCAPED = "Aw... the fish got away...",
            FIXED = "All it needed was a few ties here and there.",
        },
        OCEAN_TRAWLER_KIT = "Time to see if any fish gets caught.",

        BOAT_MAGNET =
        {
            GENERIC = "How does it work, exactly?",
            ACTIVATED = "If it works, it... works.",
        },
        BOAT_MAGNET_KIT = "I need someone to explain what this is.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "I think it's pulling other magnets in.",
            ACTIVATED = "Right. I was never good at science.",
        },
        DOCK_KIT = "Fancy flooring for the shallow seas.",
        DOCK_WOODPOSTS_ITEM = "Good decor.",

        MONKEYHUT =
        {
            GENERIC = "That looks like a treehouse. Sort of.",
            BURNT = "Good riddance.",
        },
        POWDER_MONKEY = "Stay. Away.",
        PRIME_MATE = "That looks like the boss.",
		LIGHTCRAB = "Aww, aren't you pretty.",
        CUTLESS = "It really, really cuts less.",
        CURSED_MONKEY_TOKEN = "I think this thing's cursed.",
        OAR_MONKEY = "Getting smacked by one of these hurts.",
        BANANABUSH = "Odd how they grow like this, but alright.",
        DUG_BANANABUSH = "Wait, they grow on bushes?",
        PALMCONETREE = "Palm tree... that looks rather hard.",
        PALMCONE_SEED = "I should plant this.",
        PALMCONE_SAPLING = "Grow up into a fine tree, will you?",
        PALMCONE_SCALE = "What should I use you for?",
        MONKEYTAIL = "More convenient to collect than the reeds in the swamp.",
        DUG_MONKEYTAIL = "Let's move this back home.",

        MONKEY_MEDIUMHAT = "Makes me feel like a captain.",
        MONKEY_SMALLHAT = "I look like a ship's crew than anything.",
        POLLY_ROGERSHAT = "Comes with a bird upon wearing, apparently.",
        POLLY_ROGERS = "There it is.",

        MONKEYISLAND_PORTAL = "What is that, a one-way portal of sorts?",
        MONKEYISLAND_PORTAL_DEBRIS = "This is all junk.",
        MONKEYQUEEN = "Hello, are you like the leader around here?",
        MONKEYPILLAR = "That's for the queen only.",
        PIRATE_FLAG_POLE = "I'm no pirate.",

        BLACKFLAG = "It's just a piece of flag.",
        PIRATE_STASH = "Don't mind me uncovering whatever this is.",
        STASH_MAP = "A treasure map?",

        BANANAJUICE = "Pretty tasty for a simple mug of bananas.",

        FENCE_ROTATOR = "Not the best for combat.",

        CHARLIE_STAGE_POST = "Why is there a stage out here?",
        CHARLIE_LECTURN = "Hm.",

        CHARLIE_HECKLER = "What are you people?",

        PLAYBILL_THE_DOLL = "\"Authored by C.W.\"",
        STATUEHARP_HEDGESPAWNER = "Such a weird statue...",
        HEDGEHOUND = "That's NOT a bush!",
        HEDGEHOUND_BUSH = "Roses, roses...",

        MASK_DOLLHAT = "It's a doll mask.",
        MASK_DOLLBROKENHAT = "It's a cracked doll mask.",
        MASK_DOLLREPAIREDHAT = "Hm. Must've been fixed.",
        MASK_BLACKSMITHHAT = "It's a blacksmith mask.",
        MASK_MIRRORHAT = "More of a mirror.",
        MASK_QUEENHAT = "It's a Queen mask.",
        MASK_KINGHAT = "It's a King mask.",
        MASK_TREEHAT = "It's a tree mask.",
        MASK_FOOLHAT = "It's a fool's mask.",

        COSTUME_DOLL_BODY = "It's a doll costume.",
        COSTUME_QUEEN_BODY = "It's a Queen costume.",
        COSTUME_KING_BODY = "It's a King costume.",
        COSTUME_BLACKSMITH_BODY = "It's a blacksmith costume.",
        COSTUME_MIRROR_BODY = "It's a costume.",
        COSTUME_TREE_BODY = "It's a tree costume.",
        COSTUME_FOOL_BODY = "It's a fool's costume.",

        STAGEUSHER =
        {
            STANDING = "I shouldn't have looked...",
            SITTING = "Why is there just a fancy table out here?",
        },
        SEWING_MANNEQUIN =
        {
            GENERIC = "A good place to swap out gears.",
            BURNT = "Not of use anymore.",
        },

		-- Waxwell
		MAGICIAN_CHEST = "I don't want to know how it works, let alone put my hand in.",
		TOPHAT_MAGICIAN = "Totally a magician prop that actually works somehow.",

        -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "Are we having a match of something?",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "Nothing much going on.",
            PLAYING = "Feels like a tiny war going on inside the ring.",
        },

        YOTR_DECOR_1 = {
            GENERAL = "That's brightening.",
            OUT = "It lit itself up in flames.",
        },
        YOTR_DECOR_2 = {
            GENERAL = "That's brightening.",
            OUT = "It lit itself up in flames.",
        },

        HAREBALL = "...Wha?",
        YOTR_DECOR_1_ITEM = "Time to put you down.",
        YOTR_DECOR_2_ITEM = "Time to put you down.",

		--
		DREADSTONE = "Dreaded stone. Heh.",
		HORRORFUEL = "To me, I think it's just spiky goop.",
		DAYWALKER =
		{
			GENERIC = "Why can't we talk this out?",
			IMPRISONED = "What a big pig.",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "I can see something inside the cracks.",
			EXPOSED = "It wasn't entirely marble, whatever this is.",
		},
		ARMORDREADSTONE = "My thoughts go all over the place wearing this.",
		DREADSTONEHAT = "Safe as it is, it's somewhat causing me a headache.",

        -- Rifts 1
        LUNARRIFT_PORTAL = "Looks like a one way portal.",
        LUNARRIFT_CRYSTAL = "So... pretty...",

        LUNARTHRALL_PLANT = "What are you, a weed of sorts?",
        LUNARTHRALL_PLANT_VINE_END = "That looks thorny and hurtful.",

		LUNAR_GRAZER = "You came through the rift?",

        PUREBRILLIANCE = "Shiny and pretty at the same time.",
        LUNARPLANT_HUSK = "Tougher than I thought it'd be.",

		LUNAR_FORGE = "That's like a furnace. But with lunar fire.",
		LUNAR_FORGE_KIT = "I just slapped the stuff together into this.",

		LUNARPLANT_KIT = "Comes with all I need to fix my things.",
		ARMOR_LUNARPLANT = "Cover me in lunar leaves.",
		LUNARPLANTHAT = "It brightens up as I wear it.",
		BOMB_LUNARPLANT = "I do love myself bombs to mess with.",
		STAFF_LUNARPLANT = "I'd thought this'd be stronger.",
		SWORD_LUNARPLANT = "I'd still rather prefer my blade over this fancy one.",
		PICKAXE_LUNARPLANT = "It's hammertime. And mining time.",
		SHOVEL_LUNARPLANT = "Fancy farming using plant matter... to plant more matter.",

		BROKEN_FORGEDITEM = "I could actually bring it back to life again.",

        PUNCHINGBAG = "Let's see how much my blades fare against things.",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "I'd be careful not to fall down there.",

		SHADOW_FORGE = "Now then, what do you make?",
		SHADOW_FORGE_KIT = "What a dreaded table kit.",

        FUSED_SHADELING = "You definitely look worse than the ones nabbing on big pig.",
        FUSED_SHADELING_BOMB = "That'll totally hurt.",

		VOIDCLOTH = "Such fine quality.",
		VOIDCLOTH_KIT = "How does one sew up shadows?",
		VOIDCLOTHHAT = "Hides my face. Hm.",
		ARMOR_VOIDCLOTH = "I'd look more scary to big lugs than they are to me.",

        VOIDCLOTH_UMBRELLA = "That'll keep us safe from almost anything.",
        VOIDCLOTH_SCYTHE = "Good for gardening! And reaping the innocent.",

		SHADOWTHRALL_HANDS = "You're trying to KICK me?!",
		SHADOWTHRALL_HORNS = "Keep your mouth to yourself!",
		SHADOWTHRALL_WINGS = "Go somewhere else!",

        CHARLIE_NPC = "Who... are you?",
        CHARLIE_HAND = "Might we offer it something?",

        NITRE_FORMATION = "Hm. I guess the rain wasn't all horrible.",
        DREADSTONE_STACK = "How did that just grow out?",
        
        SCRAPBOOK_PAGE = "I could add this to my notes.",

        LEIF_IDOL = "That still seems alive despite being carved.",
        WOODCARVEDHAT = "Safety first, but made from nature!",
        WALKING_STICK = "Heh. Has a bird head and all.",

        IPECACSYRUP = "Thanks. But no thanks.",
        BOMB_LUNARPLANT_WORMWOOD = "Our friend seems to be getting more in touch with his lunar roots.", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "Ah well.",
        	GENERIC = "That's... a rat...",
        	HELD = "Eh. Just don't nibble.",
        	SLEEPING = "Sleep tight now.",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "You sure can light someone's path, little one.",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "Living, walking fruit. Cute.",
			RIPE = "I feel some warmth from it.",
			SLEEPING = "Nap well, fella.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "I'd better piece the rocks together.",
        SUPPORT_PILLAR = "I see a few cracks here and there.",
        SUPPORT_PILLAR_COMPLETE = "That'll keep the perimeters safe.",
        SUPPORT_PILLAR_BROKEN = "How far have you fallen... I shall fix you up.",

        WOLFGANG_WHISTLE = "Encourages friends and buddies alike.",
	
	-- Rifts 3

        MUTATEDDEERCLOPS = "Well. That's absolutely terrifying.",
        MUTATEDWARG = "You can breathe frostflame now??",
        MUTATEDBEARGER = "Oh boy. Here we go again.",

        LUNARFROG = "What? They come in lunar forms now?",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "Good riddance.",
            BURNING  = "Smells like extra toasty deer.",
            REVIVING = "Wait, wha? No, stay down!...",
        },

        WARGCORPSE =
        {
            GENERIC  = "I don't fear you no more.",
            BURNING  = "Farewell, mister.",
            REVIVING = "WHAT!?",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "Well, too bad I had to put you down.",
            BURNING  = "We gather here to mourn for the late bearger...",
            REVIVING = "Woah, hey! Look, I'm sorry!",
        },

        BEARGERFUR_SACK = "His fur sure does provide a lot of insulation.",
        HOUNDSTOOTH_BLOWPIPE = "I'm glad I don't have to use mine for it.",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "Literal spine chilling gaze right there.",    -- Enabled.
            NOEYEBALL = "Just a stand of nothing.",  -- Disabled.
        },
        DEERCLOPSEYEBALL_SENTRYWARD_KIT = "I'd better deploy you.",

        SECURITY_PULSE_CAGE = "Well. There's nothing inside.",
        SECURITY_PULSE_CAGE_FULL = "I didn't know you could easily be captured.",

		CARPENTRY_STATION =
        {
            GENERIC = "Makes fancy furniture out of wood.",
            BURNT = "Only cinders left.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "Neat decor right here.",
            HAS_ITEM = "Neat decor right here.",
            BURNT = "What a waste...",
        },

        WOOD_CHAIR =
        {
            GENERIC = "I'd love some place to sit other than the floor.",
            OCCUPIED = "Well, I can't be rude.",
            BURNT = "That'll make me fall on my back if I dare sit.",
        },

        DECOR_CENTERPIECE = "Quite nice.",
        DECOR_LAMP = "A warm, cozy light.",
        DECOR_FLOWERVASE =
        {
			GENERIC = "Vase on a table.",
			EMPTY = "Might I put a plant inside?",
			WILTED = "I should replace that.",
			FRESHLIGHT = "Comforting glow in the dark.",
			OLDLIGHT = "Let's replace that soon.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Pretty stuff.",
            UNDRAWN = "I should draw on it.",
        },
        DECOR_PORTRAITFRAME = "Quite nice.",

        PHONOGRAPH = "I wonder why Wilson and Maxwell doesn't like this.",
        RECORD = "Maxwell hates this for some reason.",
        RECORD_CREEPYFOREST = "Not-so-creepy forest, I love the vibe.",
        RECORD_DANGER = "Gets me going for a fight.",
        RECORD_DAWN = "Could use a few more things.",
        RECORD_DRSTYLE = "What a fancy song.",
        RECORD_DUSK = "Could use a few more things.",
        RECORD_EFS = "Truly an Epic Fight Song.",
        RECORD_END = "Hmph.",
        RECORD_MAIN = "Could use a few more things.",
        RECORD_WORKTOBEDONE = "I could listen to this all day.",

        ARCHIVE_ORCHESTRINA_MAIN = "It's like a puzzle, played on the floor.",

        WAGPUNKHAT = "Steam powered.",
        ARMORWAGPUNK = "Full of cogs and wheels.",
        WAGSTAFF_MACHINERY = "Huh, who left these out here?",
        WAGPUNK_BITS = "Bits and bobs of machinery.",
        WAGPUNKBITS_KIT = "A repair kit for the steampunk stuff.",

        WAGSTAFF_MUTATIONS_NOTE = "I hope the owner doesn't mind me taking a peek.",
    },

    DESCRIBE_GENERIC = "That's a thing, alright.",
    DESCRIBE_TOODARK = "I cannot see a THING!",
    DESCRIBE_SMOLDERING = "Hey, I oughta put that out!",

    DESCRIBE_PLANTHAPPY = "You look swell.",
    DESCRIBE_PLANTVERYSTRESSED = "You... don't feel like being here, do you?",
    DESCRIBE_PLANTSTRESSED = "Seems to be somewhat moody.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "I suppose it's time to cull the weeds.",
    DESCRIBE_PLANTSTRESSORFAMILY = "You miss your pals, huh?",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "Oh, the roots must be jumbled up down there.",
    DESCRIBE_PLANTSTRESSORSEASON = "Not taking the weather kindly, it isn't.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "You look thirsty.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "It's starving for nutrients.",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "I might as well chat with you.",
    DESCRIBE_PLANT_IDENTIFIED = "only_used_by_wormwood",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "One less tallbird.",
		WINTERSFEASTFUEL = "Honestly feels like chewing nothing.",
    },
}
