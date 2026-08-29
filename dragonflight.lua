local myname, ns = ...

ns.hiddenConfig = {}

ns.defaults.profile.groupsHidden = {
    scoutpack = true,
    disturbeddirt = true,
    tuskarrchests = true,
    warsupply = true,
    titanchests = true,
}

ns.defaults.profile.achievementsHidden = {
    [16545] = true, -- The Best at What I Do
}

ns.groups["junk"] = BAG_FILTER_JUNK
ns.groups["scoutpack"] = "{spell:388272:Lost Expedition Scout Packs}"
ns.groups["disturbeddirt"] = "{spell:340561:Disturbed Dirt}"
ns.groups["magicbound"] = "{npc:191905:Magic-Bound Chest}"
ns.groups["tuskarrchests"] = "{item:200071:Sacred Tuskarr Totem}"
ns.groups["warsupply"] = "War Supply Chest"
ns.groups["titanchests"] = "Titan Chest"
ns.groups["glyphs"] = GLYPHS
ns.groups["dailymount"] = "Daily Mounts"
ns.groups["races"] = "{spell:369968:Racing}"
ns.groups["professionknowledge"] = "Profession Knowledge"
ns.groups["hunts"] = "{achievement:16540:Hunt Master}"

ns.SUPERRARE = ns.nodeMaker{
    texture=ns.atlas_texture("VignetteKillElite", {r=1, g=0.5, b=1, scale=1.5}),
    note="This is a \"super rare\" which can drop higher level loot",
}

--[[
notes:
Intro:
Talked to Azurathel: 72285
Talked to Genn and Shaw: 72286
Talked to Turalyon and Shaw: 72287

Rescued Waddles: 70872

Talked to Lethanak at the Life Pools: 72059

unlocked dragon customization: 68797

Herbalism: looted Dreambloom Petal 71858 71859
Inscriptions: looted Iskaaean Trading Ledger 66376

Gilneas Reclaimed: after 79137, can loot Tess's Peacebloom (211788) @ 217 48855295, quest 79474

--]]
