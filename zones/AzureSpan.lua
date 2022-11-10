local myname, ns = ...

local MAPID = 2024 -- Azure Span

ns.RegisterPoints(MAPID, {
    --[[
    [] = { -- Forgotten Jewel Box
        criteria=54804,
        quest=70603,
        loot={},
    },
    [] = { -- Gnoll Fiend Flail
        criteria=54805,
        quest=70604,
        loot={},
    },
    [] = { -- Sapphire Gem Cluster
        criteria=54806,
        quest=70605,
        loot={},
    },
    [] = { -- Lost Compass
        criteria=54807,
        quest=70606,
        loot={},
    },
    [] = { -- Rubber Fish
        criteria=54808,
        quest=70380,
        loot={},
    },
    [] = { -- Pepper Hammer
        criteria=54809,
        quest=70441,
        loot={},
    },
    --]]
}, {
    achievement=16300, -- Treasures
})

-- Rares
ns.RegisterPoints(MAPID, {
    --[[
    [] = { -- Wilrive
        criteria=56097,
        quest=69948,
        npc=193632,
        loot={},
        vignette=5224,
    },
    [] = { -- Dragonhunter Gorund
        criteria=56098,
        quest=66956, -- ?
        npc=193157,
        loot={},
        vignette=5126, -- ?
    },
    [] = { -- Arcane Devourer
        criteria=56099,
        quest=nil,
        npc=194270,
        loot={},
        vignette=5267,
    },
    [] = { -- Mange the Outcast
        criteria=56100,
        quest=nil,
        npc=198004,
        loot={},
    },
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
    [] = { -- Frigidpelt Den Mother
        criteria=56104,
        quest=69985,
        npc=193698,
        loot={},
        vignette=5252,
    },
    [] = { -- Azure Pathfinder
        criteria=56105,
        quest=nil,
        npc=194210,
        loot={},
    },
    [] = { -- Beogoka
        criteria=56106,
        quest=nil,
        npc=193116,
        loot={},
        vignette=5189,
    },
    [] = { -- Notfar the Unbearable
        criteria=56107,
        quest=nil,
        npc=193225,
        loot={},
    },
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
    [] = { -- Gruffy
        criteria=56111,
        quest=69885,
        npc=193251,
        loot={},
        vignette=5206,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
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
    [] = { -- Trilvarus Loreweaver
        criteria=56114,
        quest=69861,
        npc=193196,
        loot={},
        vignette=5186,
    },
    [] = { -- Fisherman Tinnak
        criteria=56115,
        quest=70792,
        npc=193691,
        loot={},
        vignette=5475,
    },
    [] = { -- Snufflegust
        criteria=56116,
        quest=nil,
        npc=193706,
        loot={},
    },
    [] = { -- Skald the Impaler
        criteria=56117,
        quest=nil,
        npc=193708,
        loot={},
    },
    [] = { -- Seereel, the Spring
        criteria=56118,
        quest=nil,
        npc=193710,
        loot={},
    },
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
    [] = { -- Bisquius
        criteria=55381,
        quest=nil,
        npc=197557,
        loot={},
    },
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
    [] = { -- Spellwrought Snowman
        criteria=56124,
        quest=69879,
        npc=193238,
        loot={},
        vignette=5200,
    },
    [] = { -- Snarglebone
        criteria=56125,
        quest=nil,
        npc=197344,
        loot={},
        vignette=5413,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Blisterhide
        criteria=56126,
        quest=nil,
        npc=197353,
        loot={},
        vignette=5414,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Gnarls
        criteria=56127,
        quest=nil,
        npc=197354,
        loot={},
        vignette=5415,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- High Shaman Rotknuckle
        criteria=56128,
        quest=nil,
        npc=197356,
        loot={},
        vignette=5416,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Ravenous Tundra Bear
        criteria=56129,
        quest=nil,
        npc=197371,
        loot={},
    },
    [] = { -- Astray Splasher
        criteria=56130,
        quest=nil,
        npc=197411,
        loot={},
    },
    --]]
}, {
    achievement=16678, -- Adventurer
})
