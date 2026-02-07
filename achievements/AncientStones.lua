local myname, ns = ...

local stone = ns.nodeMaker{
    atlas="DungeonStoneCheckpointDeactivated",
    minimap=true, scale=1.2,
}

-- Ancient Stones of the Waking Shores
ns.RegisterPoints(ns.WAKINGSHORES, {
    [74155722] = {criteria=58804}, -- So Close, So Far
    [24235338] = {criteria=58805}, -- One Small Part
    [26155637] = {criteria=58806}, -- Neltharus Stands
    [60716695] = {criteria=58807}, -- Welcoming the First
    [51622006] = {criteria=58808}, -- Learn and Grow
}, stone{achievement=17561})

-- Ancient Stones of the Ohn'ahran Plains
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [43525652] = {criteria=58809}, -- The Gnoll Wars
    [24756593] = {criteria=58810}, -- Your Dreamer
    [32245138] = {criteria=58811}, -- Dreams in Emerald
    [67024370] = {criteria=58812}, -- The First Kurnal
    [38626671] = {criteria=58813}, -- Wind, Wood, Water
}, stone{achievement=17562})

-- Ancient Stones of the Azure Span
ns.RegisterPoints(ns.AZURESPAN, {
    [56737034] = {criteria=58814}, -- Im'bunata's Blessing
    [07994563] = {criteria=58815}, -- A Solid Foundation
    [66406103] = {criteria=58816}, -- Attention: Immediate Evacuation
    [60344973] = {criteria=58817}, -- The Vow
    [77403112] = {criteria=58818}, -- Vakthros Maintenance
}, stone{achievement=17563})

-- Ancient Stones of Thaldraszus
ns.RegisterPoints(ns.THALDRASZUS, {
    [42757040] = {criteria=58819}, -- Mighty Ducks
    [60068498] = {criteria=58820}, -- A Timely Message
    [58185805] = {criteria=58821}, -- Keeper's Blessing
    [52353875] = {criteria=58822}, -- Guardian Wings
    [58406773] = {criteria=58823}, -- Together Bound
    [62401592] = {criteria=58824}, -- Caretaker's Notes
}, stone{achievement=17564})
ns.RegisterPoints(ns.VALDRAKKEN, {
    [57148136] = {criteria=58825}, -- Valdrakken
}, stone{achievement=17564, parent=true})

-- Ancient Stones of Zaralek
ns.RegisterPoints(ns.ZARALEKCAVERN, {
    [43282372] = {criteria=58826}, -- Demanding Perfection
    [47384855] = {criteria=58827}, -- Binding Oaths
    [61257181] = {criteria=58828}, -- Primal Power
}, stone{achievement=17567})
