local myname, ns = ...

local dfjcknowledge = {
    label = "Jewelcrafter's Knowledge",
	note= "This can only be looted once per character.",
    requires = ns.PROF_DF_JEWELCRAFTING,
    group = "professionknowledge",
	minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [50404510] = {
		note = "Right before a waterfall, look for a beaver's nest. Underneath the tree cover next to the nest is a blue gem.",
		loot = {
			198687, -- Closely Guarded Shiny
		},
		quest = 70292,
	},
    [33966366] = {
		note = "Dragonbane Keep, locked behind a minigame. Click 3 different crystals on small islands inside the magma. Kill the big magma frog jumping around before you do this. After clicking the first one, you only have a limited time to click the other two. Once all 3 are channeling, the item is unlocked.",
		loot = {
			201017, -- Igneous Gem
		},
		quest = 70273,
	},
}, dfjcknowledge)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [25203540] = {
		note = "Storm Scar, inside a cave, floating in the air.",
		loot = {
			198670, -- Lofty Malygite
		},
		quest = nil,
	},
    [61771302] = {
		note = "Neltharan Plains, crumbled building with a tree growing inside. Look for it under the tree's roots. Comes with a bonus treasure.",
		loot = {
			198660, -- Fragmented Key
		},
		quest = 70263,
	},
}, dfjcknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [45006130] = {
		note = "Azure Archives, next to a small pond/starting point of a river.",
		loot = {
			198664, -- Crystalline Overgrowth
		},
		quest = nil,
	},
    [44606120] = {
		note = "Azure Archives, locked behind a minigame. There is a chest inside the pond with a large silver key. Click it to receive a buff. While buff is active, click 3 nearby crystals.",
		loot = {
			201016, -- Harmonic Crystal Harmonizer
		},
		quest = nil,
	},
}, dfjcknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [59856523] = {
		note = "Tyrhold, right at the base of the letter 'T' on the map.",
		loot = {
			198682, -- Alexstraszite Cluster
		},
		quest = 70285,
	},
    [56914372] = {
		note = "Inside the lantern.",
		loot = {
			198656, -- Painter's Pretty Jewel
		},
		quest = nil,
	},
}, dfjcknowledge)
