local myname, ns = ...

ns.VALDRAKKEN = 2112
ns.WAKINGSHORES = 2022
ns.OHNAHRANPLAINS = 2023
ns.AZURESPAN = 2024
ns.THALDRASZUS = 2025
ns.FORBIDDENREACH = 2026
ns.FORBIDDENREACHINTRO = 2118 -- Dracthyr

ns.FACTION_MARUUK = 2503
ns.FACTION_DRAGONSCALE = 2507

ns.MAXLEVEL = {ns.conditions.QuestComplete(67030), ns.conditions.Level(70)}
ns.DRAGONRIDING = ns.conditions.SpellKnown(376777)

-- Dragonflight Professions (used for profession knowledge)
ns.PROF_DF_ALCHEMY = ns.conditions.SpellKnown(366261) -- Dragon Isles Alchemy
ns.PROF_DF_BLACKSMITHING = ns.conditions.SpellKnown(365677) -- Dragon Isles Blacksmithing
ns.PROF_DF_ENCHANTING = ns.conditions.SpellKnown(366255) -- Dragon Isles Enchanting
ns.PROF_DF_ENGINEERING = ns.conditions.SpellKnown(366254) -- Dragon Isles Engineering
ns.PROF_DF_INSCRIPTION = ns.conditions.SpellKnown(366251) -- Dragon Isles Inscription
ns.PROF_DF_JEWELCRAFTING = ns.conditions.SpellKnown(366250) -- Dragon Isles Jewelcrafting
ns.PROF_DF_LEATHERWORKING = ns.conditions.SpellKnown(366249) -- Dragon Isles Leatherworking
ns.PROF_DF_TAILORING = ns.conditions.SpellKnown(366258) -- Dragon Isles Tailoring

ns.hiddenConfig = {
    groupsHidden = true,
}

ns.defaults.profile.groupsHiddenByZone[ns.WAKINGSHORES] = {
    scoutpack = true,
}
ns.defaults.profile.groupsHiddenByZone[ns.OHNAHRANPLAINS] = {
    scoutpack = true,
}

ns.groups["junk"] = BAG_FILTER_JUNK
ns.groups["scoutpack"] = "Expedition Scout's Pack"
ns.groups["glyphs"] = "Dragon Glyphs"
ns.groups["dailymount"] = "Daily Mounts"
ns.groups["races"] = "{achievement:15939:Dragon Racing Completionist}"
ns.groups["professionknowledge"] = "Profession Knowledge Points"

-- Intro:
-- Talked to Azurathel: 72285
-- Talked to Genn and Shaw: 72286
-- Talked to Turalyon and Shaw: 72287

-- Rescued Waddles: 70872

-- Talked to Lethanak at the Life Pools: 72059

-- unlocked dragon customization: 68797

-- TODO achievements:
-- Selfie achievements: Framing A New Perspective (16634), That's Pretty Neat! (16446)
-- Fragments of History (16323)
