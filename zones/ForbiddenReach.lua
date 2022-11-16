local myname, ns = ...

local MAPID = ns.FORBIDDENREACHINTRO -- Forbidden Reach

ns.RegisterPoints(MAPID, {
	[42113436] = { -- Bag of Enchanted Winds
		quest=65909,
		loot={
			193840, -- Bag of Enchanted Winds,
		},
		spell=375497,
		note="{spell:369536:Soar}",
		vignette=5042,
	},
	[41842306] = { -- Eviscerated Argali
		quest=67013,
		label="{npc:191992:Eviscerated Argali}",
		loot={
			194511,
		},
		spell=377087,
		vignette=5137,
	},
	-- rares
	[32884100] = { -- Deathrip
		quest=66966,
		npc=191729,
		loot={
			197725, -- Deathrip's Curled Claw
		},
		vignette=5129,
	},
	[28473653] = { -- Scytherin
		quest=66967,
		npc=191713,
		loot={
			196435, -- Scytherin's Barbed Necklace
		},
		path=33553370,
		vignette=5130,
	},
	[56496548] = { -- Ketess the Pillager
		quest=66975,
		npc=191746,
		loot={
			194741, -- Earthbound Tome
		},
		vignette=5133,
	},
	[79567443] = { -- Tazenrath
		quest=66973,
		npc=182280,
		loot={
			194883, -- Runic Wing
		},
	},
})

ns.RegisterPoints(2109, { -- War Creche
	[38127448] = {
		quest=66010,
		spell=375607,
		loot={
			193861, -- Blue Magic Wand
		},
	},
})
