local myname, ns = ...

local HIGHEST = {
	achievement=15890,
	minimap=false, -- there's a flag once they're unlocked
	texture=ns.atlas_texture("racing", {r=0, g=1, b=0}),
	hide_before={
		ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 7),
		ns.conditions.GarrisonTalent(2164),
	},
}

ns.RegisterPoints(ns.WAKINGSHORES, {
	[23835308] = {},
	[43976294] = {},
	[54797412] = {},
	[56534513] = {},
	[73353884] = {},
}, HIGHEST)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
	[28317764] = {},
	[30393646] = {},
	[57753080] = {},
	[86313928] = {},
}, HIGHEST)

ns.RegisterPoints(ns.AZURESPAN, {
	[31912703] = {},
	[37466620] = {},
	[46142498] = {},
	[63084867] = {},
	[71986162] = {},
	[77431837] = {},
}, HIGHEST)

ns.RegisterPoints(ns.THALDRASZUS, {
	[34048484] = {},
	[46107397] = {},
	[50168163] = {},
	[65727498] = {},
	[66195378] = {},
}, HIGHEST)
