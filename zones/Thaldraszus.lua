local myname, ns = ...

local MAPID = ns.THALDRASZUS -- Thaldraszus

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
        loot={},
        active={ns.conditions.QuestComplete(70538), ns.conditions.Item(199069), any=true}, -- Yennu's Map
        note="Find {item:199069} nearby",
        related={
            [54937543] = {quest=70538,loot={{199069,quest=70538},},atlas="poi-workorders",active=false,}, -- Yennu's Map
        },
    },
    --[[
    [] = { -- Amber Gem Cluster
        criteria=54812,
        quest=70408,
        loot={},
        active={ns.conditions.QuestComplete(70407), ns.conditions.Item(198852), any=true}, -- Bear Termination Orders
        note="Find {item:198852} in other treasures",
    },
    --]]
    [60234160] = { -- Elegant Canvas Brush
        criteria=54813,
        quest=70609,
        loot={},
    },
    [64851650] = { -- Surveyor's Magnifying Glass
        criteria=54814,
        quest=70610,
        loot={},
    },
    [64801650] = { -- Acorn Harvester
        criteria=54815,
        quest=70611,
        loot={
            {193066, pet=3275}, -- Chestnut
        },
        note="Give an acorn to the squirrel",
    },
}, {
    achievement=16301, -- Treasures
    minimap=true,
})

-- Rares
ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16679/adventurer-of-thaldraszus
    --[[
    [] = { -- Razk'vex the Untamed
        criteria=56133,
        quest=69853,
        npc=193143,
        loot={},
        vignette=5180,
    },
    --]]
    [57808380] = { -- Innumerable Ruination
        criteria=56135,
        quest=nil,
        npc=193126,
        loot={},
    },
    [31737253] = { -- Blightpaw the Depraved
        -- overlaps a bit with plains @ 90204020
        criteria=56136,
        quest=nil,
        npc=193128,
        loot={},
    },
    --[[
    [] = { -- Pleasant Alpha
        criteria=56137,
        quest=72806,
        npc=193130,
        loot={},
        vignette=5479,
    },
    [] = { -- Goremaul the Gluttonous
        criteria=56138,
        quest=nil,
        npc=193125,
        loot={},
    },
    [] = { -- Phenran
        criteria=56140,
        quest=69976,
        npc=193688,
        loot={},
        vignette=5248,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Matriarch Remalla
        criteria=56141,
        quest=69883,
        npc=193246,
        loot={},
        vignette=5204,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [57208420] = { -- Phleep
        criteria=56142,
        quest=69866,
        npc=193210,
        loot={},
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
    --[[
    [] = { -- Eldoren the Reborn
        criteria=56147,
        quest=69875,
        npc=193234,
        loot={},
        vignette=5198,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
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
    --[[
    [] = { -- Sandana the Tempest
        criteria=56150,
        quest=69859,
        npc=193176,
        loot={},
        vignette=5185,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [50005180] = { -- Rokmur
        criteria=56151,
        quest=69966,
        npc=193666,
        loot={},
        vignette=5238,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Woolfang
        criteria=56152,
        quest=69850,
        npc=193161,
        loot={},
        vignette=5177,
    },
    --]]
    [46287298] = { -- The Weeping Vilomah
        -- TODO: this is the vignette-location, I haven't actually found the route to it yet...
        criteria=56153,
        quest=65365,
        npc=183984,
        loot={},
        vignette=4958,
    },
    [52806760] = { -- Craggravated Elemental
        criteria=56154,
        quest=69964,
        npc=193663,
        loot={},
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
        quest=69962,
        npc=193658,
        loot={},
        vignette=5235,
        note="Interact with the egg inside the cave",
    },
    --[[
    [] = { -- Lord Epochbrgl
        criteria=56157,
        quest=69882,
        npc=193241,
        loot={},
        vignette=5203,
    },
    --]]
    [59545917] = { -- Ancient Protector
        criteria=56158,
        quest=69963,
        npc=193664,
        loot={},
        vignette=5236,
    },
}, {
    achievement=16679, -- Adventurer
})
ns.RegisterPoints(MAPID, {
    [37538339] = { -- Private Shikzar
        quest=70986,
        npc=193127,
        loot={},
        vignette=5406,
    },
    [36808557] = { -- Lookout Mordren
        quest=72813, -- 69967 on vignette?
        npc=193668,
        loot={
            200182, -- Riveted Drape
        },
        vignette=5239,
        -- despawns without any loot, asks you to help comrades at the South Hold Gate... -- something to remove his debuff first, maybe?
    },
    [39207560] = { -- Acrosoth
        quest=72114,
        npc=193243,
        loot={},
        vignette=5436,
        note="Flying nearby",
    },
    [55797732] = { -- Henlare
        quest=72814, -- 69873 on vignette
        npc=193229,
        loot={
            200880, -- Wind-Sealet Mana Capsule
        },
        vignette=5196,
    },
    [36737280] = { -- Liskron the Dazzling
        quest=72842, -- vignette 72116
        npc=193273,
        loot={
            {196976, quest=69176}, -- Cliffside Wylderdrake: Head Mane
        },
        vignette=5437,
    },
})
