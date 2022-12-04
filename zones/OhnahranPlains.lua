local myname, ns = ...

local MAPID = ns.OHNAHRANPLAINS -- Ohn'ahran Plains

-- forgotten dragon treasure: 53246888

ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16299/treasures-of-the-ohnahran-plains
    [32413815] = { -- Nokhud Warspear
        criteria=54707,
        quest=67049,
        loot={
            200861, -- Stolen Shikaar Warspear
        },
        active={ns.conditions.Item(194540), ns.conditions.QuestComplete(67046), any=true}, -- Nokhud Armorer's Notes
        note="Find {item:194540} in other treasures"
    },
    [70533549] = { -- Slightly Chewed Duck Egg
        criteria=54708,
        quest=67950,
        loot={
            {199172, pet=3309}, -- Viridescent Duck 
        },
        active={ns.conditions.Item(195453), ns.conditions.QuestComplete(67718), any=true}, -- Ludo's Stash Map
        related={
            [61014337] = {label="{npc:192997}",quest=67718,loot={{195453,quest=67718}},atlas="poi-workorders",active=false,note="Pet to receive {item:195453}"}, -- Ludo
        },
        note="Fetch {item:195453} from {npc:192997}",
        vignette=5214,
    },
    [33205532] = { -- Emerald Gem Cluster
        criteria=54700,
        quest=70391,
        loot={
            200865, -- Glimmering Ysemerald Cluster
        },
        hide_before=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 21),
        active={ns.conditions.Item(198843), ns.conditions.QuestComplete(70392), any=true}, -- Emerald Gardens Explorer's Notes
        note="Find {item:198843} in other treasures"
    },
    [73475616] = { -- Cracked Centaur Horn
        criteria=54709,
        quest=70402,
        loot={
            200869, -- Ohn Lite Branded Horn
        },
    },
    [82307338] = { -- Gold Swog Coin
        criteria=54710,
        quest=70379,
        loot={
            199338, -- Copper Coin of the Isles
        },
        note="In cave",
        path=81667175,
    },
    [51985830] = { -- Yennu's Boat
        criteria=54711,
        quest=70400,
        loot={
            {200878, toy=true}, -- Wheeled Floaty Boaty Controller
        },
        note="In the water",
    },
}, {
    achievement=16299, -- Treasures
    minimap=true,
})
ns.RegisterPoints(MAPID, {
    [56017879] = {
        quest=71033,
        label="Water-Bound Chest",
        loot={
            197955, -- Sword of the Eternal Guard
        },
        note="Survive the trial of the elements",
        vignette=5407,
    },
    [82317322] = { -- The Great Swog
        npc=191608,
        loot={
            199341, -- Regurgitated
            199342, -- Weighted
            202102, -- Immaculate
            {202042, toy=true, note="In bags"}, -- Aquatic Shades
            {199234, note="In bags"}, -- Schematic: Khaz'gorite Fisherfriend
        },
        active={ns.conditions.Item(199338), ns.conditions.Item(199339), ns.conditions.Item(199340), any=true},
        texture=ns.atlas_texture("Fishing-Hole", {r=1, g=0.5, b=0.5}), scale=1.2,
        minimap=true,
        path=81657175,
    },
})

-- Divine Kiss of Ohn'ahra mount:
ns.RegisterPoints(MAPID, {
    [57593192] = { -- Ohn'ahra
        npc=194796,
        quest=72512, -- A Whispering Breeze
        loot={
            {198821, mount=1545},
        },
        atlas="SanctumUpgrades-Venthyr-32x32",
        hide_before=ns.conditions.QuestComplete(66676), -- Sneaking In
        note="* 3x {item:201929} from {npc:186151:Balakar Khan} in The Nokhud Offensive\n* 1x {item:201323:Essence of Awakening} from {npc:196707:Quartermaster Huseng}\n* 1x {item:191507:Exultant Incense} (Rank 3) from Alchemy",
        route={57593192,52006320,highlightOnly=true},
    },
    [52006320] = { -- Godoloto
        -- TODO: confirm location
        npc=190022,
        quest=72512, -- A Whispering Breeze
        texture=ns.atlas_texture("SanctumUpgrades-Venthyr-32x32",{r=0.5, g=1, b=1}),
        active=ns.conditions.Item(201929, 3),
        hide_before=ns.conditions.QuestComplete(66676), -- Sneaking In
        note="Bring 3x {item:201929} from {npc:186151:Balakar Khan} in The Nokhud Offensive to start {quest:72512}",
        route=57593192,
    },
}, {
    minimap=true,
})

