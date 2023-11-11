local myname, ns = ...

local dfengknowledge = {
    note = "This can only be looted once per character.",
    currency=2027,
    requires = ns.conditions.Profession(ns.PROF_DF_ENGINEERING),
    hide_before = ns.conditions.Profession(ns.PROF_DF_ENGINEERING, 25),
    group = "professionknowledge",
    texture=ns.atlas_texture("VignetteLoot", {r=0.5,g=1,b=1,}),
    minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [56004490] = {
        note = "Pick up 4 different items to loot the rocket. Ashes are in the same building; other 3 items are in the bigger building across the open area.",
        loot = {
            201014, -- Boomthyr Rocket
        },
        quest = 70270,
        related = {
            [56054494] = {
                label = "Note on the floor",
                note = "Read this first!",
            },
            [55914529] = {
                label = "{item:198815:Ash}",
            },
            [57844446] = {
                label = "Look for {item:198814:Boom Fumes}/{item:198817:Durable Crystal}/{item:198816:Aerospace Grade Draconium} around this area",
            },
        },
    },
    [49097754] = {
        note = "Click 3x Exposed Wires nearby before looting",
        loot = {
            198789, -- Intact Coil Capacitor
        },
        quest = 70275,
    },
}, dfengknowledge)
--[[
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [] = {
        note = "",
        loot = {
            , -- 
        },
        quest = nil,
    },
}, dfengknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [] = {
        note = "",
        loot = {
            , -- 
        },
        quest = nil,
    },
}, dfengknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [] = {
        note = "",
        loot = {
            , -- 
        },
        quest = nil,
    },
}, dfengknowledge)
]]

ns.RegisterPoints(ns.ZARALEKCAVERN, {
    [37825883] = {
        loot={204475}, -- Busted Wyrmhole Generator
        quest=75186,
        vignette=5618,
    },
    [50514793] = {
        loot={204471}, -- Defective Survival Pack
        quest=75184,
        vignette=5617,
    },
    [49447901] = {
        loot={204853}, -- Discarded Dracothyst Drill
        quest=75431,
        vignette=5672,
    },
    [57657394] = {
        loot={204850}, -- Handful of Khaz'gorite Bolts
        quest=75430,
        vignette=5671, -- Bolts and Brass
    },
    [48172793] = {
        loot={204470}, -- Haphazardly Discarded Bomb
        quest=75183,
        vignette=5616,
    },
    [49875925] = {
        loot={204480}, -- Inconspicuous Data Miner
        quest=75188,
        vignette=5620,
    },
    [48484864] = {
        loot={204469}, -- Misplaced Aberrus Outflow Blueprints
        quest=75180,
        vignette=5615,
    },
    [48101659] = {
        loot={204855}, -- Overclocked Determination Core
        quest=75433,
        vignette=5673, -- Molten Scoutbot
    },
}, dfengknowledge)

ns.RegisterPoints(ns.EMERALDDREAM, {
    [39555228] = {
        loot={210193}, -- Experimental Dreamcatcher
        quest=78278,
        vignette=5919,
    },
    [62663627] = {
        loot={210197}, -- Unhatched Battery
        quest=78281,
        vignette=5922,
    },
}, dfengknowledge)
ns.RegisterPoints(2254, { -- Barrows of Reverie
    [49266865] = {
        hide_before=ns.conditions.QuestComplete(76320), -- Wild Gods in Our Midst
        loot={210194}, -- Insomniotron
        quest=78279,
        vignette=5920,
        parent=true, -- 62607480
        note="Inside the Barrows of Reverie",
    },
}, dfengknowledge)
