local myname, ns = ...

-- Novac pointed out on discord that the race-times are stored as a currency,
-- and IDs can be found on https://wowpedia.fandom.com/wiki/CurrencyID
-- ...though the names are unhelpful
-- C_CurrencyInfo.GetCurrencyInfo(id)

-- TODO: this could be greatly simplified if I properly add multiple-achievement support to core...

local Race = ns.Class{
	Initialize=function(self, questname, achievements)
		self._questname=questname
		self._achievements=achievements
	end,
	atlas="racing", scale=1.2,
	group="races",
	OnTooltipShow=function(self, tooltip)
		for _, achievementid in pairs(self._achievements) do
			local _, name, _, complete = GetAchievementInfo(achievementid)
			tooltip:AddDoubleLine(BATTLE_PET_SOURCE_6, name or achievementid,
			    nil, nil, nil,
			    complete and 0 or 1, complete and 1 or 0, 0
			)
		end
	end,
	__get={
		label=function(self)
			self.label = ("{questname:%d}"):format(self._questname)
			return self.label
		end,
		found=function(self)
			local found = {}
			for _, aid in ipairs(self._achievements) do
				table.insert(found, ns.conditions.Achievement(aid))
			end
			self.found = found
			return found
		end,
	},
}

ns.RegisterPoints(ns.WAKINGSHORES, {
	[63307090] = Race(72434, {15698, 15704}), --Ruby Lifeshrine Loop
	[47028558] = Race(66721, {15714, 15717}), --Wild Preserve Slalom
	[41956730] = Race(66727, {15726, 15729}), --Emberflow Flight
	[23278430] = Race(66732, {15732, 15735}), --Apex Canopy River Run
	[55424119] = Race(66777, {15738, 15741}), --Uktulut Coaster
	[73203396] = Race(66786, {15744, 15747}), --Wingrest Roundabout
	[62787402] = Race(66710, {15707, 15711}), --Flashfrost Flyover
	[42589446] = Race(66725, {15720, 15723}), --Wild Preserve Circuit
})
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
	[63753051] = Race(66835, {15759, 15762}), -- Sundapple Copse Circuit
	[86263582] = Race(66877, {15765, 15768}), -- Fen Flythrough
	[80897219] = Race(66880, {15771, 15774}), -- Ravine River Run
	[25715507] = Race(66885, {15777, 15780}), -- Emerald Garden Ascent
	[59933555] = Race(66921, {15784}), -- Maruukai Dash
	[47497062] = Race(66933, {15787}), -- Mirror of the Sky Dash
	[43746676] = Race(70710, {16304, 16307}), -- River Rapids Route
})
ns.RegisterPoints(ns.AZURESPAN, {
	[47914078] = Race(66946, {15790, 15793}), -- The Azure Span Sprint
	[20952262] = Race(67002, {15801, 15804}), -- The Azure Span Slalom
	[71292466] = Race(67031, {15820, 15823}), -- The Vakthros Ascent
	[16564937] = Race(67296, {15837, 15840}), -- Iskaara Tour
	[48493578] = Race(67565, {15843, 15846}), -- Frostland Flyover
	[42265674] = Race(67741, {15849, 15852}), -- Archive Ambit
})
ns.RegisterPoints(ns.THALDRASZUS, {
	[57767501] = Race(67095, {15829, 15832}), -- The Flowing Forest Flight
	[57256690] = Race(69957, {15857, 15860}), -- Tyrhold Trial
	[37654894] = Race(70051, {15893, 15896}), -- Cliffside Circuit
	[60264179] = Race(70059, {15899, 15902}), -- Academy Ascent
	[39487621] = Race(70157, {15905, 15908}), -- Garden Gallivant
	[58043367] = Race(70161, {15911, 15914}), -- Caverns Criss-Cross
})
