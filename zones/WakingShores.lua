local myname, ns = ...

local MAPID = ns.WAKINGSHORES -- Waking Shores

ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16297/treasures-of-the-waking-shores
    [65804182] = { -- Replica Dragon Goblet
        criteria=54698,
        quest=70600,
        loot={
            {202019, toy=true}, -- Golden Dragon Goblet
        },
        related={
            [76343420] = {quest=70409,loot={{198854,quest=70409}},atlas="poi-workorders",}, -- Archeologist Artifact Notes
        },
        vignette=5367,
    },
    [40454136] = { -- Bubble Drifter
        criteria=54699,
        quest=70599,
        loot={
            {193852, pet=3269}, -- Azure Frillfish
        },
        active={ns.conditions.QuestComplete(70527), ns.conditions.Item(199061), any=true}, -- A Guide To Rare Fish
        nearby={40924140, label="{spell:199061:Fragrant Plant Scent}"},
        note="Find {item:199061} in other treasures to make this appear, then use the Fragrant Plant nearby",
    },
    --[[
    [] = { -- Ruby Gem Cluster
        criteria=54713,
        quest=70598,
        loot={},
        active={ns.conditions.Item(198843), ns.conditions.QuestComplete(70392), any=true}, -- Ruby Gem Cluster Map
        note="Find {item:198843} in other treasures"
    },
    --]]
    [46713121] = { -- Yennu's Kite
        criteria=54701,
        quest=70345,
        loot={},
        note="In the tree",
    },
    [69314658] = { -- Dead Man's Chestplate
        criteria=54702,
        quest=70346,
        loot={
            202193, -- Dead Man's Tunic
            202192, -- Dead Man's Leathers
            202190, -- Dead Man's Chains
            202191, -- Dead Man's Breastplate
        },
        loot={},
        note="Inside tower; middle floor, requires flying",
        minimap=true,
    },
    [48498516] = { -- Torn Riding Pack
        criteria=54703,
        quest=70378,
        loot={},
        note="Top of waterfall",
    },
    --[[
    [] = { -- Misty Treasure Chest
        criteria=55403,
        quest=65646,
        loot={},
    },
    [] = { -- Onyx Gem Cluster
        criteria=55448,
        quest=72020,
        loot={},
        active={ns.conditions.Item(200738), ns.conditions.QuestComplete(72021), any=true}, -- Onyx Gem Cluster Map
        note="Buy {item:200738}"
        related={
            [47008280] = {quest=72021,loot={{200738,quest=72021}},atlas="poi-workorders",active=false,}, -- Onyx Gem Cluster Map
        },
    },
    --]]
}, {
    achievement=16297, -- Treasures
})

