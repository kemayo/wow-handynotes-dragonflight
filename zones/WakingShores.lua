local myname, ns = ...

local MAPID = 2022 -- Waking Shores

ns.RegisterPoints(MAPID, {
    --[[
    [] = { -- Replica Dragon Goblet
        criteria=54698,
        quest=70600,
        loot={},
    },
    [] = { -- Bubble Drifter
        criteria=54699,
        quest=70599,
        loot={},
    },
    [] = { -- Ruby Gem Cluster
        criteria=54713,
        quest=70598,
        loot={},
    },
    [] = { -- Yennu's Kite
        criteria=54701,
        quest=70345,
        loot={},
    },
    [] = { -- Dead Man's Chestplate
        criteria=54702,
        quest=70346,
        loot={},
    },
    [] = { -- Torn Riding Pack
        criteria=54703,
        quest=70378,
        loot={},
    },
    [] = { -- Misty Treasure Chest
        criteria=55403,
        quest=65646,
        loot={},
    },
    [] = { -- Onyx Gem Cluster
        criteria=55448,
        quest=72020,
        loot={},
    },
    --]]
}, {
    achievement=16297, -- Treasures
})

-- Rares
ns.RegisterPoints(MAPID, {
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
    [] = { -- Anhydros the Tidetaker
        criteria=56035,
        quest=nil,
        npc=187945,
        loot={},
        vignette=5069,
    },
    [] = { -- Skewersnout
        criteria=56036,
        quest=nil,
        npc=193181,
        loot={},
    },
    [] = { -- Helmet Missingway
        criteria=56037,
        quest=nil,
        npc=199645,
        loot={},
    },
    [] = { -- Brundin the Dragonbane
        criteria=56038,
        quest=nil,
        npc=192738,
        loot={},
    },
    [] = { -- Drakewing
        criteria=56039,
        quest=nil,
        npc=193217,
        loot={},
    },
    [] = { -- Thunderous Matriarch
        criteria=56040,
        quest=69841,
        npc=193148,
        loot={},
        vignette=5174,
    },
    [] = { -- Azra's Prized Peony
        criteria=56041,
        quest=69839,
        npc=193135,
        loot={},
        vignette=5172,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Snappy
        criteria=56042,
        quest=nil,
        npc=193228,
        loot={},
    },
    [] = { -- O'nank Shorescour
        criteria=56043,
        quest=70983,
        npc=193118,
        loot={},
        vignette=5167,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Smogswog the Firebreather
        criteria=56044,
        quest=69668,
        npc=193120,
        loot={},
        vignette=5169,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
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
    [] = { -- Forgotten Gryphon
        criteria=56048,
        quest=72130,
        npc=193154,
        loot={},
        vignette=5383,
    },
    [] = { -- Enkine the Voracious
        criteria=56049,
        quest=72128,
        npc=193134,
        loot={},
        vignette=5382,
    },
    [] = { -- Captain Lancer
        criteria=56050,
        quest=72127,
        npc=193198,
        loot={},
        vignette=5385,
    },
    --]]
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
    [] = { -- Death's Shadow
        criteria=56053,
        quest=nil,
        npc=190985,
        loot={},
        vignette=5113,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Shas'ith
        criteria=56054,
        quest=nil,
        npc=189822,
        loot={},
        vignette=5108,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Lepidoralia the Resplendent
        criteria=56055,
        quest=69891,
        npc=193266,
        loot={},
        vignette=5209, -- Resplendent Shimmerwing
    },
    [] = { -- Cauldronbearer Blakor
        criteria=56056,
        quest=nil,
        npc=186783,
        loot={},
        vignette=5480,
    },
    [] = { -- Rohzor Forgesmash
        criteria=56057,
        quest=nil,
        npc=187598,
        loot={},
    },
    [] = { -- Turboris
        criteria=56058,
        quest=nil,
        npc=187886,
        loot={},
        vignette=5109,
    },
    [] = { -- Battlehorn Pyrhus
        criteria=56059,
        quest=nil,
        npc=190986,
        loot={},
        vignette=5112, -- and 5114
    },
    [] = { -- Char
        criteria=56060,
        quest=nil,
        npc=190991,
        loot={},
        vignette=5115,
    },
    [] = { -- Rasnar the War Ender
        criteria=56061,
        quest=nil,
        npc=193232,
        loot={},
    },
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
