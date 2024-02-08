PrefabFiles = {
	"ilaskus",
	"ilaskus_none",
    "pointstead",
    "dreadstead",
    "brightstead",
    "voidstead",
    "voidstead_classified",
    "glassknife",
    "glassknife_planar",
}

------------------------------------------------------------------------------------

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/ilaskus.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/ilaskus.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/ilaskus.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/ilaskus.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/ilaskus_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/ilaskus_silho.xml" ),

    Asset( "IMAGE", "bigportraits/ilaskus.tex" ),
    Asset( "ATLAS", "bigportraits/ilaskus.xml" ),

	Asset( "IMAGE", "images/map_icons/ilaskus.tex" ),
	Asset( "ATLAS", "images/map_icons/ilaskus.xml" ),

	Asset( "IMAGE", "images/avatars/avatar_ilaskus.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ilaskus.xml" ),

	Asset( "IMAGE", "images/avatars/avatar_ghost_ilaskus.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_ilaskus.xml" ),

	Asset( "IMAGE", "images/avatars/self_inspect_ilaskus.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_ilaskus.xml" ),

	Asset( "IMAGE", "images/names_ilaskus.tex" ),
    Asset( "ATLAS", "images/names_ilaskus.xml" ),

	Asset( "IMAGE", "images/names_gold_ilaskus.tex" ),
    Asset( "ATLAS", "images/names_gold_ilaskus.xml" ),

    Asset("ATLAS", "images/inventoryimages/perkportablecookpot.xml"),
    Asset("IMAGE", "images/inventoryimages/perkportablecookpot.tex"),
}

-- ================ Initialize ====================

