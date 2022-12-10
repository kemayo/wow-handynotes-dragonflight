local myname, ns = ...

-- TODO: That's Pretty Neat! (16446)

-- Framing A New Perspective
local framing = {
    achievement=16634,
    atlas="Vehicle-TempleofKotmogu-PurpleBall",
    minimap=true,
    note="Use the {item:122674} and take a picture while standing in the purple glowing area only visible through the camera",
}
ns.RegisterPoints(ns.THALDRASZUS, {
    [38987042] = {criteria=55995, quest=72143}, -- The Cascades
    [55737321] = {criteria=55996, quest=72144, note="On the arch"}, -- Passage of Time
    [68245834] = {criteria=55997, quest=72145}, -- Vault of the Incarnates
    [57195871] = {criteria=55998, quest=72146}, -- Tyrhold
    [50254027] = {criteria=55999, quest=72147, note="Top of the tower"}, -- Algeth'era Court
    [63431348] = {criteria=56000, quest=72148}, -- Veiled Ossuary
    [39414688] = {criteria=56001, quest=72149, note="On floating island"}, -- Serene Dreams Spa
    [48276683] = {criteria=56002, quest=72150}, -- Shadow Ledge
    [46945949] = {criteria=56004, quest=72152}, -- Tyrhold Reservoir
}, framing)
ns.RegisterPoints(ns.VALDRAKKEN, {
    [56244442] = {criteria=55994, quest=72142, note="Top of the tower", parent=true}, -- The Seat of the Aspects
    [56654315] = {criteria=56003, quest=72151, note="On ground floor", parent=true}, -- Valdrakken's Portal Room
}, framing)
