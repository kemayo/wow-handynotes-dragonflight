local myname, ns = ...

local MAPID = ns.OHNAHRANPLAINS -- Ohn'ahran Plains

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
    },
    --[[
    [] = { -- Emerald Gem Cluster
        criteria=54700,
        quest=70391,
        loot={},
        active={ns.conditions.Item(198843), ns.conditions.QuestComplete(70392), any=true}, -- Emerald Gardens Explorer's Notes
        note="Find {item:198843} in other treasures"
    },
    --]]
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
        loot={},
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
    [] = { -- Mikrin of the Raging Winds
        criteria=56070,
        quest=69857,
        npc=193173,
        loot={},
        vignette=5183,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
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
    [] = { -- Oshigol
        criteria=56074,
        quest=69877,
        npc=193235,
        loot={},
        vignette=5199,
        -- hide_before=ns.MAXLEVEL, -- TODO
    },
    --]]
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
    --[[
    [] = { -- Hunter of Deep
        criteria=56083,
        quest=nil,
        npc=188095,
        loot={},
        vignette=5077,
    },
    --]]
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
    --[[
    [] = { -- Vaniik the Stormtouched
        criteria=56090,
        quest=nil,
        npc=192453,
        loot={},
        vignette=5143, -- Vaniik the Corrupted
    },
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

-- Who's a Good Bakar?
ns.RegisterPoints(MAPID, {
    [40915658] = { -- Alli
        criteria=55348,
        quest=nil,
        npc=197569,
    },
    [84272477] = { -- Baba
        criteria=55316,
        quest=nil,
        npc=189274,
    },
    [48994107] = { -- Baga
        criteria=55329,
        quest=nil,
        npc=196871,
    },
    [62024276] = { -- Berrel
        criteria=55326,
        quest=nil,
        npc=195669,
    },
    [85132240] = { -- Elaichi
        criteria=55317,
        quest=nil,
        npc=187840,
    },
    [76683055] = { -- Ellam
        criteria=55321,
        quest=nil,
        npc=187667,
        -- might require 66698 to be up
    },
    [83902592] = { -- Gentara
        criteria=55320,
        quest=nil,
        npc=186189,
    },
    [70636364] = { -- Hugo
        criteria=55327,
        quest=nil,
        npc=189377,
        -- in the great hunt camp...
    },
    [80685891] = { -- Laila
        criteria=55331,
        quest=nil,
        npc=190043,
    },
    [61005230] = { -- Nahma
        criteria=55328,
        quest=nil,
        npc=192687,
    },
    [84162711] = { -- Pesca
        criteria=55319,
        quest=nil,
        npc=189278,
    },
    [81115841] = { -- Rotti
        criteria=55330,
        quest=nil,
        npc=191405,
    },
    [71624965] = { -- Soyoo
        criteria=55347,
        quest=nil,
        npc=197514,
    },
    [84082295] = { -- Tseg
        criteria=55318,
        quest=nil,
        npc=189276,
    },
    [81035949] = { -- Wish
        criteria=55324,
        quest=nil,
        npc=191408,
    },
    --
    [61164002] = { -- Taivan (before quest)
        criteria=55325,
        quest=nil,
        npc=197518,
        hide_before=ns.conditions.QuestIncomplete(69096), -- Taivan's Purpose
    },
    [61813865] = { -- Taivan (after quest)
        criteria=55325,
        quest=nil,
        npc=197518,
        hide_before=ns.conditions.QuestComplete(69096), -- Taivan's Purpose
        note="The version summoned by the toy doesn't count",
    },
    --
    [64014119] = { -- Katei
        criteria=55323,
        quest=nil,
        npc=196650,
    },
    [64014119] = { -- Vinyu
        criteria=55322,
        quest=nil,
        npc=196651,
    },
    --
    [84942509] = { -- Fogl
        criteria=55315,
        quest=nil,
        npc=189387,
    },
    [84942509] = { -- Zephyr
        criteria=55314,
        quest=nil,
        npc=189388,
    },
}, {
    achievement=16424, -- Who's a Good Bakar?
    texture=ns.atlas_texture("WildBattlePet", {}),
    minimap=true,
    -- icon=930453, -- Inv_stbernarddogpet
})

-- Dragon Glyphs
local glyph = {
    achievement=16576,
    atlas="Warfront-AllianceHero-Silver",
    minimap=true,
    requires=ns.DRAGONRIDING,
    group="glyphs",
}
ns.RegisterPoints(MAPID, {
    [57793081] = {criteria=55792}, -- Ohn'ahra's Roost
    [30393607] = {criteria=55793}, -- Nokhudon Hold
    [30156156] = {criteria=55794}, -- Emerald Gardens
    [29547543] = {criteria=55795}, -- The Eternal Kurgans
    [44736457] = {criteria=55796}, -- Szar Skeleth
    [47327216] = {criteria=55797}, -- Mirror of the Sky
    [57138010] = {criteria=55798}, -- Ohn'iri Springs
    [84077727] = {criteria=55799}, -- Dragonsprings Summit
    [86543932] = {criteria=55800}, -- Rusza'thar Reach
    [61376423] = {criteria=55801}, -- Windsong Rise
    [80001300] = {criteria=56134}, -- Rubyscale Outpost
    [78422117] = {criteria=56139}, -- Mirewood Fen
}, glyph)
ns.RegisterPoints(ns.WAKINGSHORES, {
    [48828664] = {criteria=56134}, -- Rubyscale Outpost
}, glyph)