AddMinimapAtlas("images/map_icons/ilaskus.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TUNING = GLOBAL.TUNING
local Ingredient = GLOBAL.Ingredient
-- local RECIPETABS = GLOBAL.RECIPETABS
local TECH = GLOBAL.TECH
local FOODTYPE = GLOBAL.FOODTYPE
-- local CHARACTER_INGREDIENT = GLOBAL.CHARACTER_INGREDIENT
-- local CHARACTER_INGREDIENT_SEG = GLOBAL.CHARACTER_INGREDIENT_SEG
local State = GLOBAL.State
local TimeEvent = GLOBAL.TimeEvent
local EventHandler = GLOBAL.EventHandler
local FRAMES = GLOBAL.FRAMES
local COLLISION = GLOBAL.COLLISION
local debug = GLOBAL.debug
local TheNet = GLOBAL.TheNet

if TheNet:GetServerGameMode() == "lavaarena" then
    table.insert(PrefabFiles, "lavaarena_pointstead")
end

-- ================ Tuning Stats and Values ====================
TUNING.ILASKUS_STAT = {
    -- Basic Stat
    HEALTH = 150,
    HUNGER = 130,
    SANITY = 120,

    -- Sanity Cost multiplier
    SANITY_MODIFIER = {
        STAFFSANITY = 2,                        -- x2 sanity cost when casting
    },

    -- Temperature related
    TEMPERATURE = {
        WINTER_INSULATION = TUNING.INSULATION_TINY,
        FREEZING_TEMP = 5,
        OVERHEAT_TEMP = 75,
    }
}

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.ILASKUS = {
	"flint",
	"flint",
	"twigs",
	"twigs",
}

-- Damage Scaling with Health
TUNING.ILASKUS_DAMAGE = {
    HIGH = {
        THRESHOLD = 0.5,                        -- 50% health for HIGH
        MULTIPLIER = 1.1,                       -- +10% damage for HIGH
    },
    LOW = {
        THRESHOLD = 0.15,                       -- 15% health for LOW
        MULTIPLIER = 1.33,                      -- +33% damage for LOW
    }
}

-- Sanity Penalty with Certain Foods
TUNING.ILASKUS_FOOD = {
    SANITY_PENALTY = 5,

    TYPE = {
        PENALTY = FOODTYPE.VEGGIE,
        EXCEPTION = FOODTYPE.BERRY
    },

    LIST = {
        PENALTY = {
            ratatouille = { sanity = -25 },
            leafymeatburger = { sanity = -5 },
            meatysalad = { sanity = -5 },
        },
        EXCEPTION = {
            -- Veggie group
            corn = true, potato = true, pumpkin = true,
            butterflywings = true, moonbutterflywings = true, kelp_dried = true,
            mashedpotatoes = true, potatotornado = true, potatosouffle = true,
            butterflymuffin = true, pumpkincookie = true, waffles = true,
            -- Fruits group
            cave_banana = true, dragonfruit = true, pomegranate = true, watermelon = true,
            wormlight = true, wormlight_lesser = true, glowberrymousse = true, rock_avocado_fruit_ripe = true,
            jammypreserves = true, fruitmedley = true, trailmix = true, bananajuice = true, vegstinger = true, bananapop = true,
            dragonpie = true, watermelonicle = true, figatoni = true, freshfruitcrepes = true, gazpacho = true, nightmarepie = true,
            -- Candies
            winter_food4 = true, winter_food6 = true, winter_food7 = true, carnivalfood_corntea = true,
            halloweencandy_3 = true, halloweencandy_6 = true, halloweencandy_7 = true, halloweencandy_14 = true,
        }
    }
}

-- Second Chance Perk
TUNING.ILASKUS_SECOND_CHANCE = {
    THRESHOLD = 100,
    COOLDOWN = TUNING.TOTAL_DAY_TIME,    -- 8 minutes (480)
    IFRAME = 3,
    HEAL = 25,
}

TUNING.ILASKUS_WEAPON = {
    -- Weapon: Pointstead   
    POINTSTEAD = {
        DAMAGE = 42.5,
        DURABILITY = GetModConfigData("POINTSTEAD_DURAB") and 0 or 200,

        RECIPE = {
            Ingredient("flint", 4),
            Ingredient("livinglog", 4),
            Ingredient("goldnugget", 1)
        },
        TECH = TECH.SCIENCE_TWO,
    },
    -- Weapon: Dreadstead   
    DREADSTEAD = {
        DAMAGE = 59.5,
        DURABILITY = 200,

        SANITY_DRAIN = (20/3) / (TUNING.SEG_TIME * 2),              -- 6.6 / min
        SANITY_DRAIN_REPAIR = 15 / (TUNING.SEG_TIME * 2),           -- 15 / min
        SETBONUS_SANITY_DRAIN_REPAIR = 10 / (TUNING.SEG_TIME * 2),  -- 10 / min

        RECIPE = {
            Ingredient("dreadstone", 4),
            Ingredient("horrorfuel", 2),
            Ingredient("pointstead", 1)
        },
        TECH = TECH.MAGIC_THREE,        -- Shadow Manipulator
    },
    -- Weapon: Voidstead
    VOIDSTEAD = {
        DAMAGE = 42.5,
        PLANAR_DAMAGE = 15,
        DURABILITY = 300,

        DEBUFF_STRENGTH = 0.2,
        DEBUFF_DURATION = 3,

        SETBONUS_PLANAR_DAMAGE = 15,

        TALK_INTERVAL = {
            onhand = {
                INITIAL = 5,
                MIN = 30,
                MAX = 120,
            },
            ground = {
                MIN = 10,
                MAX = 25,
            }
        },

        RECIPE = {
            Ingredient("voidcloth", 4),
            Ingredient("horrorfuel", 4),
            Ingredient("pointstead", 1)
        },
    },
    -- Weapon: Brightstead
    BRIGHTSTEAD = {
        DAMAGE = 42.5,
        PLANAR_DAMAGE = 20,
        DURABILITY = 300,

        DEBUFF_STRENGTH = 0.2,
        DEBUFF_DURATION = 3,

        SETBONUS_PLANAR_DAMAGE = 15,

        RECIPE = {
            Ingredient("purebrilliance", 4),
            Ingredient("lunarplant_husk", 4),
            Ingredient("pointstead", 1)
        },
    },
    -- Weapon: Glassknife Physical
    GLASSKNIFE = {
        DAMAGE = 350,
        USE = 1,
        
        RECIPE = {
            Ingredient("moonglass", 12)
        },
    },
    -- Weapon: Glassknife Planar
    GLASSKNIFE_PLANAR = {
        PLANAR_DAMAGE = 300,
        USE = 1,
        
        RECIPE = {
            Ingredient("moonglass_charged", 12)
        },
    },
}

-- Special Beefalo
TUNING.ILASKUS_BEEFALO = {
    NAME = "boof",
    BUCK_TIME = 180,
    DOMESTICATION_MOD = GetModConfigData("BEEFALO_TAME_SPEED") and 1.3 or nil
}

-- Forge Stuffs
TUNING.ILASKUS_FORGE = {
    HEALTH = 150,
    WEAPON_NOACCESS = {"books","staves","darts", "healers"},     -- Go change in String by yourself if you change these
    SECOND_CHANCE = {
        THRESHOLD = 0.8,
        COOLDOWN = 30,
        IFRAME = 3,
        HEAL = 25,
    },
}

TUNING.LAVAARENA_SURVIVOR_DIFFICULTY.ILASKUS = 2
TUNING.LAVAARENA_STARTING_HEALTH.ILASKUS = TUNING.ILASKUS_FORGE.HEALTH

TUNING.GAMEMODE_STARTING_ITEMS.LAVAARENA.ILASKUS = {
    "forginghammer",
    "forge_woodarmor"
}

TUNING.ILASKUS_WEAPON_FORGE = {
    LAVAARENA_POINTSTEAD = {
        DAMAGE       = 25,
		ALT_DAMAGE  = 25 * 2,
		ALT_DIST    = 6.5,
		ALT_WIDTH   = 2,-- TODO 3.25 was old value, why? 2 seems to fit better, but might be a little too big, 1.5 would make ALT_RANGE 8 hmmm
		ALT_RANGE   = 6.5 + 2, -- ALT_DIST + ALT_WIDTH
		ALT_STIMULI = "explosive",
        COOLDOWN 	 = 18,
        DAMAGE_TYPE  = 1, -- Physical
        ITEM_TYPE    = "melees",
        ENTITY_TYPE  = "WEAPONS",
        ATTACK_RANGE = 5,
        HIT_RANGE    = 10,
        HIT_WEIGHT   = 0.5,
        WEIGHT       = 3,
        RET = {
			PREFAB       = "reticuleline",
			PING_PREFAB  = "reticulelineping",
			TYPE         = "directional",
			LENGTH       = 6.5,
			ALWAYS_VALID = false,
        },
    }
}

-- ================ Finishing Up Before Adding Mod Character ====================
-- Custom speech strings
STRINGS.CHARACTERS.ILASKUS = require "speech_ilaskus"
modimport("scripts/languages/en")

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("ilaskus", "MALE", skin_modes)

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

------------------------------------------------------------------------------------

-- ================ Injecting Temperature Components ====================

AddComponentPostInit('temperature', function(self)
    -- if not GLOBAL.TheWorld.ismastersim then
    --     return
    -- end

    local temperature = self
    temperature.freezingtemp = 0

    temperature.SetTemperature = function(self, value)
        local last = self.current
        self.current = value

        if (self.current < self.freezingtemp) ~= (last < self.freezingtemp) then
            self.inst:PushEvent(self.current < self.freezingtemp and "startfreezing" or "stopfreezing")
        end

        if (self.current > self.overheattemp) ~= (last > self.overheattemp) then
            self.inst:PushEvent(self.current > self.overheattemp and "startoverheating" or "stopoverheating")
        end

        self.inst:PushEvent("temperaturedelta", { last = last, new = self.current })
    end

    temperature.IsFreezing = function(self)
        return self.current < self.freezingtemp
    end

    local old_OnUpdate = temperature.OnUpdate
    temperature.OnUpdate = function(self, dt, applyhealthdelta)
        old_OnUpdate(self, dt, applyhealthdelta)
        if applyhealthdelta ~= false and self.inst.components.health ~= nil then
            if self.current >= 0 and self.current < self.freezingtemp then
                self.inst.components.health:DoDelta(-self.hurtrate * dt, true, "cold")
            end
        end
    end
end)

-- Fix temperature overlay behavior to make more sense
modimport("scripts/widget/heatover")
modimport("scripts/widget/iceover")

------------------------------------------------------------------------------------

-- ================ Injecting Beefalo ====================

--[[ Thanks to simplex for this. https://forums.kleientertainment.com/forums/topic/35589-removing-task-in-listenforevent/?do=findComment&comment=464298]]
local function GetLocalFnListenerEvent(inst, eventname, prefabfile)
    if inst.event_listening[eventname] and inst.event_listening[eventname][inst] then
        for _,fn in pairs(inst.event_listening[eventname][inst]) do
            local info = debug.getinfo(fn, "S")
            if info and info.source then
                if info.source:match("prefabs[/\\]" .. prefabfile .. ".lua$") then
                    return fn
                end
            end
        end
    end
    return nil
end

-- ==================== Domesticatable Component ====================

AddComponentPostInit('domesticatable', function(self)
    -- if not GLOBAL.TheWorld.ismastersim then
    --     return
    -- end
    if GetModConfigData("BEEFALO_TAME_SPEED") == nil then
        return
    end
    local domesticatable = self

    -------------------------------------------------------------------------------------------
    -- Got no choice but having to replicate all of them here. These are locals that I can't
    -- really wrap or do any workaround, and will probably break in future game updates

    local function CalculateLoss(currenttime, lastgaintime)
        -- you don't lose full domestication right away, only after ignoring the critter for a while
        local delta = currenttime-lastgaintime
        local ratio = math.min(delta/(TUNING.BEEFALO_DOMESTICATION_MAX_LOSS_DAYS*TUNING.TOTAL_DAY_TIME), 1.0)
        return TUNING.BEEFALO_DOMESTICATION_LOSE_DOMESTICATION * ratio
    end

    -- This is the actual function that I need to tweak
    local function ApplyDomesticationSkillMult(inst, delta, doer)
        doer = doer or (inst.components.rideable ~= nil and inst.components.rideable:GetRider()) or nil

        if doer ~= nil and doer.components.skilltreeupdater ~= nil and doer.components.skilltreeupdater:HasSkillTag("beefalodomestication") then
            return delta * TUNING.SKILLS.WATHGRITHR.WATHGRITHRHAT_BEEFALO_DOMESTICATION_MOD
        end
        if doer ~= nil and doer:HasTag("OtherworldlyDog") and inst:HasTag("OtherworldlyBoof") then
            print("BOOF domestication")
            return delta * TUNING.ILASKUS_BEEFALO.DOMESTICATION_MOD
        end

        return delta
    end

    local function DoDeltaObedience(self, delta)
        local old = self.obedience
        self.obedience = math.max(math.min(self.obedience + delta, self.maxobedience), self.minobedience)
        if old ~= self.obedience then
            self.inst:PushEvent("obediencedelta", { old = old, new = self.obedience })
            return true
        end
    end

    local function DoDeltaDomestication(self, delta, doer)
        if delta > 0 then
            delta = ApplyDomesticationSkillMult(self.inst, delta, doer)
        end

        local old = self.domestication

        self.domestication = math.max(math.min(self.domestication + delta, 1), 0)
        self.maxobedience = 1

        if old ~= self.domestication then
            self.inst:PushEvent("domesticationdelta", { old = old, new = self.domestication })
            return true
        end
    end

    local DECAY_TASK_PERIOD = 10
    local OBEDIENCE_DECAY_RATE = -1/(TUNING.TOTAL_DAY_TIME * 2)
    local FEEDBACK_DECAY_RATE = -1/(TUNING.TOTAL_DAY_TIME * 45)

    local function NewUpdateDomestication(inst, self)
        if not self.domesticationdecaypaused then
            for k,v in pairs(self.tendencies) do
                self.tendencies[k] = math.max(v + FEEDBACK_DECAY_RATE * DECAY_TASK_PERIOD, 0)
            end
        end

        -- obedience still decays even if domestication decay is paused
        DoDeltaObedience(self, OBEDIENCE_DECAY_RATE * DECAY_TASK_PERIOD)

        if self.domestication_triggerfn(inst) then
            self.lastdomesticationgain = GLOBAL.GetTime()
            DoDeltaDomestication(self, TUNING.BEEFALO_DOMESTICATION_GAIN_DOMESTICATION * DECAY_TASK_PERIOD)
        elseif self.domesticationdecaypaused then
            self.lastdomesticationgain = self.lastdomesticationgain + DECAY_TASK_PERIOD
        else
            DoDeltaDomestication(self, CalculateLoss(GLOBAL.GetTime(), self.lastdomesticationgain))
        end

        self:CheckForChanges()
        self:Validate()
    end
    ------------------------------------------------------------------------------------

    -- Now to edit the function that I can

    domesticatable.CheckAndStartTask = function(self)
        if self:Validate() and self.decaytask == nil then
            self.decaytask = self.inst:DoPeriodicTask(DECAY_TASK_PERIOD, NewUpdateDomestication, 0, self)
        end
    end
end)

-- ==================== Beefalo Prefab ====================

AddPrefabPostInit("beefalo", function(self)
    if not GLOBAL.TheWorld.ismastersim then
        return
    end
    local inst = self

    -- Add otherworldly boof / Prevent horny
    local old_OnNamedByWriteable = inst.components.writeable.onwritten
    local function OnNamedByWriteableNew(inst, new_name, writer)
        if inst.components.named ~= nil and writer ~= nil and writer.userid and writer:HasTag("OtherworldlyDog") and new_name == TUNING.ILASKUS_BEEFALO.NAME then
            inst:AddTag("OtherworldlyBoof")
            inst.components.herdmember:Enable(false)
            print("Boof")
        end
        old_OnNamedByWriteable(inst, new_name, writer)
    end
    inst.components.writeable:SetOnWrittenFn(OnNamedByWriteableNew)

    -- Remove otherworldly boof / Enable herdmember
    local ClearOtherworldlyBoof = function ()
        if inst:HasTag("OtherworldlyBoof") then
            inst:RemoveTag("OtherworldlyBoof")
            inst.components.herdmember:Enable(true)
            print("Goodbye Boof")
        end
    end
    inst:ListenForEvent("stopfollowing", ClearOtherworldlyBoof)

    -- Save/Load otherworldly boof
    local originalOnSave = inst.OnSave
    inst.OnSave = function(inst, data)
        data.otherworldly = inst:HasTag("OtherworldlyBoof")
        originalOnSave(inst, data)
    end

    local originalOnLoad = inst.OnLoad
    inst.OnLoad = function(inst, data)
        if data ~= nil and data.otherworldly then
            print("LOAD BOOOF!!")
            inst:AddTag("OtherworldlyBoof")
            inst.components.herdmember:Enable(false)
        end
        originalOnLoad(inst, data)
    end

    ------------------------------------------------------------------------------------

    -- Fix buck delay calculation
    local function CalculateBuckDelayBoof(inst)
        local beardmult =
            (inst.components.beard ~= nil and inst.components.beard.bits == 0)
            and TUNING.BEEFALO_BUCK_TIME_NUDE_MULT
            or 1

        local basedelay = TUNING.ILASKUS_BEEFALO.BUCK_TIME

        -- print(basedelay * beardmult)
        return basedelay * beardmult
    end

    local function OnBuckTime(inst)
        --V2C: reschedule because :Buck() is not guaranteed!
        inst._bucktask = inst:DoTaskInTime(1 + math.random(), OnBuckTime)
        inst.components.rideable:Buck()
    end

    -- Try overriding original OnRiderChanged function
    local old_OnRiderChanged = GetLocalFnListenerEvent(inst, "riderchanged", "beefalo")
    local function OnRiderChanged(inst, data)
        if old_OnRiderChanged ~= nil then
            old_OnRiderChanged(inst, data)
        end

        if inst._bucktask ~= nil and inst:HasTag("OtherworldlyBoof") and data.newrider and data.newrider:HasTag("OtherworldlyDog") then
            inst._bucktask:Cancel()
            inst._bucktask = inst:DoTaskInTime(CalculateBuckDelayBoof(inst), OnBuckTime)
        end
    end
    inst:ListenForEvent("riderchanged", OnRiderChanged)
end)


------------------------------------------------------------------------------------

-- ================ Building recipes for weapons ====================
-- nounlock mean you would always need to be next to the crafting station to craft it

AddCharacterRecipe(
    "pointstead",
    TUNING.ILASKUS_WEAPON.POINTSTEAD.RECIPE,
    TUNING.ILASKUS_WEAPON.POINTSTEAD.TECH,
    {builder_tag = "OtherworldlyDog", product = "pointstead", --[[atlas = "images/inventoryimages/ibcharrose.xml", image = "ibcharrose.tex"]]},
    {"CHARACTER","WEAPONS"}
)

AddCharacterRecipe(
    "dreadstead",
    TUNING.ILASKUS_WEAPON.DREADSTEAD.RECIPE,
    TUNING.ILASKUS_WEAPON.DREADSTEAD.TECH,
    {builder_tag = "OtherworldlyDog", product = "dreadstead", --[[atlas = "images/inventoryimages/ibcharrose.xml", image = "ibcharrose.tex"]]},
    {"CHARACTER","WEAPONS"}
)

AddCharacterRecipe(
    "brightstead",
    TUNING.ILASKUS_WEAPON.BRIGHTSTEAD.RECIPE,
    TECH.LUNARFORGING_TWO,
    {builder_tag = "OtherworldlyDog", product = "brightstead", nounlock=true, station_tag = "lunar_forge"--[[atlas = "images/inventoryimages/ibcharrose.xml", image = "ibcharrose.tex"]]},
    {"CHARACTER","CRAFTING_STATION","WEAPONS"}
)

AddCharacterRecipe(
    "voidstead",
    TUNING.ILASKUS_WEAPON.VOIDSTEAD.RECIPE,
    TECH.SHADOWFORGING_TWO,
    {builder_tag = "OtherworldlyDog", product = "voidstead", nounlock=true, station_tag = "shadow_forge"--[[atlas = "images/inventoryimages/ibcharrose.xml", image = "ibcharrose.tex"]]},
    {"CHARACTER","CRAFTING_STATION","WEAPONS"}
)

AddCharacterRecipe(
    "glassknife",
    TUNING.ILASKUS_WEAPON.GLASSKNIFE.RECIPE,
    TECH.CELESTIAL_THREE,
    {builder_tag = "OtherworldlyDog", product = "glassknife", nounlock=true, --[[atlas = "images/inventoryimages/ibcharrose.xml", image = "ibcharrose.tex"]]},
    {"CHARACTER","CRAFTING_STATION","WEAPONS"}
)

AddCharacterRecipe(
    "glassknife_planar",
    TUNING.ILASKUS_WEAPON.GLASSKNIFE_PLANAR.RECIPE,
    TECH.CELESTIAL_THREE,
    {builder_tag = "OtherworldlyDog", product = "glassknife_planar", nounlock=true, --[[atlas = "images/inventoryimages/ibcharrose.xml", image = "ibcharrose.tex"]]},
    {"CHARACTER","CRAFTING_STATION","WEAPONS"}
)

------------------------------------------------------------------------------------

-- ================ Stategraph for Second Chance ====================
-- These shouldn't break the game, unless they change how these components work
local function ClearStatusAilments(inst)
    if inst.components.freezable ~= nil and inst.components.freezable:IsFrozen() then
        inst.components.freezable:Unfreeze()
    end
    if inst.components.pinnable ~= nil and inst.components.pinnable:IsStuck() then
        inst.components.pinnable:Unstick()
    end
end

local function ForceStopHeavyLifting(inst)
    if inst.components.inventory:IsHeavyLifting() then
        inst.components.inventory:DropItem(
            inst.components.inventory:Unequip(GLOBAL.EQUIPSLOTS.BODY),
            true,
            true
        )
    end
end

local function DoMountSound(inst, mount, sound, ispredicted)
    if mount ~= nil and mount.sounds ~= nil then
        inst.SoundEmitter:PlaySound(mount.sounds[sound], nil, nil, ispredicted)
    end
end

AddStategraphEvent("wilson", EventHandler("start_second_chance", function(inst, data)
    inst.sg:GoToState("second_chance_death_pre")
end)
)

AddStategraphState("wilson",
    State{
        name = "second_chance_death_pre",
        tags = { "busy", "pausepredict", "nomorph", "nodangle" , "noattack"},

        onenter = function(inst)
            ClearStatusAilments(inst)
            ForceStopHeavyLifting(inst)

            inst.components.locomotor:Stop()
            inst.components.locomotor:Clear()
            inst:ClearBufferedAction()

            if inst.components.rider:IsRiding() then
                DoMountSound(inst, inst.components.rider:GetMount(), "yell")
                inst.AnimState:PlayAnimation("fall_off")
                inst.sg:AddStateTag("dismounting")
            else
                inst.SoundEmitter:PlaySound("dontstarve/wilson/death") -- Could use custom sound
                if inst.deathsoundoverride ~= nil then
                    inst.SoundEmitter:PlaySound(inst.deathsoundoverride)
                else
                    inst.SoundEmitter:PlaySound((inst.talker_path_override or "dontstarve/characters/")..(inst.soundsname or inst.prefab).."/death_voice")
                end

                -- inst.AnimState:PlayAnimation("death2")
                inst.AnimState:PlayAnimation(inst.deathanimoverride or "death2")

                inst.AnimState:Hide("swap_arm_carry")
            end

            inst.components.burnable:Extinguish()

            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:RemotePausePrediction()
                inst.components.playercontroller:Enable(false)
            end

            --Don't process other queued events if we died this frame
            inst.sg:ClearBufferedEvents()
        end,

        -- onexit = function(inst)
        --     print("Exit with nothing")
        -- end,

        events =
        {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
                    if inst.sg:HasStateTag("dismounting") then
                        print("dismounting")
                        inst.sg:RemoveStateTag("dismounting")
                        inst.components.rider:ActualDismount()

                        inst.SoundEmitter:PlaySound("dontstarve/wilson/death")

                        if inst.deathsoundoverride ~= nil then
                            inst.SoundEmitter:PlaySound(FunctionOrValue(inst.deathsoundoverride, inst))
                        else
                            inst.SoundEmitter:PlaySound((inst.talker_path_override or "dontstarve/characters/")..(inst.soundsname or inst.prefab).."/death_voice")
                        end

                        inst.AnimState:PlayAnimation("death2")

                        inst.AnimState:Hide("swap_arm_carry")

                    else
                        inst.sg:GoToState("second_chance_death")
                    end
                end
            end),
        },
    }
)

AddStategraphState("wilson",
    State{
        name = "second_chance_death",
        tags = { "busy", "pausepredict", "nomorph", "nodangle" , "noattack"},

        onenter = function(inst, fromload)
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:Enable(false)
            end

            inst:ShowActions(false)
            inst.components.health:SetInvincible(true)

            inst.AnimState:PlayAnimation("death2_idle")
            inst:DoTaskInTime(3, function()
                inst.sg:GoToState("second_chance_death_pst")
            end)
        end,

        onexit = function(inst)
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:Enable(true)
            end
            inst:ShowActions(true)
        end,
    }
)

AddStategraphState("wilson",
    State{
        name = "second_chance_death_pst",
        tags = { "busy", "noattack", "nopredict", "nomorph" },

        onenter = function(inst)
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:RemotePausePrediction()
                inst.components.playercontroller:Enable(false)
            end

            inst.AnimState:PlayAnimation("death2_idle")

            inst.sg.statemem.physicsrestored = true
            inst.Physics:ClearCollisionMask()
            inst.Physics:CollidesWith(COLLISION.WORLD)
            inst.Physics:CollidesWith(COLLISION.OBSTACLES)
            inst.Physics:CollidesWith(COLLISION.SMALLOBSTACLES)
            inst.Physics:CollidesWith(COLLISION.CHARACTERS)
            inst.Physics:CollidesWith(COLLISION.GIANTS)

            inst.AnimState:PlayAnimation("corpse_revive")
            inst:ShowActions(false)
            inst:SetCameraDistance(14)

            inst.sg.statemem.revivefx1 = GLOBAL.SpawnPrefab("fx_book_moon")
            inst.sg.statemem.revivefx1.entity:SetParent(inst.entity)
            inst.sg.statemem.revivefx1.Transform:SetScale(0.8, 0.8, 0.8)

            inst.sg.statemem.revivefx2 = GLOBAL.SpawnPrefab("superjump_fx")
            inst.sg.statemem.revivefx2.entity:SetParent(inst.entity)
            inst.sg.statemem.revivefx2.Transform:SetScale(0.8, 0.8, 0.8)
            inst.SoundEmitter:PlaySound("dontstarve/common/revive")

        end,

        events =
        {
            EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() and inst.AnimState:IsCurrentAnimation("corpse_revive") then
                    inst.components.talker:Say(STRINGS.ILASKUS_QUOTES.SECOND_CHANCE[math.random(#STRINGS.ILASKUS_QUOTES.SECOND_CHANCE)])
                    inst.sg:GoToState("idle")
                end
            end),
        },

        onexit = function(inst)
            inst:ShowActions(true)
            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:Enable(true)
            end


            if not inst.sg.statemem.physicsrestored then
                inst.Physics:ClearCollisionMask()
                inst.Physics:CollidesWith(COLLISION.WORLD)
                inst.Physics:CollidesWith(COLLISION.OBSTACLES)
                inst.Physics:CollidesWith(COLLISION.SMALLOBSTACLES)
                inst.Physics:CollidesWith(COLLISION.CHARACTERS)
                inst.Physics:CollidesWith(COLLISION.GIANTS)
            end

            local thresholdTuning = TUNING.ILASKUS_SECOND_CHANCE.THRESHOLD
            local cooldown = TUNING.ILASKUS_SECOND_CHANCE.COOLDOWN
            local iframe = TUNING.ILASKUS_SECOND_CHANCE.IFRAME
            local health = TUNING.ILASKUS_STAT.HEALTH

            local threshold
            if thresholdTuning <= 1 then
                -- Percent Based
                threshold = inst.components.health:GetPercent() >= thresholdTuning
            else
                -- Amount Based
                threshold = 1 + inst.components.health:GetPercent() >= (health + thresholdTuning) / health
            end

            inst:DoTaskInTime(iframe, function()
                inst.components.health:SetInvincible(false)
                inst.components.timer:StartTimer("secondchance", cooldown, {isPause = threshold and false or true})
                inst._onSecondChanceCooldown = true
                if inst.sg.statemem.revivefx1 ~= nil then inst.sg.statemem.revivefx1:Remove() end
                if inst.sg.statemem.revivefx2 ~= nil then inst.sg.statemem.revivefx2:Remove() end
                inst.sg.statemem.revivefx3 = GLOBAL.SpawnPrefab("archive_lockbox_player_fx")
                inst.sg.statemem.revivefx3.entity:SetParent(inst.entity)
                inst.sg.statemem.revivefx3.Transform:SetScale(0.8, 0.8, 0.8)
                inst.sg.statemem.revivefx3:ListenForEvent("animover", inst.sg.statemem.revivefx3.Remove)
            end)
        end,
    }
)