local myname, ns = ...

local recipe = {
    atlas="poi-workorders",
    minimap=true,
}

ns.RegisterPoints(ns.VALDRAKKEN, {
    [09575623] = {
        quest=70731,
        loot={
            198106, -- Recipe: Tasty Hatchling's Treat
            197769, -- Tasty Hatchling's Treat
        },
        note="In barrel",
    },
}, recipe)
