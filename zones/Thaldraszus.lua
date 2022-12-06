local myname, ns = ...

local MAPID = ns.THALDRASZUS -- Thaldraszus

--[[ mining walls
40857586 ?
--]]

ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16301/treasures-of-thaldraszus
    [33957694] = { -- Cracked Hourglass
        criteria=54810,
        quest=70607,
        loot={},
        active={ns.conditions.QuestComplete(70537), ns.conditions.Item(199068), any=true}, -- Sorrowful Letter
        note="Find {item:199068} in other treasures",
    },
    [58158005] = { -- Sandy Wooden Duck
        criteria=54811,
        quest=70608,
        loot={
            200827, -- Weathered Sculpture
        },
        active={ns.conditions.QuestComplete(70538), ns.conditions.Item(199069), any=true}, -- Yennu's Map
        note="Find {item:199069} nearby",
        related={
            [54937543] = {quest=70538,loot={{199069,quest=70538},},atlas="poi-islands-table",active=false,}, -- Yennu's Map
        },
        vignette=5371,
    },
    [52607673] = { -- Amber Gem Cluster
        criteria=54812,
        quest=70408,
        loot={},
        hide_before=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 21),
        active={ns.conditions.QuestComplete(70407), ns.conditions.Item(198852), any=true}, -- Bear Termination Orders
        note="Find {item:198852} in other treasures",
    },
    [60234160] = { -- Elegant Canvas Brush
        criteria=54813,
        quest=70609,
        loot={
            203206, -- Elegant Canvas Brush (sells for 2112g)
        },
    },
    [64851650] = { -- Surveyor's Magnifying Glass
        criteria=54814,
        quest=70610,
        loot={
            193036, -- Left-Handed Magnifying Glass (inscription accessory, boe...)
        },
    },
    [49456291] = { -- Acorn Harvester
        criteria=54815,
        quest=70611,
        loot={
            {193066, pet=3275}, -- Chestnut
        },
        note="Give an acorn to the squirrel; you may have to /reloadui after picking up the acorn before you can give it",
    },
}, {
    achievement=16301, -- Treasures
    minimap=true,
    hide_before=ns.conditions.Level(64),
})

