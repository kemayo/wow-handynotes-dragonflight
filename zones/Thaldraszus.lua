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
    [38406800] = { -- The Great Shellkhan
        criteria=56155,
        quest=72121,
        npc=191305,
        loot={},
        vignette=5439,
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
})

-- Dragon Glyphs
local glyph = {
    achievement=16578,
    atlas="Warfront-AllianceHero-Silver",
    minimap=true,
    requires=ns.DRAGONRIDING,
    group="glyphs",
}
ns.RegisterPoints(MAPID, {
    [66018234] = {criteria=55812}, -- Temporal Conflux
    [46097388] = {criteria=55813}, -- Stormshroud Peak
    [35568556] = {criteria=55814}, -- South Hold Gate
    [41265827] = {criteria=55815}, -- Valdrakken
    [49854023] = {criteria=55816}, -- Algeth'era
    [61575661] = {criteria=55817}, -- Tyrhold
    [62414046] = {criteria=55818}, -- Algeth'ar Academy
    [67091176] = {criteria=55819}, -- Veiled Ossuary
    [72405171] = {criteria=55820}, -- Vault of the Incarnates
    [72966914] = {criteria=55821}, -- Thaldraszus Apex
    [52656743] = {criteria=56159}, -- Gelikyr Overlook
    [55767233] = {criteria=56160}, -- Passage of Time
}, glyph)
ns.RegisterPoints(ns.VALDRAKKEN, {
    [59183784] = {criteria=55815}, -- Valdrakken
}, glyph)
