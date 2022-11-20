local myname, ns = ...

local MAPID = ns.AZURESPAN -- Azure Span

ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16300/treasures-of-the-azure-span
    [45135939] = { -- Forgotten Jewel Box
        criteria=54804,
        quest=70603,
        loot={},
        active={ns.conditions.QuestComplete(70534), ns.conditions.Item(199065), any=true}, -- Sorrowful Letter
        note="Find {item:199065} in other treasures",
    },
    [53964377] = { -- Gnoll Fiend Flail
        criteria=54805,
        quest=70604,
        loot={},
        active={ns.conditions.QuestComplete(70535), ns.conditions.Item(199066), any=true}, -- Letter of Caution
        note="Find {item:199066} in other treasures",
    },
    --[[
    [] = { -- Sapphire Gem Cluster
        criteria=54806,
        quest=70605,
        loot={},
        active={ns.conditions.QuestComplete(70536), ns.conditions.Item(199067), any=true}, -- Precious Plans
        note="Find {item:199067} in other treasures",
    },
    --]]
    [74905499] = { -- Lost Compass
        criteria=54807,
        quest=70606,
        loot={},
    },
    --[[
    [] = { -- Rubber Fish
        criteria=54808,
        quest=70380,
        loot={},
    },
    --]]
    [26544629] = { -- Pepper Hammer
        criteria=54809,
        quest=70441,
        loot={
            {193834, pet=3321}, -- Blackfeather Nester
        },
        note="Use the Tree Sap on the stick",
    },
}, {
    achievement=16300, -- Treasures
})

-- Rares
ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16678/adventurer-of-the-azure-span
    --[[
    [] = { -- Wilrive
        criteria=56097,
        quest=69948,
        npc=193632,
        loot={},
        vignette=5224,
    },
    --]]
    [27804580] = { -- Dragonhunter Gorund
        criteria=56098,
        quest=66956, -- ?
        npc=193157,
        loot={},
        vignette=5126, -- ?
    },
    [53003560] = { -- Arcane Devourer
        criteria=56099,
        quest=nil,
        npc=194270,
        loot={},
        vignette=5267,
    },
    [40404840] = { -- Mange the Outcast
        criteria=56100,
        quest=nil,
        npc=198004,
        loot={},
    },
    --[[
    [] = { -- Frostpaw
        criteria=56101,
        quest=67148,
        npc=191356,
        loot={},
        vignette=5153,
    },
    [] = { -- Mucka the Raker
        criteria=56102,
        quest=nil,
        npc=193201,
        loot={},
    },
    [] = { -- Brackle
        criteria=56103,
        quest=70165,
        npc=194392,
        loot={},
        vignette=5269,
    },
    --]]
    [64792998] = { -- Frigidpelt Den Mother
        criteria=56104,
        quest=69985,
        npc=193698,
        loot={},
        vignette=5252,
    },
    [60733168] = { -- Azure Pathfinder
        criteria=56105,
        quest=nil,
        npc=194210,
        loot={},
    },
    [73002660] = { -- Beogoka
        criteria=56106,
        quest=nil,
        npc=193116,
        loot={},
        vignette=5189,
    },
    [36803580] = { -- Notfar the Unbearable
        -- also 46603980?
        criteria=56107,
        quest=nil,
        npc=193225,
        loot={},
    },
    --[[
    [] = { -- Blue Terror
        criteria=56108,
        quest=nil,
        npc=193259,
        loot={},
    },
    [] = { -- Mahg the Trampler
        criteria=56109,
        quest=nil,
        npc=190244,
        loot={},
    },
    [] = { -- Skag the Thrower
        criteria=56110,
        quest=72154,
        npc=193149,
        loot={},
        vignette=5440,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [32652915] = { -- Gruffy
        criteria=56111,
        quest=69885,
        npc=193251,
        loot={},
        vignette=5206,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Grumbletrunk
        criteria=56112,
        quest=69892,
        npc=193269,
        loot={},
        vignette=5210,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Rusthide
        criteria=56113,
        quest=nil,
        npc=193693,
        loot={},
    },
    --]]
    [70202520] = { -- Trilvarus Loreweaver
        criteria=56114,
        quest=69861,
        npc=193196,
        loot={},
        vignette=5186,
    },
    [49463607] = { -- Fisherman Tinnak
        criteria=56115,
        quest=70792,
        npc=193691,
        loot={},
        vignette=5475,
    },
    --[[
    [] = { -- Snufflegust
        criteria=56116,
        quest=nil,
        npc=193706,
        loot={},
    },
    --]]
    [33806440] = { -- Skald the Impaler
        criteria=56117,
        quest=nil,
        npc=193708,
        loot={},
    },
    [81447834] = { -- Seereel, the Spring
        criteria=56118,
        quest=nil,
        npc=193710,
        loot={},
    },
    --[[
    [] = { -- Moth'go Deeploom
        criteria=56119,
        quest=nil,
        npc=193735,
        loot={},
    },
    [] = { -- Swog'ranka
        criteria=56120,
        quest=nil,
        npc=193634,
        loot={},
    },
    [] = { -- Swagraal the Swollen
        criteria=56121,
        quest=nil,
        npc=193167,
        loot={},
    },
    --]]
    [13604860] = { -- Bisquius
        criteria=55381,
        quest=nil,
        npc=197557,
        loot={},
    },
    --[[
    [] = { -- Blightfur
        criteria=56122,
        quest=69858,
        npc=193178,
        loot={},
        vignette=5184,
    },
    [] = { -- Archmage Cleary
        criteria=56123,
        quest=nil,
        npc=193255,
        loot={},
    },
    --]]
    [54803420] = { -- Spellwrought Snowman
        criteria=56124,
        quest=69879,
        npc=193238,
        loot={},
        vignette=5200,
    },
    [11093217] = { -- Snarglebone
        criteria=56125,
        quest=nil,
        npc=197344,
        loot={},
        vignette=5413,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [14483105] = { -- Blisterhide
        criteria=56126,
        quest=nil,
        npc=197353,
        loot={},
        vignette=5414,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [14083747] = { -- Gnarls
        criteria=56127,
        quest=nil,
        npc=197354,
        loot={},
        vignette=5415,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [16213364] = { -- High Shaman Rotknuckle
        criteria=56128,
        quest=nil,
        npc=197356,
        loot={},
        vignette=5416,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Ravenous Tundra Bear
        criteria=56129,
        quest=nil,
        npc=197371,
        loot={},
    },
    --]]
    [81207780] = { -- Astray Splasher
        criteria=56130,
        quest=nil,
        npc=197411,
        loot={},
    },
}, {
    achievement=16678, -- Adventurer
})

