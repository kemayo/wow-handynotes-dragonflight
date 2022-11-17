local myname, ns = ...

ns.WAKINGSHORES = 2022
ns.OHNAHRANPLAINS = 2023
ns.AZURESPAN = 2024
ns.THALDRASZUS = 2025
ns.FORBIDDENREACH = 2026
ns.FORBIDDENREACHINTRO = 2118 -- Dracthyr

ns.FACTION_DRAGONSCALE = 2507

ns.MAXLEVEL = {ns.conditions.QuestComplete(67030), ns.conditions.Level(70)}
ns.DRAGONRIDING = ns.conditions.SpellKnown(376777)

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

-- Intro:
-- Talked to Azurathel: 72285
-- Talked to Genn and Shaw: 72286
-- Talked to Turalyon and Shaw: 72287

-- Rescued Waddles: 70872
