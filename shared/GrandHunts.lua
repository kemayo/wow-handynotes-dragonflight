local myname, ns = ...

--[[
areaPois
Waking Shores continent: 7343
Azure Span continent: 7345
Ohn'Ahran Plains: 7053 @ 82202030
Ohn'Ahran Plains: 7089 @ 61005330
Ohn'Ahran Plains: 7090 @ 81104940

Grand hunt spoils: 200468 (epic)
{194089, quest=71046}, -- Bakar Companion Color: Orange
--]]

local hunt = {
    achievement=16545, criteria=true,
    group="hunts",
    atlas="minimap-genericevent-hornicon", scale=1.1,
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
}, hunt)

ns.RegisterPoints(ns.AZURESPAN, {
    [72374558] = { -- Zumakh
        quest=70003, -- 70906
        npc=194624,
        loot={
            200563, -- Primal Ritual Shell
        },
        vignette=5277,
    },
}, hunt)

ns.RegisterPoints(ns.AZURESPAN, {
    [38654365] = { -- Khuumog
        npc=194761,
        quest=73922,
    },
}, hunt)
