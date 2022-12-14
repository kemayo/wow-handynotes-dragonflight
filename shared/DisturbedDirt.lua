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
    [33918519] = {note="In cave"},
    [38259517] = {note="In cave"},
    [43134536] = {},
    [44289043] = {},
    [45597369] = {note="In cave"},
    [50767598] = {},
    [53464420] = {},
    [54795018] = {},
    [61974125] = {},
    [64853986] = {},
    [66347010] = {}, -- bugged?
    [69513968] = {},
    [72233891] = {},
}, dirt)
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [38706676] = {}, -- by an ancient stone
    [38825561] = {note="In cave"},
    [43326632] = {},
    [44686402] = {},
    [47296085] = {},
    [51946274] = {},
    [64321154] = {},
    [66285992] = {},
    [66815535] = {note="In cave"},
    [68892204] = {},
    [70244147] = {},
    [74838850] = {},
    [76365115] = {},
    [76485475] = {},
    [77664604] = {},
    [78544035] = {},
    [78923703] = {note="In cave"}, -- bugged?
    [79013698] = {},
    [80133864] = {note="In cave"}, -- bugged?
    [81103757] = {note="In cave"}, -- bugged?
    [82814024] = {},
    [83083330] = {},
    [83184162] = {},
    [83253607] = {},
}, dirt)
ns.RegisterPoints(ns.AZURESPAN, {
    [06174151] = {},
    [15422052] = {},
    [15922084] = {},
    [19235098] = {},
    [20052526] = {},
    [40325093] = {},
    [44153092] = {},
    [59361966] = {},
    [65163016] = {note="In cave"},
    [65193152] = {},
    [68301743] = {},
    [78923703] = {},
}, dirt)
ns.RegisterPoints(ns.THALDRASZUS, {
    [39018418] = {},
    [46377208] = {},
    [47917274] = {},
    [48495154] = {},
    [50278321] = {},
    [61057953] = {},
    [62296972] = {},
}, dirt)
