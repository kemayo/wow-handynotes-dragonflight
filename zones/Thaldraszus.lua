local myname, ns = ...

local MAPID = 2025 -- Thaldraszus

ns.RegisterPoints(MAPID, {
    --[[
    [] = { -- Cracked Hourglass
        criteria=54810,
        quest=70607,
        loot={},
    },
    [] = { -- Sandy Wooden Duck
        criteria=54811,
        quest=70608,
        loot={},
    },
    [] = { -- Amber Gem Cluster
        criteria=54812,
        quest=70408,
        loot={},
    },
    [] = { -- Elegant Canvas Brush
        criteria=54813,
        quest=70609,
        loot={},
    },
    [] = { -- Surveyor's Magnifying Glass
        criteria=54814,
        quest=70610,
        loot={},
    },
    [] = { -- Acorn Harvester
        criteria=54815,
        quest=70611,
        loot={},
    },
    --]]
}, {
    achievement=16301, -- Treasures
})

-- Rares
ns.RegisterPoints(MAPID, {
    --[[
    [] = { -- Razk'vex the Untamed
        criteria=56133,
        quest=69853,
        npc=193143,
        loot={},
        vignette=5180,
    },
    [] = { -- Innumerable Ruination
        criteria=56135,
        quest=nil,
        npc=193126,
        loot={},
    },
    [] = { -- Blightpaw the Depraved
        criteria=56136,
        quest=nil,
        npc=193128,
        loot={},
    },
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
    [] = { -- Phleep
        criteria=56142,
        quest=69866,
        npc=193210,
        loot={},
        vignette=5192,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Tempestrian
        criteria=56144,
        quest=69886,
        npc=193258,
        loot={},
        vignette=5207,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Treasure-Mad Trambladd
        criteria=56146,
        quest=70947,
        npc=193146,
        loot={},
        vignette=5431,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
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
    [] = { -- Broodweaver Araznae
        criteria=56149,
        quest=69868,
        npc=193220,
        loot={},
        vignette=5193,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Sandana the Tempest
        criteria=56150,
        quest=69859,
        npc=193176,
        loot={},
        vignette=5185,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Rokmur
        criteria=56151,
        quest=69966,
        npc=193666,
        loot={},
        vignette=5238,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Woolfang
        criteria=56152,
        quest=69850,
        npc=193161,
        loot={},
        vignette=5177,
    },
    [] = { -- The Weeping Vilomah
        criteria=56153,
        quest=65365,
        npc=183984,
        loot={},
        vignette=4958,
    },
    [] = { -- Craggravated Elemental
        criteria=56154,
        quest=69964,
        npc=193663,
        loot={},
        vignette=5237,
    },
    [] = { -- The Great Shellkhan
        criteria=56155,
        quest=72121,
        npc=191305,
        loot={},
        vignette=5439,
    },
    [] = { -- Corrupted Proto-Dragon
        criteria=56156,
        quest=69962,
        npc=193658,
        loot={},
        vignette=5235,
    },
    [] = { -- Lord Epochbrgl
        criteria=56157,
        quest=69882,
        npc=193241,
        loot={},
        vignette=5203,
    },
    [] = { -- Ancient Protector
        criteria=56158,
        quest=69963,
        npc=193664,
        loot={},
        vignette=5236,
    },
    --]]
}, {
    achievement=16679, -- Adventurer
})
