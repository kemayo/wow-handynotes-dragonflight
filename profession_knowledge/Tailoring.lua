local myname, ns = ...

local dftlrknowledge = {
    label = "Tailor's Knowledge",
	note= "This can only be looted once per character.",
    requires = ns.conditions.Profession(ns.PROF_DF_TAILORING),
    hide_before = ns.conditions.Profession(ns.PROF_DF_TAILORING, 25),
    group = "professionknowledge",
	minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [74703790] = {
		note = "Wingrest Embassy, fluttering on top of one of the buildings a bit to the south.",
		loot = {
			198699, -- Mysterious Banner
		},
		quest = nil,
	},
    [24906970] = {
		note = "Dragonbane Keep. When doing the Siege of Dragonbane Keep, this is just outside the cave where the end boss spawns. It's a piece of fabric hanging on a tree. Requires some precision Dragonriding or a warlock portal to reach.",
		loot = {
			198702, -- Itinerant Singed Fabric
		},
		quest = nil,
	},
}, dftlrknowledge)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [32203800] = {
		note = "Nokhudon Hold. Sitting in a small hut on the floor right before entering the arena for the quest fight. 3 elites in the hut.",
		loot = {
			198692, -- Noteworthy Scrap of Carpet
		},
		quest = nil,
	},
    [66105290] = {
		note = "Cleverwood Hollow. Use the {item:380599:Catnip Frond} and collect it.",
		loot = {
			201020, -- Silky Surprise
		},
		quest = nil,
	},
}, dftlrknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [16203880] = {
		note = "Brackenhide Hollow - Elite mob area. A red carpet hanging on a tree within a makeshift tent.",
		loot = {
			198680, -- Decaying Brackenhide Blanket
		},
		quest = nil,
	},
    [40705450] = {
		note = "North of Azure Archives, in a small tower-like building full of mirror images of Kalecgos. Blue Cloth lying on the floor when you follow the stairs to the left.",
		loot = {
			198662, -- Intriguing Bolt of Blue Cloth
		},
		quest = nil,
	},
}, dftlrknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [60407970] = {
		note = "Temporal Conflux, on the northeasteast platform -- small banner inside a pile of sand.",
		loot = {
			198684, -- Miniature Bronze Dragonflight Banner
		},
		quest = nil,
	},
    [58604580] = {
		note = "Algeth'ar Academy, south of the dungeon portal, slightly on the left. {item:380763:Ancient Dragonweave Loom} is inside and starts a minigame where you connect the spools of thread to the center gem. Completing the game awards the item.",
		loot = {
			201019, -- Ancient Dragonweave Bolt
		},
		quest = nil,
	},
}, dftlrknowledge)
