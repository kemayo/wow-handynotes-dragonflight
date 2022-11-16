local myname, ns = ...

ns.WAKINGSHORES = 2022
ns.OHNAHRANPLAINS = 2023
ns.AZURESPAN = 2024
ns.THALDRASZUS = 2025
ns.FORBIDDENREACH = 2026
ns.FORBIDDENREACHINTRO = 2118 -- Dracthyr

ns.FACTION_DRAGONSCALE = 2507

ns.MAXLEVEL = {ns.conditions.QuestComplete(67030), ns.conditions.Level(70)}

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


-- Rescued Waddles: 70872
