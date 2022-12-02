local myname, ns = ...

local dfalcknowledge = {
    label = "Alchemist's Knowledge",
	note= "This can only be looted once per character.",
    requires = ns.PROF_DF_ALCHEMY,
    group = "professionknowledge",
	minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [25107330] = {
		note = "Dragonbane Keep, near the entrance to the event boss. Collectible mug is between a lot of elite trash.",
		loot = {
			198685, -- Well Insulated Mug
		},
		quest = nil,
	},
    [55008100] = {
		note = "Middle of the Icy Crater",
		loot = {
			198663, -- Frostforged Potion
		},
		quest = nil,
	},
}, dfalcknowledge)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [79208380] = {
		note = "Deep inside cave SE of Forkriver Crossing. It's in a bottle near a dead Expedition Scout in the water.",
		loot = {
			198710, -- Canteen of Suspicious Water
		},
		quest = nil,
	},
}, dfalcknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [16403850] = {
		note = "North of Iskaara inside a large green cauldron between gnoll trash.",
		loot = {
			198599, -- Experimental Decay Sample
		},
		quest = nil,
	},
    [67001320] = {
		note = "Outside Timbermaw log house next to vase.",
		loot = {
			198712, -- Firewater Power Sample
		},
		quest = nil,
	},
}, dfalcknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [55203050] = {
		note = "Under a rock overhang. Marked as Mysterious Cauldron. There are 3 cauldrons and you need to drop a nearby docile dub on each on each. May explode or spawn an Expanded Angry Cub.",
		loot = {
			201003, -- Furry Gloop
		},
		quest = nil,
	},
    [59503840] = {
		note = "Small purple glowing potion, hidden in bushes. Difficult to see.",
		loot = {
			198697, -- Contraband Concoction
		},
		quest = nil,
	},
}, dfalcknowledge)
