local myname, ns = ...

local dflwknowledge = {
    label = "Leatherworker's Knowledge",
    note= "This can only be looted once per character.",
    requires = ns.conditions.Profession(ns.PROF_DF_LEATHERWORKING),
    hide_before = ns.conditions.Profession(ns.PROF_DF_LEATHERWORKING, 25),
    group = "professionknowledge",
    minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [39008600] = {
        note = "Next to a dead Vulpera laying beside the riverbed.",
        loot = {
            198711, -- Poacher's Pack
        },
        quest = nil,
    },
    [64302540] = {
        note = "Lying next to dead red dragon.",
        loot = {
            198667, -- Spare Djardin Tools
        },
        quest = nil,
    },
}, dflwknowledge)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [86405370] = {
        note = "Inside Shikaar Highlands Centaur camp.",
        loot = {
            198696, -- Wind-Blessed Hide
        },
        quest = nil,
    },
}, dflwknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [12504940] = {
        note = "Iskaara, in an underground building with {npc:186446:Elder Nappa} and {npc:186448:Elder Poa}. Activate the treasure by fixing the {item:380573:Broken Drum} next to {npc:194862:Raq}. Once he dances on it, you can loot the item.",
        loot = {
            201018, -- Well-Danced Drum
        },
        quest = nil,
    },
    [16703880] = {
        note = "North of Iskaara, in the barrel in a gnoll camp.",
        loot = {
            198658, -- Decay-Infused Tanning Oil
        },
        quest = nil,
    },
    [57504130] = {
        note = "Snowhide camp east of Camp Antonidas.",
        loot = {
            198683, -- Treated Hides
        },
        quest = nil,
    },
}, dflwknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [56803050] = {
        note = "Inside a basket within the Fetid's camp.",
        loot = {
            198690, -- Decayed Scales
        },
        quest = nil,
    },
}, dflwknowledge)
