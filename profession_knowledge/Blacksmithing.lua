local myname, ns = ...

local dfbsknowledge = {
    label = "Blacksmith's Knowledge",
	note= "This can only be looted once per character.",
    requires = ns.PROF_DF_BLACKSMITHING,
    group = "professionknowledge",
	minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [22008700] = {
		note = "Apex Canopy; four yellow Enchanted Bulwarks surrounding a sword on a pedestal.",
		loot = {
			201007, -- Ancient Monument
		},
		quest = nil,
	},
    [65502570] = {
		note = "Scalecracker Keep, ingot on the ground near a big hut next to a forge.",
		loot = {
			201005, -- Curious Ingots
		},
		quest = nil,
	},
    [35506430] = {
		note = "West of Obsidian Bulwark by a lava river, near a fishing trainer. Kick 3 ingots into the lava to spawn a mob. Chest that spawns afterward contains the item. Just north of {item:201010:Qalashi Weapon Diagram}.",
		loot = {
			201008, -- Molton Ingot
		},
		quest = nil,
	},
    [34506701] = {
		note = "West of Obsidian Bulwark in an island surrounded by lava, on top of an anvil. Just south of {item:201008:Molten Ingot}.",
		loot = {
			201010, -- Qalashi Weapon Diagram
		},
		quest = nil,
	},
}, dfbsknowledge)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [81103790] = {
		note = "Inside a cave west of Rusza'thar Reach. Cave inhabited by neutral Shale Giants",
		loot = {
			201004, -- Ancient Spear Shards
		},
		path = 79403650,
		quest = nil,
	},
    [50906650] = {
		note = "Island in the sea, inside a hut.",
		loot = {
			201009, -- Falconer Gauntlet Drawings
		},
		quest = nil,
	},
}, dfbsknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [53106530] = {
		note = "Azure Archives, inside a small cave. Blocked by a Rock Wall, so you will need to be a miner or get one to help you open the wall.",
		loot = {
			201011, -- Spelltouched Tongs
		},
		quest = nil,
	},
}, dfbsknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [52208050] = {
		note = "Shifting Sands, west of the Shifting Sands flightpoint. Inside a building, a bit high up.",
		loot = {
			201006, -- Draconic Flux
		},
		quest = nil,
	},
}, dfbsknowledge)
