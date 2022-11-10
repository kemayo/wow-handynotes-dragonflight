local myname, ns = ...

local MAPID = 2023 -- Ohn'ahran Plains

ns.RegisterPoints(MAPID, {
    --[[
    [] = { -- Nokhud Warspear
        criteria=54707,
        quest=67049,
        loot={},
    },
    [] = { -- Slightly Chewed Duck Egg
        criteria=54708,
        quest=67950,
        loot={},
    },
    [] = { -- Emerald Gem Cluster
        criteria=54700,
        quest=70391,
        loot={},
    },
    [] = { -- Cracked Centaur Horn
        criteria=54709,
        quest=70402,
        loot={},
    },
    [] = { -- Gold Swog Coin
        criteria=54710,
        quest=70379,
        loot={},
    },
    [] = { -- Yennu's Boat
        criteria=54711,
        quest=70400,
        loot={},
    },
    --]]
}, {
    achievement=16299, -- Treasures
})

ns.RegisterPoints(MAPID, {
    -- Divine Kiss of Ohn'ahra mount:
    [57593192] = { -- Ohn'ahra
        npc=194796,
        quest=72512, -- A Whispering Breeze
        loot={
            {198821, mount=1545},
        },
        atlas="SanctumUpgrades-Venthyr-32x32",
        note="* 3x {item:201929} from {npc:186151:Balakar Khan} in The Nokhud Offensive\n* 1x {item:201323:Essence of Awakening} from {npc:196707:Quartermaster Huseng}\n* 1x {item:191507:Exultant Incense} (Rank 3) from Alchemy",
    },
    [52006320] = { -- Godoloto
        -- TODO: confirm location
        npc=190022,
        quest=72512, -- A Whispering Breeze
        texture=ns.atlas_texture("SanctumUpgrades-Venthyr-32x32",{r=0.5, g=1, b=1}),
        active=ns.conditions.Item(201929, 3),
        -- hide_before=ns.conditions.QuestComplete()
        note="Bring 3x {item:201929} from {npc:186151:Balakar Khan} in The Nokhud Offensive to start {quest:72512}",
    },
})

-- Rares
ns.RegisterPoints(MAPID, {
    --[[
    [] = { -- Sparkspitter Vrak
        criteria=56062,
        quest=nil,
        npc=193165,
        loot={},
    },
    [] = { -- Scav Notail
        criteria=56063,
        quest=69863,
        npc=193136,
        loot={},
        vignette=5187,
    },
    [] = { -- Enraged Sapphire
        criteria=56064,
        quest=69840,
        npc=193142,
        loot={},
        vignette=5173,
    },
    [] = { -- Seeker Teryx
        criteria=56065,
        quest=nil,
        npc=193188,
        loot={},
    },
    [] = { -- Zenet Avis
        criteria=56066,
        quest=nil,
        npc=193209,
        loot={},
    },
    --]]
    [87406140] = { -- Liskheszaera
        criteria=56067,
        quest=nil,
        npc=197009,
        loot={},
    },
    --[[
    [] = { -- Deadwaker Ghendish
        criteria=56068,
        quest=nil,
        npc=189652,
        loot={},
    },
    [] = { -- Researcher Sneakwing
        criteria=56069,
        quest=70689,
        npc=196010,
        loot={},
        vignette=5378,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Mikrin of the Raging Winds
        criteria=56070,
        quest=69857,
        npc=193173,
        loot={},
        vignette=5183,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Ronsak the Decimator
        criteria=56071,
        quest=69878,
        npc=193227,
        loot={},
        vignette=5205,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Steamgill
        criteria=56072,
        quest=69667,
        npc=193123,
        loot={},
        vignette=5168,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Malsegan
        criteria=56073,
        quest=69871,
        npc=193212,
        loot={},
        vignette=5195,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Oshigol
        criteria=56074,
        quest=69877,
        npc=193235,
        loot={},
        vignette=5199,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Fulgurb
        criteria=56075,
        quest=69856,
        npc=193170,
        loot={},
        vignette=5182,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [] = { -- Windseeker Avash
        criteria=56076,
        quest=nil,
        npc=192045,
        loot={},
    },
    [] = { -- Eaglemaster Niraak
        criteria=56077,
        quest=nil,
        npc=192020,
        loot={},
        vignette=5138,
    },
    [] = { -- Zarizz
        criteria=56078,
        quest=72364,
        npc=193140,
        loot={},
        vignette=5469,
    },
    [] = { -- Scaleseeker Mezeri
        criteria=56079,
        quest=69865,
        npc=193215,
        loot={},
        vignette=5190,
    },
    [] = { -- Shade of Grief
        criteria=56080,
        quest=nil,
        npc=187559,
        loot={},
    },
    [] = { -- Nokhud Warmaster
        criteria=56081,
        quest=nil,
        npc=187219,
        loot={},
        vignette=5062,
    },
    [] = { -- Hamett
        criteria=56082,
        quest=nil,
        npc=187781,
        loot={},
    },
    [] = { -- Hunter of Deep
        criteria=56083,
        quest=nil,
        npc=188095,
        loot={},
        vignette=5077,
    },
    [] = { -- Irontree
        criteria=56084,
        quest=66356,
        npc=188124,
        loot={},
        vignette=5078,
    },
    [] = { -- Zerimek
        criteria=56085,
        quest=nil,
        npc=188451,
        loot={},
        vignette=5087,
    },
    [] = { -- Sulfurion
        criteria=56086,
        quest=nil,
        npc=191842,
        loot={},
        vignette=5135,
    },
    [] = { -- Porta the Overgrown
        criteria=56087,
        quest=nil,
        npc=191950,
        loot={},
        vignette=5136,
    },
    [] = { -- The Jolly Giant
        criteria=56088,
        quest=nil,
        npc=195204,
        loot={},
        vignette=5352,
    },
    [] = { -- Windscale the Stormborn
        criteria=56089,
        quest=nil,
        npc=192364,
        loot={},
        vignette=5140,
    },
    [] = { -- Vaniik the Stormtouched
        criteria=56090,
        quest=nil,
        npc=192453,
        loot={},
        vignette=5143, -- Vaniik the Corrupted
    },
    [] = { -- Quackers the Terrible
        criteria=56091,
        quest=nil,
        npc=192557,
        loot={},
        vignette=5144,
    },
    [] = { -- Cinta the Forgotten
        criteria=56092,
        quest=nil,
        npc=195186,
        loot={},
        vignette=5351,
    },
    [] = { -- Rustlily
        criteria=56093,
        quest=nil,
        npc=195223,
        loot={},
    },
    [] = { -- Makhra the Ashtouched
        criteria=56094,
        quest=nil,
        npc=195409,
        loot={},
        vignette=5365,
    },
    [] = { -- The Great Enla
        criteria=56095,
        quest=nil,
        npc=196334,
        loot={},
    },
    [] = { -- Old Stormhide
        criteria=56096,
        quest=nil,
        npc=196350,
        loot={},
    },
    --]]
}, {
    achievement=16677, -- Adventurer
})