-- Rares
ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16679/adventurer-of-thaldraszus
    [51534871] = { -- Razk'vex the Untamed
        criteria=56133,
        quest=69853,
        npc=193143,
        loot={
            200131, -- Reclaimed Survivalist's Dagger
        },
        note="Runs around, you can jump on it",
        route={53104363, 53124230, 51624534, 50304953, 51534871, 52714652, loop=true},
        minimap=true,
        vignette=5180,
    },
    [57968158] = { -- Innumerable Ruination
        criteria=56135,
        quest=nil,
        npc=193126,
        loot={
            200760, -- Unstable Arcane Cell
        },
    },
    [31737253] = { -- Blightpaw the Depraved
        -- overlaps a bit with plains @ 90204020
        criteria=56136,
        quest=73869,
        npc=193128,
        loot={
            {200178, toy=true}, -- Infected Ichor
            {197150, quest=69351}, -- Highland Drake: Spiked Club Tail
            {196986, quest=69186}, -- Cliffside Wylderdrake: Black Hair
            {196973, quest=69173}, -- Cliffside Wylderdrake: Dual Horned Chin
            {196982, quest=69182}, -- Cliffside Wylderdrake: Ears
            200266, -- Gnollish Chewtoy Launcher
            200127, -- Gold-Alloy Blade
            200432, -- Rotguard Cowl
        },
        note="Talk to {npc:193222:Archaeologist Koranir} to spawn. Also spawns with {npc:193231:Ancient Tundrafur}. Casts a curse as well.",
    },
    [38107820] = { -- Pleasant Alpha
        criteria=56137,
        quest=73889, -- 72806 on criteria?
        npc=193130,
        loot={
            {197111, quest=69312}, -- Highland Drake: Maned Head
            200174, -- Bonesigil Shoulderguards
            200186, -- Amberquill Shroud
        },
        vignette=5479,
    },
    [53424101] = { -- Goremaul the Gluttonous
        criteria=56138,
        quest=nil,
        npc=193125,
        loot={
            200436, -- Gorestained Hauberk
        },
    },
    [59806100] = { -- Phenran
        criteria=56140,
        quest=69976,
        npc=193688,
        loot={
            200146, -- Phenran's Discordant Smasher
        },
        vignette=5248,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [52805920] = { -- Matriarch Remalla
        criteria=56141,
        quest=69883,
        npc=193246,
        loot={
            200257, -- Decay Infused Branch
        },
        vignette=5204,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [57208420] = { -- Phleep
        criteria=56142,
        quest=69866,
        npc=193210,
        loot={
            {197130, quest=69331}, -- Highland Drake: Stag Horns
            {200148, toy=true,}, -- A Collection Of Me
            200202, -- Tomorrow's Chains
        },
        vignette=5192,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Tempestrian
        criteria=56144,
        quest=69886,
        npc=193258,
        loot={},
        vignette=5207,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [35027001] = { -- Treasure-Mad Trambladd
        criteria=56146,
        quest=70947,
        npc=193146,
        loot={},
        vignette=5431,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [47805120] = { -- Eldoren the Reborn
        criteria=56147,
        quest=69875,
        npc=193234,
        loot={
            200284, -- Phoenix Feather Pendant
        },
        vignette=5198,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Riverwalker Tamopo
        criteria=56148,
        quest=69880,
        npc=193240,
        loot={},
        vignette=5201,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [59607012] = { -- Broodweaver Araznae
        criteria=56149,
        quest=69868,
        npc=193220,
        loot={},
        vignette=5193,
        -- hide_before=ns.MAXLEVEL, -- TODO
        -- path=59416977, -- too close to need
    },
    [37387792] = { -- Sandana the Tempest
        criteria=56150,
        quest=69859,
        npc=193176,
        loot={},
        path=38517642,
        vignette=5185,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [50005180] = { -- Rokmur
        criteria=56151,
        quest=69966,
        npc=193666,
        loot={},
        vignette=5238,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [47914980] = { -- Woolfang
        criteria=56152,
        quest=69850,
        npc=193161,
        loot={},
        note="Pet {npc:193156:Wooly Lamb}",
        vignette=5177,
    },
    [46287298] = { -- The Weeping Vilomah
        criteria=56153,
        quest=74086, -- 65365
        npc=183984,
        loot={
            200214, -- Grasp of the Weeping Widow
        },
        note="In cave, talk to {npc:193206:Boomhooch the Lost} to summon",
        path=47537168,
        vignette=4958,
    },
    [52806760] = { -- Craggravated Elemental
        criteria=56154,
        quest=69964,
        npc=193663,
        loot={
            200298, -- Stoneshaped Greatbelt
        },
        vignette=5237,
    },
    [38436824] = { -- The Great Shellkhan
        criteria=56155,
        quest=72121,
        npc=191305,
        loot={
            {200999, toy=true,}, -- The Super Shellkhan Gang
        },
        note="Bring a {item:200949:Case of Fresh Gleamfish} from 45.6, 54.8 in Azure Span",
        vignette=5439,
        route={38436824, 32009999, highlightOnly=true},
    },
    [44806900] = { -- Corrupted Proto-Dragon
        criteria=56156,
        quest=74060, --69962
        npc=193658,
        loot={
            200166, -- Corrupted Drake Horn
        },
        vignette=5235,
        note="Interact with the egg inside the cave",
    },
    [62208180] = { -- Lord Epochbrgl
        criteria=56157,
        quest=69882,
        npc=193241,
        loot={
            200185, -- Grips of the Everflowing Ocean
        },
        vignette=5203,
    },
    [59545917] = { -- Ancient Protector
        criteria=56158,
        quest=74055, -- 69963
        npc=193664,
        loot={},
        vignette=5236,
    },
}, {
    achievement=16679, -- Adventurer
})
ns.RegisterPoints(MAPID, {
    [37538339] = { -- Private Shikzar. -- despawns without any loot, asks you to help comrades at the South Hold Gate... -- something to remove his debuff first, maybe?
        quest=70986,
        npc=193127,
        loot={},
        vignette=5406,
        note = "Ask him what's wrong. He attacks after.",
    },
    [36808557] = { -- Lookout Mordren
        quest=72813, -- 69967 on vignette?
        npc=193668,
        loot={
            -- 200122, -- Temporal Spyglass
            200182, -- Riveted Drape
            200292, -- Cragforge Pauldrons
        },
        vignette=5239,
    },
    [37777413] = { -- Acrosoth
        quest=72834, -- 72114
        npc=193243,
        loot={
            {196992, quest=69192}, -- Cliffside Wylderdrake: Heavy Horns
            {197403, quest=69604}, -- Renewed Proto-Drake: Club Tail
            200228, -- Protoscale Pauldrons
        },
        note="Flying nearby",
        route={37777413, 36307560, 36507860, 38407940, 40107780, 39507500, loop=true},
        minimap=true,
        vignette=5436,
    },
    [55797732] = { -- Henlare
        quest=69873, -- 72814
        npc=193229,
        loot={
            200880, -- Wind-Sealet Mana Capsule
        },
        vignette=5196,
    },
    [36737280] = { -- Liskron the Dazzling
        quest=72116, -- 72842
        npc=193273,
        loot={
            {196976, quest=69176}, -- Cliffside Wylderdrake: Head Mane
            200193, -- Manafrond Sandals
            200174, -- Bonesigil Shoulderguards
        },
        vignette=5437,
    },
})
