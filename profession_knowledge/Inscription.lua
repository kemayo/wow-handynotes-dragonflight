local myname, ns = ...

local dfinsknowledge = {
    label = "Inscriptionist's Knowledge",
	note = "This can only be looted once per character.",
    requires = ns.conditions.Profession(ns.PROF_DF_INSCRIPTION),
    hide_before = ns.conditions.Profession(ns.PROF_DF_INSCRIPTION, 25),
    group = "professionknowledge",
	minimap = true,
}
-- https://www.wowhead.com/guide/professions/knowledge-point-treasure-locations-dragon-isles
ns.RegisterPoints(ns.WAKINGSHORES, {
    [67905800] = {
		note = "In a crate behind a small stone table. Loot this before looting the {item:198669:How to Train Your Whelpling} in Valdrakken item due to a possible bug!",
		loot = {
			198704, -- Pulsing Earth Rune
		},
		quest = nil,
	},
}, dfinsknowledge)

ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [85702520] = {
		note = "Timberstep Outpost, hanging on tent entrance.",
		loot = {
			198703, -- Sign Language Reference Sheet
		},
		quest = nil,
	},
}, dfinsknowledge)

ns.RegisterPoints(ns.AZURESPAN, {
    [46202390] = {
		note = "Cobalt Assembly, inside a building on an upper level.",
		loot = {
			198693, -- Dusty Darkmoon Card
		},
		quest = nil,
	},
    [43703090] = {
		note = "Behind an Arcane Commander.",
		loot = {
			198686, -- Frosted Parchment
		},
		quest = nil,
	},
}, dfinsknowledge)

ns.RegisterPoints(ns.THALDRASZUS, {
    [56304120] = {
		note = "West of Algeth'ar Academy entrance, on a table near a big telescope. Tome #1",
		loot = {
			198659, -- Forgetful Apprentice's Tome #1
		},
		quest = 70264,
		vignette = 5291,
		hide_before = false, -- this one doesn't require a specific level of inscription to collect
	},
    [47244010] = {
		note = "Above Algeth'era FP, just west in a small building. Interactable {item:380584:Curious Glyph} inside. Click and phase, cross the bridge with some 70 mobs, and kill the neutral mob inside the house. Deliver its dropped item to the glyph to get the item. Tome #2",
		loot = {
			198659, -- Forgetful Apprentice's Tome #2
		},
		quest = nil,
	},
    [56104090] = {
		note = "Speak to {npc:194856:Siennagosa}. Offer to help set back her Darkmoon Deck. Scattered at her feet are 8 Darkmoon cards. Click them in the correct order (Ace through 8). Speak to her afterward to get the deck.",
		loot = {
			201015, -- Counterfit Darkmoon Deck
		},
		quest = nil,
	},
}, dfinsknowledge)

ns.RegisterPoints(ns.VALDRAKKEN, {
    [13206368] = {
		note = "Little Scales Day Care area, brown book lying in the sandbox.\nLoot the {item:198704:Pulsing Earth Rune} in Waking Shores before looting this due to a possible bug!",
		loot = {
			198669, -- How to Train Your Whelpling
		},
		quest = nil,
	},
}, dfinsknowledge)
