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
        quest=nil,
        npc=193136,
        loot={},
    },
    [] = { -- Enraged Sapphire
        criteria=56064,
        quest=nil,
        npc=193142,
        loot={},
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
    [] = { -- Liskheszaera
        criteria=56067,
        quest=nil,
        npc=197009,
        loot={},
    },
    [] = { -- Deadwaker Ghendish
        criteria=56068,
        quest=nil,
        npc=189652,
        loot={},
    },
    [] = { -- Researcher Sneakwing
        criteria=56069,
        quest=nil,
        npc=196010,
        loot={},
    },
    [] = { -- Mikrin of the Raging Winds
        criteria=56070,
        quest=nil,
        npc=193173,
        loot={},
    },
    [] = { -- Ronsak the Decimator
        criteria=56071,
        quest=nil,
        npc=193227,
        loot={},
    },
    [] = { -- Steamgill
        criteria=56072,
        quest=nil,
        npc=193123,
        loot={},
    },
    [] = { -- Malsegan
        criteria=56073,
        quest=nil,
        npc=193212,
        loot={},
    },
    [] = { -- Oshigol
        criteria=56074,
        quest=nil,
        npc=193235,
        loot={},
    },
    [] = { -- Fulgurb
        criteria=56075,
        quest=nil,
        npc=193170,
        loot={},
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
    },
    [] = { -- Zarizz
        criteria=56078,
        quest=nil,
        npc=193140,
        loot={},
    },
    [] = { -- Scaleseeker Mezeri
        criteria=56079,
        quest=nil,
        npc=193215,
        loot={},
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
    },
    [] = { -- Irontree
        criteria=56084,
        quest=nil,
        npc=188124,
        loot={},
    },
    [] = { -- Zerimek
        criteria=56085,
        quest=nil,
        npc=188451,
        loot={},
    },
    [] = { -- Sulfurion
        criteria=56086,
        quest=nil,
        npc=191842,
        loot={},
    },
    [] = { -- Porta the Overgrown
        criteria=56087,
        quest=nil,
        npc=191950,
        loot={},
    },
    [] = { -- The Jolly Giant
        criteria=56088,
        quest=nil,
        npc=195204,
        loot={},
    },
    [] = { -- Windscale the Stormborn
        criteria=56089,
        quest=nil,
        npc=192364,
        loot={},
    },
    [] = { -- Vaniik the Stormtouched
        criteria=56090,
        quest=nil,
        npc=192453,
        loot={},
    },
    [] = { -- Quackers the Terrible
        criteria=56091,
        quest=nil,
        npc=192557,
        loot={},
    },
    [] = { -- Cinta the Forgotten
        criteria=56092,
        quest=nil,
        npc=195186,
        loot={},
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
