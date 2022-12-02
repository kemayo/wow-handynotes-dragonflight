local myname, ns = ...

local HIGHEST = {
	achievement=15890,
	achievementNotFound=true,
	minimap=false, -- there's a flag once they're unlocked
	texture=ns.atlas_texture("racing", {r=0, g=1, b=0}),
	requires=ns.DRAGONRIDING,
	hide_before={
		ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 7),
		ns.conditions.GarrisonTalent(2164),
	},
}

ns.RegisterPoints(ns.WAKINGSHORES, {
	[28714773] = {quest=70826}, -- was 23835308?
	[43976294] = {quest=70825},
	[54797412] = {quest=71204},
	[56534513] = {quest=70823},
	[73353884] = {quest=70824},
}, HIGHEST)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
	[28317764] = {quest=71200},
	[30393646] = {quest=71207},
	[57753080] = {quest=70827},
	[86313928] = {quest=71208},
}, HIGHEST)

ns.RegisterPoints(ns.AZURESPAN, {
	[31912703] = {quest=71215},
	[37466620] = {quest=71216},
	[46142498] = {quest=71218},
	[63084867] = {quest=71220},
	[74854324] = {quest=71221}, -- was 71986162?
	[77431837] = {quest=71217},
}, HIGHEST)

ns.RegisterPoints(ns.THALDRASZUS, {
	[34048484] = {quest=71222},
	[46107397] = {quest=70024},
	[50168163] = {quest=70039},
	[65727498] = {quest=71223},
	[64645672] = {quest=71224}, -- was 66195378?
}, HIGHEST)
