local myname, ns = ...

local elusive = {
    requires = ns.conditions.Profession(ns.PROF_DF_SKINNING),
    achievement = 18833,
    texture = ns.atlas_texture("Vehicle-Trap-Gold", {r=0.5,g=1,b=1,scale=1.2}),
    minimap = true,
    note = "With at least 40 points in Mastery, place {item:193906:Elusive Creature Bait} here to summon. You don't have to summon to get credit, but you do have to be a Skinner.",
}

ns.RegisterPoints(ns.WAKINGSHORES, {
    [54695859] = {criteria=61477, npc=195492}, -- Elusive Deepwater Salamanther
    [44757817] = {criteria=61478, npc=195509}, -- Elusive Proto Skyterror
}, elusive)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [54965519] = {criteria=61475, npc=195465}, -- Elusive Tempest Lizard
    [24665872] = {criteria=61480, npc=195541}, -- Elusive Flourishing Quillbloom
}, elusive)

ns.RegisterPoints(ns.AZURESPAN, {
    [23193381] = {criteria=61473, npc=194489}, -- Elusive Elder Drake
    [64263026] = {criteria=61474, npc=194491}, -- Elusive Elder Frigidpelt
}, elusive)

ns.RegisterPoints(ns.THALDRASZUS, {
    [48155073] = {criteria=61476, npc=195472}, -- Elusive Ferocious Titanfang
    [56157063] = {criteria=61479, npc=195518}, -- Elusive Cliffdweller Vorquin
}, elusive)

ns.RegisterPoints(ns.FORBIDDENREACH, {
    [40756068] = {criteria=61481, npc=202436}, -- Elusive Frenzied Amberfur
    [44724002] = {criteria=61482, npc=202441}, -- Elusive Auric Argali
}, elusive)

ns.RegisterPoints(ns.ZARALEKCAVERN, {
    [59603953] = {criteria=61483, npc=204821}, -- Elusive Crystalscale Stonecleaver
    [43784807] = {criteria=61484, npc=204831}, -- Elusive Magma Cobra
}, elusive)
