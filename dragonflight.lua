local myname, ns = ...

ns.hiddenConfig = {
    groupsHidden = true,
}

ns.groups["junk"] = BAG_FILTER_JUNK

ns.WAKINGSHORES = 2022
ns.OHNAHRANPLAINS = 2023
ns.AZURESPAN = 2024
ns.THALDRASZUS = 2025
ns.FORBIDDENREACH = 2026

ns.FACTION_DRAGONSCALE = 2507

ns.MAXLEVEL = {ns.conditions.QuestComplete(67030), ns.conditions.Level(70)}