-- Rares
ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16676/adventurer-of-the-waking-shores
    --[[
    [] = { -- Gushgut the Beaksinker
        criteria=56033,
        quest=70718,
        npc=196056,
        loot={},
        vignette=5380,
    },
    [] = { -- Nulltheria the Void Gazer
        criteria=56034,
        quest=nil,
        npc=193256,
        loot={},
    },
    --]]
    [58774034] = { -- Anhydros the Tidetaker
        criteria=56035,
        quest=nil,
        npc=187945,
        loot={},
        vignette=5069,
    },
    [39654122] = { -- Skewersnout
        criteria=56036,
        quest=nil,
        npc=193181,
        loot={},
    },
    [43427361] = { -- Helmet Missingway
        criteria=56037,
        quest=nil,
        npc=199645,
        loot={},
    },
    [48436605] = { -- Brundin the Dragonbane
        criteria=56038,
        quest=nil,
        npc=192738,
        loot={},
    },
    [72824701] = { -- Drakewing
        criteria=56039,
        quest=nil,
        npc=193217,
        loot={},
    },
    [45413562] = { -- Thunderous Matriarch
        criteria=56040,
        quest=69841,
        npc=193148,
        loot={},
        vignette=5174,
    },
    [54897110] = { -- Azra's Prized Peony
        criteria=56041,
        quest=69839,
        npc=193135,
        loot={},
        vignette=5172,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Snappy
        criteria=56042,
        quest=nil,
        npc=193228,
        loot={},
    },
    --]]
    [82214945] = { -- O'nank Shorescour
        criteria=56043,
        quest=70983,
        npc=193118,
        loot={},
        vignette=5167,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [69016482] = { -- Smogswog the Firebreather
        criteria=56044,
        quest=69668,
        npc=193120,
        loot={},
        vignette=5169,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Amethyzar the Glittering
        criteria=56045,
        quest=69838,
        npc=193132,
        loot={},
        vignette=5171,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Magmaton
        criteria=56046,
        quest=70979,
        npc=186827,
        loot={},
        vignette=5116,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Massive Magmashell
        criteria=56047,
        quest=69848,
        npc=193152,
        loot={},
        vignette=5175,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [33417637] = { -- Forgotten Gryphon
        criteria=56048,
        quest=72130,
        npc=193154,
        loot={},
        vignette=5383,
    },
    --[[
    [] = { -- Enkine the Voracious
        criteria=56049,
        quest=72128,
        npc=193134,
        loot={},
        vignette=5382,
    },
    --]]
    [27017601] = { -- Captain Lancer
        criteria=56050,
        quest=72127,
        npc=193198,
        loot={},
        vignette=5385,
    },
    [64456922] = { -- Possessive Hornswog
        criteria=56051,
        quest=67048, -- 70864 for cave-access
        npc=192362,
        loot={
            {199916, pet=3365}, -- Roseate Hopper
        },
        vignette=5139, -- Hidden Hornswog Hoard
        note="Bring {item:200064}, {item:200065}, and {item:200066} here to enter",
        related={
            [47738363] = {quest=70864,label="{item:200064}",inbag=200064,atlas="Islands-AzeriteChest",}, -- Marmoni's Prize
            [39648469] = {quest=70864,label="{item:200065}",inbag=200065,atlas="Islands-AzeriteChest",}, -- Adventurer's Lost Soap Bar
            [66185530] = {quest=70864,label="{item:200066}",inbag=200066,atlas="Islands-AzeriteChest",}, -- Well-Preserved Bone
        },
    },
    --[[
    [] = { -- Worldcarver A'tir
        criteria=56052,
        quest=70763,
        npc=186859,
        loot={},
        vignette=5110,
    },
    --]]
    [31825440] = { -- Death's Shadow
        criteria=56053,
        quest=nil,
        npc=190985,
        loot={},
        vignette=5113,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [23825742] = { -- Shas'ith
        criteria=56054,
        quest=nil,
        npc=189822,
        loot={},
        vignette=5108,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [33748639] = { -- Lepidoralia the Resplendent
        criteria=56055,
        quest=69891,
        npc=193266,
        loot={},
        vignette=5209, -- Resplendent Shimmerwing
    },
    [25825982] = { -- Cauldronbearer Blakor
        criteria=56056,
        quest=nil,
        npc=186783,
        loot={},
        vignette=5480,
    },
    [25286032] = { -- Rohzor Forgesmash
        criteria=56057,
        quest=nil,
        npc=187598,
        loot={},
    },
    [33115569] = { -- Turboris
        criteria=56058,
        quest=nil,
        npc=187886,
        loot={},
        vignette=5109,
    },
    [28635882] = { -- Battlehorn Pyrhus
        criteria=56059,
        quest=nil,
        npc=190986,
        loot={},
        vignette=5112, -- and 5114
    },
    [29245162] = { -- Char
        criteria=56060,
        quest=nil,
        npc=190991,
        loot={},
        vignette=5115,
    },
    [30226045] = { -- Rasnar the War Ender
        criteria=56061,
        quest=nil,
        npc=193232,
        loot={},
    },
    --[[
    [] = { -- Morchok
        criteria=56988,
        quest=nil,
        npc=187306,
        loot={},
        vignette=5388, -- 5119 for "Morchock Reformed"?
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Shadeslash Trakken
        criteria=56989,
        quest=70719,
        npc=193271,
        loot={},
        vignette=5381,
    },
    [] = { -- Slurpo, the Incredible Snail
        criteria=57003,
        quest=72126,
        npc=193175,
        loot={},
        vignette=5384,
    },
    --]]
}, {
    achievement=16676, -- Adventurer
})

ns.RegisterPoints(MAPID, {
    [46725013] = { -- Primal Scythid Queen
        quest=66074, -- 57559, 62396
        npc=184853,
        loot={
            200563, -- Primal Ritual Shell
            200445, -- Lucky Hunting Charm
            200195, -- Thunderscale Legguards
        },
        vignette=5055,
    },
    [64433340] = { -- Dragonhunter Igordan
        quest=66956, -- 72838
        npc=191611,
        loot={
            200757, -- Qalashi War-Helm
            {197005, quest=69205}, -- Cliffside Wylderdrake: Horned Nose
            {197019, quest=69219}, -- Cliffside Wylderdrake: Blunt Spiked Tail
            -- 198876, -- Technique: Weathered Explorer's Stave (general drop?)
        },
        worldquest=65994,
        vignette=5126,
    },
    [54808220] = { -- Klozicc the Ascended
        quest=66960, -- verify; this is just from vignette
        npc=187209,
        loot={
            {197023, quest=69223}, -- Cliffside Wylderdrake: Maned Neck
            {200198, toy=true}, -- Primalist Prison
            200246, -- Lost Delving Lamp
        },
        vignette=5127,
    },
    [77602220] = { -- Ancient Hornswog
        quest=66076, -- verify; vignette
        npc=187111,
        loot={
            {196992, quest=69192}, -- Cliffside Wylderdrake: Heavy Horns
            {197403, quest=69604}, -- Renewed Proto-Drake: Club Tail
            {200249, toy=true}, -- Mage's Chewed Wand
            200442, -- Basilisk Hide Jerkin
        },
        vignette=5057,
    },
})

-- Symbols of Hope
ns.RegisterPoints(MAPID, {
    [73193776] = { -- Wingrest Embassy
        criteria=55841,
        quest=72096,
        note="Top of tower",
    },
    [73035290] = { -- Skytop Observatory
        criteria=55842,
        quest=72097,
    },
    [56735799] = { -- Crumbling Life Archway
        criteria=55843,
        quest=72098,
    },
    [61718083] = { -- Hatchery Observatory
        criteria=55844,
        quest=72099,
    },
    [43566381] = { -- Obsidian Observatory
        criteria=55845,
        quest=72100,
    },
    [24058995] = { -- Apex Canopy
        criteria=55846,
        quest=72101,
    },
    [57134640] = { -- Concord Observatory
        criteria=55848,
        quest=72103,
    },
    [50295562] = { -- The Overflowing Spring
        criteria=55847,
        quest=72102,
    },
    [48843995] = { -- Uktulut Backwater
        criteria=55849,
        quest=72104,
    },
    [57022000] = { -- Life-Binder Conservatory
        criteria=55850,
        quest=72105,
    },
}, {
    achievement=16584,
    note="Interact with the {npc:198123:Hope Kite}",
    atlas="CreationCatalyst-32x32",
    minimap=true,
})

-- Dragon Glyphs
ns.RegisterPoints(MAPID, {
    [75005700] = {criteria=55782}, -- Skytop Observatory Tower
    [74345754] = {criteria=56131}, -- Skytop Observatory Rostrum
    [58097858] = {criteria=56132}, -- Flashfrost Enclave
    [54467421] = {criteria=55785}, -- Ruby Life Pools Peaks
    [73082051] = {criteria=55790}, -- Wingrest Embassy
    [40957193] = {criteria=55784}, -- Obsidian Bulwark
    [46405214] = {criteria=55786}, -- The Overflowing Spring
    [52601721] = {criteria=55787}, -- Life-Binder Observatory
    [57705491] = {criteria=55788}, -- Crumbling Life Archway
    [69274623] = {criteria=55789}, -- Dragonheart Outpost
    [74873733] = {criteria=55783}, -- Scalecracker Peak
    [21765140] = {criteria=55791}, -- Obsidian Throne
}, {
    achievement=16575,
    atlas="Warfront-AllianceHero-Silver",
    minimap=true,
    requires=ns.DRAGONRIDING,
    group="glyphs",
})