-- Ley Line in the Span
-- https://www.wowhead.com/achievement=16638/ley-line-in-the-span
ns.RegisterPoints(MAPID, {
    [43786190] = {criteria=55972, quest=72138,}, -- Azure Archives
    [26303631] = {criteria=55973, quest=72139,}, -- Ancient Outlook
    [65402835] = {criteria=55976, quest=72140,}, -- Slyvern Plunge
    [66075111] = {criteria=55974, quest=72136,}, -- Rustpine Den
    [66725958] = {criteria=55975, quest=72141,}, -- Ruins of Karnthar
}, {
    achievement=16638,
    atlas="AzeriteReady",
    note="Interact with the {npc:198260}; sometimes a Miner will need to break a rock wall before you can get in",
})

-- Dragon Glyphs
local glyph = {
    achievement=16577,
    atlas="Warfront-AllianceHero-Silver",
    minimap=true,
    requires=ns.DRAGONRIDING,
    group="glyphs",
}
ns.RegisterPoints(MAPID, {
    [45772569] = {criteria=55802, quest=16064,}, -- Cobalt Assembly
    [39206301] = {criteria=55803, quest=16065,}, -- Azure Archives
    [68656035] = {criteria=55804, quest=16066,}, -- Ruins of Karnthar
    [70584626] = {criteria=55805, quest=16067,}, -- Lost Ruins
    [10393582] = {criteria=55806, quest=16068,}, -- Brackenhide Hollow
    [26733168] = {criteria=55807, quest=16069,}, -- Creektooth Den
    [60626999] = {criteria=55808, quest=16070,}, -- Imbu
    [52974904] = {criteria=55809, quest=16071,}, -- Zelthrak Outpost
    [67642911] = {criteria=55810, quest=16072,}, -- Rhonin's Shield
    [72593986] = {criteria=55811, quest=16073,}, -- Vakthros Range
    [36552815] = {criteria=56143, quest=16672,}, -- Forkriver Crossing
    [56811603] = {criteria=56145, quest=16673,}, -- The Fallen Course
}, glyph)
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [70118660] = {criteria=56143, quest=16672,}, -- Forkriver Crossing
}, glyph)
