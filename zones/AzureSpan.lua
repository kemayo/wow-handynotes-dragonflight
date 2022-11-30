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
    [48632466] = { -- Sapphire Gem Cluster
        criteria=54806,
        quest=70605,
        loot={
            200866, -- Glimmering Malygite Cluster
        },
        hide_before=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 21),
        active={ns.conditions.QuestComplete(70536), ns.conditions.Item(199067), any=true}, -- Precious Plans
        note="Find {item:199067} in other treasures",
    },
    [74905499] = { -- Lost Compass
        criteria=54807,
        quest=70606,
        loot={
            {202711, toy=true}, -- Lost Compass
        },
    },
    [54642933] = { -- Rubber Fish
        criteria=54808,
        quest=70380,
        loot={
            202712, -- Rubber Fish
        },
    },
    [26544629] = { -- Pepper Hammer
        criteria=54809,
        quest=70441,
        loot={
            {193834, pet=3321}, -- Blackfeather Nester
        },
        note="Climb the tree, then use the Tree Sap on the stick to summon {npc:195373}",
    },
}, {
    achievement=16300, -- Treasures
    hide_before=ns.conditions.Level(63),
    minimap=true,
})

ns.RegisterPoints(MAPID, {
    [45635482] = { -- for The Great Shellkhan in Thaldraszus
        achievement=16679, criteria=56155,
        quest=72121,
        loot={200949}, -- Case of Fresh Gleamfish
        note="Quickly take this to {npc:191305} in Thaldraszus @ 38.4, 68.2",
        route={45635482, 52550000, highlightOnly=true},
        minimap=true,
    },
})

-- Rares
ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16678/adventurer-of-the-azure-span
    [59405520] = { -- Wilrive
        criteria=56097,
        quest=69948, -- didn't actually trigger
        npc=193632,
        loot={
            200174, -- Bonesigil Shoulderguards
        },
        vignette=5224,
    },
    [27804580] = { -- Dragonhunter Gorund
        criteria=56098,
        quest=66956, -- ?
        npc=193157,
        loot={
            200302, -- Magmaforged Scimitar
        },
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
    --]]
    [57685441] = { -- Mucka the Raker
        -- ...very prone to resetting+evading and healing to full
        criteria=56102,
        quest=nil, -- no quest popped
        npc=193201,
        loot={
            {200249, toy=true}, -- Mage's Chewed Wand
        },
    },
    --[[
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
    [61213127] = { -- Azure Pathfinder
        criteria=56105,
        quest=nil,
        npc=194210,
        loot={},
        note="Patrols the icy area",
        route={61213127, 59163080, 57562986, 54223190, 52023452, 49283837},
        minimap=true,
    },
    [73002660] = { -- Beogoka
        criteria=56106,
        quest=nil,
        npc=193116,
        loot={},
        vignette=5189,
    },
    [34053080] = { -- Notfar the Unbearable
        criteria=56107,
        quest=nil,
        npc=193225,
        loot={},
        note="In cave",
    },
    [16412781] = { -- Blue Terror
        criteria=56108,
        quest=nil,
        npc=193259,
        loot={},
    },
    [36323583] = { -- Mahg the Trampler
        criteria=56109,
        quest=nil,
        npc=190244,
        loot={},
        route={36323583, 46004100, r=0, g=1, b=0}, -- verify
    },
    --[[
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
        -- also get achievement 16444, Leftovers' Revenge
        criteria=55381,
        quest=nil,
        npc=197557,
        loot={
            200882,
        },
        note="Complete {spell:388961:Community Feasts}",
    },
    --[[
    [] = { -- Blightfur
        criteria=56122,
        quest=69858,
        npc=193178,
        loot={},
        vignette=5184,
    },
    [53803560] = { -- Archmage Cleary
        -- ...does this trigger when you get the snowman? verify before uncommenting
        criteria=56123,
        quest=nil,
        npc=193255,
        loot={},
    },
    --]]
    [54803420] = { -- Spellwrought Snowman
        criteria=56124,
        quest=69879, -- didn't actually trigger?
        npc=193238,
        loot={},
        vignette=5200,
        note="Collect 10x {npc:193424:Arcane Energy} for {npc:193255: Archmage Cleary} nearby",
        related={
            [53913570] = {label="{npc:193255: Archmage Cleary}", atlas="mechagon-projects", note="Gather {npc:193424:Arcane Energy}",},
        },
        nearby={
            54013628, 54083719, 54163467, 53493476, 53393655, 52923710, 52203733, 51683682, 51953565,
            label="{npc:193424:Arcane Energy}",
            note="Bring to {npc:193242:Arcane Pedestal}",
        },
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
}, {
    achievement=16678, -- Adventurer
})
ns.RegisterPoints(2132, { -- Kargpaw's Den
    [36803580] = { -- Notfar the Unbearable
        -- or 46603980?
        achievement=16678, -- Adventurer
        criteria=56107,
        quest=nil,
        npc=193225,
        loot={},
    },
})
ns.RegisterPoints(MAPID, {
    [23443327] = { -- Cascade
        npc=186962,
        quest=72836, -- 72358?
        loot={
            {197098, quest=69299}, -- Highland Drake: Finned Back
            200135, -- Corroded Greatsword
        },
        vignette=5050,
    },
    [38185903] = { -- Forgotten Creation
        npc=193214,
        quest=72840,
        loot={
            200210, -- Amnesia
            200758, -- Breastplate of Storied Antiquity
        },
        vignette=5191,
    },
    [70063318] = { -- Summoned Destroyer
        npc=193288,
        quest=72848, -- also 69895
        loot={
            200163, -- Ring of Embers
            200868, -- Integrated Primal Fire
        },
        vignette=5213,
    },
    [17394121] = { -- Vakril, the Strongest Tuskarr
        npc=193223,
        quest=72853, -- 69872
        loot={
            {201728, quest=72853}, -- Vakril's Strongbox
            {197001, quest=69201}, -- Cliffside Wylderdrake: Finned Cheek
        },
        vignette=5194,
    },
    [27004840] = { -- Breezebiter
        npc=195353,
        quest=nil,
        loot={
            {201440, mount=1553},
        },
        note="Flying",
    },
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
    minimap=true,
    note="Interact with the {npc:198260}; sometimes a Miner will need to break a rock wall before you can get in",
})
