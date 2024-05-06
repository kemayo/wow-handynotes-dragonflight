local myname, ns = ...

local pepe = {
    texture=ns.atlas_texture("dragon-rostrum", {r=0.25,g=0.75,b=0}),
    minimap=true,
    requires=ns.conditions.Achievement(9838), -- What A Strange, Interdimensional Trip It's Been
    group="Pepe",
}

ns.RegisterPoints(ns.WAKINGSHORES, {
    [47318277] = {
        quest=79550,
        loot={213202}, -- A Tiny Explorer's Hat
        note="On top of the tent",
    },
}, pepe)
ns.RegisterPoints(ns.AZURESPAN, {
    [12994859] = {
        quest=79551,
        loot={213207}, -- A Tiny Ear Warmer
    },
}, pepe)
ns.RegisterPoints(ns.VALDRAKKEN, {
    [50505290] = {
        quest=79547,
        loot={213181}, -- A Tiny Dragon Goblet
        parent=true,
    },
}, pepe)
