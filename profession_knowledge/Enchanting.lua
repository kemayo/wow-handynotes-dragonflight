local myname, ns = ...

local dfenchknowledge = {
    label = "Enchanter's Knowledge",
    note = "This can only be looted once per character.",
    requires = ns.conditions.Profession(ns.PROF_DF_ENCHANTING),
    hide_before = ns.conditions.Profession(ns.PROF_DF_ENCHANTING, 25),
    group = "professionknowledge",
    minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [57508360] = {
        note = "Flashfrozen Enclave, in frozen cave system.",
        loot = {
            198798, -- Flashfrozen Scroll
        },
        quest = nil,
    },
    [68002680] = {
        note = "Scalecracker Keep, next to a lava flower in a flower.",
        loot = {
            198675, -- Lava-Infused Seed
        },
        quest = nil,
    },
    [57505850] = {
        note = "Use Disenchanted Broom and follow Enchanted Broom, then loot the debris at path's end.",
        loot = {
            201012, -- Enchanted Debris
        },
        quest = nil,
    },
}, dfenchknowledge)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [61406760] = {
        note = "Windsong Rise, north of Ohn'iri Springsr.",
        loot = {
            198689, -- Stormbound Horn
        },
        quest = nil,
    },
}, dfenchknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [38505920] = {
        note = "Azure Archives, in a leveled tomb with a rare mob on the NW side. Tome is lying on the floor to the right of the entrance.",
        loot = {
            198799, -- Forgotten Arcane Tome
        },
        quest = nil,
    },
    [45216114] = {
        note = "Just east of Azure Archives. Click on Mana-Starved Crystal Cluster to spawn a mob. Kill the mob and click the crystal that spawns.",
        loot = {
            201013, -- Faintly Enchanted Remains
        },
        quest = nil,
    },
    [21004500] = {
        note = "Inside the mountain.", -- Need info on how to access it!
        loot = {
            198694, -- Enriched Earthen Shard
        },
        quest = nil,
    },
}, dfenchknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [59907040] = {
        note = "South of Tyrhold.",
        loot = {
            198800, -- Fractured Titanic Sphere
        },
        quest = nil,
    },
}, dfenchknowledge)
