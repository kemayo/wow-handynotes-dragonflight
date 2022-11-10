local myname, ns = ...

ns.hiddenConfig = {
    groupsHidden = true,
}

ns.groups["junk"] = BAG_FILTER_JUNK

ns.MAXLEVEL = {ns.conditions.QuestComplete(67030), ns.conditions.Level(70)}
