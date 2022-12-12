local myname, ns = ...

local dirt = {
    label="Disturbed Dirt",
    loot={
        192055, -- Dragon Isles Artifact
    },
    -- quest 72023 (after 70822 Lost Expedition Camp) at basecamp *says* it unlocks these, but I saw them before
    requires=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 5), -- also 70813(Digging Up Treasure) / 72026
    texture=ns.atlas_texture("Professions_Tracking_Ore", {r=0.5, g=1, b=0.5, scale=0.9}),
    group="disturbeddirt",
    vignette=5466,
}

ns.RegisterPoints(ns.WAKINGSHORES, {
    [23709660] = {note="In cave"},
    [29079001] = {},
    [38259517] = {note="In cave"},
    [45597369] = {note="In cave"},
    [50767598] = {},
}, dirt)
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [38706676] = {}, -- by an ancient stone
    [38825561] = {note="In cave"},
    [43326632] = {},
    [44686402] = {},
    [47296085] = {},
    [51946274] = {},
    [66285992] = {},
    [66815535] = {note="In cave"},
    [68892204] = {},
    [70244147] = {},
    [80133864] = {note="In cave"}, -- bugged?
    [82814024] = {},
    [83083330] = {},
    [83253607] = {},
}, dirt)
ns.RegisterPoints(ns.AZURESPAN, {
}, dirt)
ns.RegisterPoints(ns.THALDRASZUS, {
}, dirt)
