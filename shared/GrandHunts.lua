local myname, ns = ...

--[[
areaPois
Waking Shores continent: 7343
Waking Shores: 7092 @ 68906680
Azure Span continent: 7345
Ohn'Ahran Plains: 7053 @ 82202030
Ohn'Ahran Plains: 7089 @ 61005330
Ohn'Ahran Plains: 7090 @ 81104940 (71137?)
Ohn'Ahran Plains: 7091 @ 54401840 (/ Waking Shores 23909520)

Grand hunt spoils: 200468 (epic), 200513 (rare)
{194089, quest=71046}, -- Bakar Companion Color: Orange
{194095, quest=71052}, -- Ohuna Companion Color: Sepia

Siege on Dragonsbane Keep: 7267 @ Waking Shores 30607790, quest 71210 (+72671)
Dragonbane Keep Strongbox: 200072 (epic)
192007, -- Wyrmforged Sabatons
--]]

local hunt = {
    achievement=16545, criteria=true,
    group="hunts",
    texture=ns.atlas_texture("Warfront-NeutralHero", nil, 0.2),
    requires=ns.conditions.MajorFaction(ns.FACTION_MARUUK, 2), -- they start dropping trophies at 2
}

ns.RegisterPoints(ns.WAKINGSHORES, {
    [41158455] = { -- Degmakh
        npc=194251,
        loot={
            198990, -- Drakewatcher's Cord
        },
        vignette=5266,
    },
    [47767707] = { -- Muugurv
        npc=194225,
        loot={
            198985, -- Drakewatcher's Vestement
        },
        vignette=5264,
    },
    [26618872] = { -- Uurtus
        quest=73945, -- then 71136+69998 for end-of-hunt
        npc=193724,
        loot={
            200164, -- Iceloop
            200187, -- Rod of Glacial Force
            200245, -- Leviathan Lure
            200552, -- Torrent Caller's Shell
            200563, -- Primal Ritual Shell
            {197001, quest=69201}, -- Cliffside Wylderdrake: Finned Cheek
            {197098, quest=69299}, -- Highland Drake: Finned Back
        },
        vignette=5255,
    },
}, hunt)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [72374558] = { -- Zumakh
        quest=70003, -- 70906
        npc=194624,
        loot={
            200563, -- Primal Ritual Shell
        },
        vignette=5277,
    },
    [80715432] = { -- Kholdeg
        quest=73920,
        npc=194608,
        loot={},
        vignette=5276,
    },
}, hunt)

ns.RegisterPoints(ns.AZURESPAN, {
    [38654365] = { -- Khuumog
        npc=194761,
        quest=73922,
    },
}, hunt)
