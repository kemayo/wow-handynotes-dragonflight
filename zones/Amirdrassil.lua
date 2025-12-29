local myname, ns = ...

ns.RegisterPoints(ns.AMIRDRASSIL, {
	[55306436] = {
		-- label="Kaldorei Bag",
		quest=82821,
		loot={213010}, -- Blue Kaldorei Pouch
		vignette=6010,
	},
	[53485575] = {
		-- label="Kaldorei Spear",
		quest=82823,
		loot={213012}, -- Night Elven Spear
		vignette=6011,
	},
	[47895689] = {
		-- label="Kaldorei Shield",
		quest=82829,
		loot={213011}, -- Night Elven Shield
		vignette=6012,
	},
	[58455191] = {
		-- label="Kaldorei Horn",
		quest=82828,
		loot={213006}, -- Night Elven Horn
		vignette=6014,
	},
	[54687720] = {
		-- label="Kaldorei Bedroll",
		quest=82822,
		loot={213003}, -- Blue Kaldorei Bedroll
		vignette=6016,
	},
	[48287642] = {
		-- label="Kaldorei Bag",
		quest=82824,
		loot={213009}, -- Violet Kaldorei Bag
		vignette=6013,
	},
	[52541771] = {
		-- label="Kaldorei Backpack",
		quest=82825,
		loot={213005}, -- Blue Kaldorei Backpack
		vignette=6015,
	},
	[49197032] = {
		-- label="Kaldorei Horn",
		quest=82827,
		loot={213007}, -- Night Elven Signal
		vignette=6017,
	},
	[31301612] = {
		-- label="Kaldorei Dagger",
		quest=82826,
		loot={213008}, -- Kaldorei Bow Carver
		vignette=6018,
	},
	[51910590] = {
		-- label="Kaldorei Spyglass",
		quest=82830,
		loot={213013}, -- Kaldorei Sentinel's Spyglass
		vignette=6019,
	},
	[29042886] = {
		-- label="Kaldorei Moon Bow",
		quest=82831,
		loot={213160}, -- Kaldorei Moon Bow
		vignette=6020,
	},
})

ns.RegisterPoints(ns.AMIRDRASSIL, {
	[46507063] = { -- Quartermaster
		label="{npc:216286:Moon Priestess Lasara}",
		loot={
			210424, -- Darnassian Tabard
			210418, -- Darnassian Cloak
			210415, -- Darnassian Moonsilver Spaulders
			{257352, decor=true}, -- Large Brazier of Elune
		},
		note="Quartermaster",
	},
	[54096081] = {
		label="{npc:216284:Mythrin'dir}",
		loot={
			{248759, decor=true}, -- Amirdrassil Stool
			{246091, decor=true}, -- Bel'ameth Crafter's Tend
		},
		note="Trade Goods",
	},
	[48385358] = {
		label="{npc:216285:Ellandrieth}",
		loot={
			{251022, decor=true}, -- Bel'ameth Traveler's Pack
			{245625, decor=true}, -- Bel'ameth Bench
			{245704, decor=true}, -- Bel'ameth Barrel
			{246089, decor=true}, -- Bel'ameth Wooden Table
			{246100, decor=true}, -- Small Bel'ameth Tent
			{248401, decor=true}, -- Ornamental Kaldorei Glaive
			{245655, decor=true}, -- Filigree Moon Lamp
		},
		note="General Goods",
	},
}, {
	atlas="Banker", scale=1.2,
	minimap=true,
	showallloot=true,
})
