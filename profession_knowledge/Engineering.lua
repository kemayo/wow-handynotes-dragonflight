local myname, ns = ...

local dfengknowledge = {
    label = "Engineer's Knowledge",
	note= "This can only be looted once per character.",
    requires = ns.PROF_DF_ENGINEERING,
    group = "professionknowledge",
	minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [56004490] = {
		note = "Concord Observatory, north of Ruby Life Pools flight point, high up with pillar-like buildings. Need to pick up 4 different items to loot the rocket. Ashes are in the same building; other 3 items are in the bigger building across the open area.",
		loot = {
			201014, -- Boomthyr Rocket
		},
		quest = nil,
		related = {
			[56054494] = {
			label = "Note on the floor.",
			note = "Read this first!",
			},
			[55924519] = {
			label = "{item:198815:Ash}",
			},
			[57844446] = {
			label = "Look for {item:198814:Boom Fumes}/{item:198817:Durable Crystal}/{item:198816:Aerospace Grade Draconium} around this area.",
			},
		},
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