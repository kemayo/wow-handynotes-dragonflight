local myname, ns = ...

--[[
areaPois
Azure Span continent: 7345
Ohn'Ahran Plains: 7090 @ 81104940
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
    [38654365] = { -- Khuumog
        npc=194761,
        quest=73922,
    },
}, hunt)