-- Lizi's Reins mount:
-- https://www.wowhead.com/beta/item=192799/lizis-reins#comments:id=5443480
-- (It's the Patient Bufonid again)
ns.RegisterPoints(MAPID, {
    [56127701] = {
        npc=190014, -- Initiate Radiya
        quest=71195, --todo: generic-daily?
        progress={71196, 71197, 71198, 71199, 71195},
        loot={
            {192799, mount=1639}, -- Lizi's Reins
        },
        hide_before=ns.conditions.QuestComplete(66676), -- Sneaking In
        active=ns.conditions.MajorFaction(2503, 9), -- Maruuk rank 9
        atlas="stablemaster", minimap=true,
        note=function()
            local function q(quest, label)
                return (C_QuestLog.IsQuestFlaggedCompleted(quest) and GREEN_FONT_COLOR or RED_FONT_COLOR):WrapTextInColorCode(label)
            end
            return "Gather items over a week of quests:\n"..
                q(71196, "Day 1") ..": 20x {item:192615} from insects\n"..
                q(71197, "Day 2") ..": 20x {item:192658} from plant mobs\n"..
                q(71198, "Day 3") ..": 10x {item:194966} from fishing\n"..
                q(71199, "Day 4") ..": 10x {item:192636} from animals\n"..
                q(71195, "Day 5") ..": 1x {item:200598} from {npc:190015:Ohn Meluun}"
        end,
    },
    [53517898] = {
        npc=190015,
        quest=71195,
        hide_before=ns.conditions.QuestComplete(71199), -- day 4
        loot={200598}, -- Meluun's Green Curry
        atlas="food", minimap=true,
    },
}, {
    group="dailymount"
})

-- Honor Our Ancestors
local ancestor = ns.nodeMaker{
    achievement=16423,
    requires=ns.conditions.AuraActive(369277), -- Essence of Awakening
    atlas="poi-soulspiritghost",
}
ns.RegisterPoints(MAPID, {
    [85662085] = {
        label="{spell:369277:Essence of Awakening}",
        spell=369277,
        loot={
            {200630, toy=true}, -- Ohn'ir Windsage's Hearthstone
        },
        note="Get the buff, then go talk to the ghosts. They will want stuff...",
        related={
            [59703765] = ancestor{criteria=55302, quest=71167, active=ns.conditions.Item(197776)}, -- Maruukai Ancestor, Thrice-Spiced Mammoth Kabob (Cooking)
            [84902343] = ancestor{criteria=55303, quest=71168, active=ns.conditions.Item(200018)}, -- Timberstep Outpost Ancestor, Enchant Boots - Plainsrunner's Breeze (Enchanting)
            [75914208] = ancestor{criteria=55304, quest=71169, active=ns.conditions.Item(194690)}, -- Horn of Drusahl Ancestor, Horn o' Mead
            [73005500] = ancestor{criteria=55305, quest=71170, active=ns.conditions.Item(202070)}, -- Toghusuq Village Ancestor, Exceptional Pelt
            [84554842] = ancestor{criteria=55306, quest=71171, active=ns.conditions.Item(193470)}, -- Shikaar Highlands Ancestor, Feral Hide Drums (Leatherworking?)
            [74706980] = ancestor{criteria=55307, quest=71172, active=ns.conditions.Item(190327)}, -- The Carving Winds Ancestor, Awakened Air
            [63265727] = ancestor{criteria=55308, quest=71173, active=ns.conditions.Item(197788, 2)}, -- Sylvan Glade Ancestor, 2x Braised Bruffalon Brisket
            [54707838] = ancestor{criteria=55309, quest=71174, active=ns.conditions.Item(202071)}, -- Ohn'iri Springs Ancestor, Elemental Mote
            [41635670] = ancestor{criteria=55310, quest=71175, active=ns.conditions.Item(190501)}, -- Teerakai Ancestor, Primal Molten Greatbelt (Blacksmithing)
            [32757029] = ancestor{criteria=55311, quest=71176, active=ns.conditions.Item(191470, 5)}, -- The Eternal Kurgans Ancestor, 5x Writhebark (Herbalism)
        },
    },
}, {
    achievement=16423,
})

-- Rares
ns.RegisterPoints(MAPID, {
    -- https://www.wowhead.com/beta/achievement=16677/adventurer-of-the-ohnahran-plains
    --[[
    [] = { -- Sparkspitter Vrak
        criteria=56062,
        quest=nil,
        npc=193165,
        loot={},
    },
    --]]
    [50027484] = { -- Scav Notail
        criteria=56063,
        quest=69863,
        npc=193136,
        loot={},
        vignette=5187,
    },
    --[[
    [] = { -- Enraged Sapphire
        criteria=56064,
        quest=69840,
        npc=193142,
        loot={},
        vignette=5173,
    },
    [] = { -- Seeker Teryx
        criteria=56065,
        quest=nil,
        npc=193188,
        loot={},
    },
    --]]
    [31646421] = { -- Zenet Avis
        criteria=56066,
        quest=nil,
        npc=193209,
        loot={
            {200879, note="Hatches into..."}, -- Zenet Egg
            {198825, mount=1672}, -- Zenet Hatchling
        },
        note="Flying",
    },
    [87406140] = { -- Liskheszaera
        criteria=56067,
        quest=nil,
        npc=197009,
        loot={},
    },
    [29426783] = { -- Deadwaker Ghendish
        criteria=56068,
        quest=nil,
        npc=189652,
        loot={},
    },
    --[[
    [] = { -- Researcher Sneakwing
        criteria=56069,
        quest=70689,
        npc=196010,
        loot={},
        vignette=5378,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [62987932] = { -- Mikrin of the Raging Winds
        criteria=56070,
        quest=69857,
        npc=193173,
        loot={},
        vignette=5183,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Ronsak the Decimator
        criteria=56071,
        quest=69878,
        npc=193227,
        loot={},
        vignette=5205,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [53627281] = { -- Steamgill
        criteria=56072,
        quest=69667,
        npc=193123,
        loot={},
        vignette=5168,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --[[
    [] = { -- Malsegan
        criteria=56073,
        quest=69871,
        npc=193212,
        loot={},
        vignette=5195,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
    [60812677] = { -- Oshigol
        criteria=56074,
        quest=69877,
        npc=193235,
        loot={},
        note="Patrols",
        vignette=5199,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [74414762] = { -- Fulgurb
        criteria=56075,
        quest=69856,
        npc=193170,
        loot={},
        vignette=5182,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    [58596822] = { -- Windseeker Avash
        criteria=56076,
        quest=nil,
        npc=192045,
        loot={},
    },
    [49496663] = { -- Eaglemaster Niraak
        criteria=56077,
        quest=nil,
        npc=192020,
        loot={
            {197367, quest=69568}, -- Renewed Proto-Drake: Gray Hair
        },
        vignette=5138,
    },
    --[[
    [] = { -- Zarizz
        criteria=56078,
        quest=72364,
        npc=193140,
        loot={},
        vignette=5469,
    },
    [] = { -- Scaleseeker Mezeri
        criteria=56079,
        quest=69865,
        npc=193215,
        loot={},
        vignette=5190,
    },
    --]]
    [29554146] = { -- Shade of Grief
        criteria=56080,
        quest=nil, -- ...no quest changed
        npc=187559,
        loot={
            {196985, quest=69185}, -- Cliffside Wylderdrake: Horned Jaw
            {197382, quest=69583}, -- Renewed Proto-Drake: White Horns
        },
        vignette=5181, -- Solethus' Gravestone
    },
    --[[
    [] = { -- Nokhud Warmaster
        criteria=56081,
        quest=nil,
        npc=187219,
        loot={},
        vignette=5062,
    },
    --]]
    [85221544] = { -- Hamett
        criteria=56082,
        quest=nil,
        npc=187781,
        loot={},
    },
    [80364198] = { -- Hunter of the Deep
        criteria=56083,
        quest=nil, -- no quest tripped
        npc=188095,
        loot={}, -- supplies and centaur rep...
        vignette=5077, -- vignette wasn't actually shown, just a swarm of no-data vignettes
    },
    [80413867] = { -- Irontree
        criteria=56084,
        quest=66356,
        npc=188124,
        loot={},
        vignette=5078,
    },
    [72222321] = { -- Zerimek
        criteria=56085,
        quest=nil,
        npc=188451,
        loot={},
        vignette=5087,
    },
    --[[
    [] = { -- Sulfurion
        criteria=56086,
        quest=nil,
        npc=191842,
        loot={},
        vignette=5135,
    },
    [] = { -- Porta the Overgrown
        criteria=56087,
        quest=nil,
        npc=191950,
        loot={},
        vignette=5136,
    },
    [] = { -- The Jolly Giant
        criteria=56088,
        quest=nil,
        npc=195204,
        loot={},
        vignette=5352,
    },
    --]]
    [84214784] = { -- Windscale the Stormborn
        criteria=56089,
        quest=nil,
        npc=192364,
        loot={},
        vignette=5140,
    },
    [83786215] = { -- Vaniik the Stormtouched
        criteria=56090,
        quest=nil,
        npc=192453,
        loot={},
        vignette=5143, -- Vaniik the Corrupted
    },
    --[[
    [] = { -- Quackers the Terrible
        criteria=56091,
        quest=nil,
        npc=192557,
        loot={},
        vignette=5144,
    },
    [] = { -- Cinta the Forgotten
        criteria=56092,
        quest=nil,
        npc=195186,
        loot={},
        vignette=5351,
    },
    --]]
    [42804428] = { -- Rustlily
        criteria=56093,
        quest=nil,
        npc=195223,
        loot={},
    },
    [32823817] = { -- Makhra the Ashtouched
        criteria=56094,
        quest=nil,
        npc=195409,
        loot={},
        vignette=5365,
    },
    --[[
    [] = { -- The Great Enla
        criteria=56095,
        quest=nil,
        npc=196334,
        loot={},
    },
    [] = { -- Old Stormhide
        criteria=56096,
        quest=nil,
        npc=196350,
        loot={},
    },
    --]]
}, {
    achievement=16677, -- Adventurer
})
ns.RegisterPoints(MAPID, {
    [81447834] = { -- Seereel, the Spring
        achievement=16678, -- Adventurer of the *Azure Span*
        criteria=56118,
        quest=nil,
        npc=193710,
        loot={},
    },
    [81207780] = { -- Astray Splasher
        achievement=16678, -- Adventurer of the *Azure Span*
        criteria=56130,
        quest=nil,
        npc=197411,
        loot={},
    },
    [59926695] = { -- Prozela Galeshot
        quest=72815, -- 69968 also
        npc=193669,
        loot={
            {197383, quest=69584}, -- Renewed Proto-Drake: Heavy Horns
        },
        vignette=5240,
    },
    [44904923] = { -- Skaara
        quest=70783, -- 72847 also
        npc=192949,
        loot={
            200442, -- Basilisk Hide Jerkin
            198411, -- Claw of Preparedness
            {196976, quest=69176}, -- Cliffside Wylderdrake: Head Mane
        },
        vignette=5389,
    },
    [26356534] = { -- Ripsaw the Stalker
        quest=69851, -- also 72845
        npc=193153,
        loot={
            200137, -- Chitin Dreadbringer
        },
        vignette=5178,
    },
    [22996667] = { -- Territorial Coastling
        quest=69852, -- also 72851
        npc=193163,
        loot={
            200212, -- Sand-Encrusted Greaves
            200442, -- Basilisk Hide Jerkin
        },
        vignette=5179,
    },
    [26073414] = { -- Ty'foon the Ascended
        quest=66970, -- also 72852
        npc=191354,
        loot={
            198429, -- Typhoon Bringer
        },
        path=24503340,
        vignette=5131,
    },
    [72615598] = { -- Biryuk
        quest=nil,
        npc=193168,
        loot={}, -- only supplies and commendations
    },
    [63044855] = { -- Sunscale Behemoth
        quest=69837, -- 72849
        npc=193133,
        loot={
            {198409, toy=true},
        },
        note="Behind the waterfall",
    },
})

-- Who's a Good Bakar?
ns.RegisterPoints(MAPID, {
    [40915658] = { -- Alli
        criteria=55348,
        npc=197569,
    },
    [84272477] = { -- Baba
        criteria=55316,
        npc=189274,
        hide_before=ns.conditions.QuestComplete(66006), -- Return to Roscha
    },
    [48994107] = { -- Baga
        criteria=55329,
        npc=196871,
    },
    [60603980] = { -- Berrel
        criteria=55326,
        npc=195669,
    },
    [85132240] = { -- Elaichi
        criteria=55317,
        npc=187840,
        hide_before=ns.conditions.QuestComplete(65954), -- Release the Hounds
    },
    [76683055] = { -- Ellam
        criteria=55321,
        npc=187667,
        hide_before={ns.conditions.MajorFaction(ns.FACTION_MARUUK, 4), ns.conditions.OnQuest(66698)}, -- Counting Argali
    },
    [83902592] = { -- Gentara
        criteria=55320,
        npc=186189,
    },
    [80685891] = { -- Laila
        criteria=55331,
        npc=190043,
    },
    [61005230] = { -- Nahma
        criteria=55328,
        npc=192687,
    },
    [84162711] = { -- Pesca
        criteria=55319,
        npc=189278,
        hide_before=ns.conditions.QuestComplete(65954), -- Release the Hounds
    },
    [81115841] = { -- Rotti
        criteria=55330,
        npc=191405,
    },
    [71624965] = { -- Soyoo
        criteria=55347,
        npc=197514,
        hide_before=ns.conditions.QuestComplete(67772), -- The Trouble with Taivan
    },
    [84082295] = { -- Tseg
        criteria=55318,
        npc=189276,
        hide_before=ns.conditions.QuestComplete(65954), -- Release the Hounds
    },
    [81035949] = { -- Wish
        criteria=55324,
        npc=191408,
    },
    --
    --[[
    [61164002] = { -- Taivan (before quest)
        criteria=55325,
        npc=197518,
        hide_before=ns.conditions.QuestIncomplete(69096), -- Taivan's Purpose
    },
    --]]
    [61813865] = { -- Taivan (after quest)
        criteria=55325,
        npc=197518,
        hide_before=ns.conditions.QuestComplete(69096), -- Taivan's Purpose
        note="The version summoned by the toy doesn't count",
    },
    --
    [64004118] = { -- Katei
        criteria=55323,
        npc=196650,
    },
    [64014119] = { -- Vinyu
        criteria=55322,
        npc=196651,
    },
    --
    [84932508] = { -- Fogl
        criteria=55315,
        npc=189387,
        hide_before=ns.conditions.QuestComplete(65954), -- Release the Hounds
    },
    [84942509] = { -- Zephyr
        criteria=55314,
        npc=189388,
        hide_before=ns.conditions.QuestComplete(65954), -- Release the Hounds
    },
}, {
    achievement=16424, -- Who's a Good Bakar?
    texture=ns.atlas_texture("WildBattlePet", {}),
    minimap=true,
    -- icon=930453, -- Inv_stbernarddogpet
})
-- Hugo
ns.RegisterPoints(MAPID, {
    [55605240] = {},
    [70636364] = {},
    [71193156] = {},
}, {
    achievement=16424, -- Who's a Good Bakar?
    criteria=55327,
    npc=189377,
    note="In the Aylaag Clan camp, wherever it currently is",
    hide_before=ns.conditions.MajorFaction(ns.FACTION_MARUUK, 4),
    texture=ns.atlas_texture("WildBattlePet", {}),
    minimap=true,
})

-- Sleeping on the Job
ns.RegisterPoints(MAPID, {
    [33515321] = {criteria=55776, npc=198064,}, -- Dreamguard Felyasra
    [29876222] = {criteria=55777, npc=198068, path=29696022}, -- Dreamguard Erezsra
    [25296540] = {criteria=55778, npc=198069,}, -- Dreamguard Sayliasra
    [18025378] = {criteria=55779, npc=198074,}, -- Dreamguard Aiyelasra
    [19088289] = {criteria=55780, npc=198073,}, -- Dreamguard Lucidra
    [29404153] = {criteria=55781, npc=198075,}, -- Dreamguard Taelyasra
}, {
    achievement=16574,
    note="/sleep",
    texture=ns.atlas_texture("VenthyrAssaultsQuest-32x32", {r=0, g=1, b=0}), scale=1.2,
    minimap=true,
})
