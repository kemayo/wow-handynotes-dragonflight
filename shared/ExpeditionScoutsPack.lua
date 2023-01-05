local myname, ns = ...

local scoutpack = {
    label="Expedition Scout's Pack",
    loot={
        -- all the treasure-prerequisite items
        {199061, quest=70527}, -- A Guide To Rare Fish
        {194540, quest=67046}, -- Nokhud Armorer's Notes
        {199065, quest=70534}, -- Sorrowful Letter
        {199066, quest=70535}, -- Letter of Caution
        {199068, quest=70537}, -- Time-Lost Memo
        {198843, quest=70392, requires=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 21)}, -- Ruby Gem Cluster Map
        {198843, quest=70392, requires=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 21)}, -- Emerald Gardens Explorer's Notes
        {199067, quest=70536, requires=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 21)}, -- Precious Plans
        {198852, quest=70407, requires=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 21)}, -- Bear Termination Orders
        -- ...the rest
        {192764, mount=1617, note="Renown 25"}, -- Verdant Skitterfly
        201387, -- Drakonid Stalker's Halberd
        201388, -- Dragonspawn Wingtipped Staff
        201389, -- Wingcrest Battle Staff
        201390, -- Devastating Drakonid Waraxe
        201392, -- Drakonid Striker's Cutlass
        201393, -- Dragonspawn Spellweaver's Focus
        201394, -- Drakonid's Jade Bulwark
        201395, -- Wingcrest Scimitar
        201396, -- Hidepiercing Claw Extensions
    },
    -- quest 72023 (after 70822 Lost Expedition Camp) at basecamp *says* it unlocks these, but I saw them before
    requires=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 2),
    texture=ns.atlas_texture("VignetteLoot", {r=0.5, g=1, b=0.5, scale=0.9}),
    group="scoutpack", always=true,
    vignette=5468,
}
ns.RegisterPoints(ns.WAKINGSHORES, {
    [22129642] = {note="In cave"},
    [22409724] = {note="In cave"},
    [22547718] = {},
    [23027547] = {},
    [23626169] = {},
    [23706069] = {},
    [24245544] = {},
    [25007818] = {},
    [29185340] = {},
    [29915270] = {},
    [29947646] = {},
    [33517660] = {},
    [33708739] = {},
    [34097703] = {},
    [34174840] = {},
    [34438918] = {note="In cave"},
    [34587222] = {},
    [34965090] = {note="In cave"},
    [35025080] = {note="In cave"},
    [35828617] = {},
    [36388582] = {},
    [38109594] = {note="In cave"},
    [38139019] = {},
    [39648846] = {},
    [41124885] = {},
    [42314879] = {},
    [42706081] = {},
    [42786023] = {},
    [44148103] = {},
    [45206652] = {},
    [45226524] = {},
    [45429268] = {},
    [45528231] = {},
    [45823518] = {},
    [46206456] = {},
    [46335382] = {},
    [46889363] = {note="In cave"},
    [46955170] = {},
    [47119230] = {},
    [47245387] = {},
    [47275597] = {},
    [47446489] = {},
    [47915079] = {},
    [48105377] = {},
    [48235627] = {},
    [48655215] = {},
    [49015328] = {},
    [49043196] = {},
    [49455528] = {},
    [50028560] = {},
    [50348179] = {},
    [50455390] = {},
    [50622995] = {},
    [50762512] = {},
    [50892907] = {note=UNIT_SKINNABLE_ROCK},
    [50952876] = {note=UNIT_SKINNABLE_ROCK},
    [51072865] = {note=UNIT_SKINNABLE_ROCK},
    [51102964] = {note=UNIT_SKINNABLE_ROCK},
    [52992637] = {},
    [54188369] = {},
    [54627403] = {},
    [55388537] = {},
    [57842572] = {},
    [60833547] = {},
    [62002537] = {},
    [63845472] = {},
    [64606328] = {},
    [64996963] = {},
    [65192561] = {},
    [65245333] = {},
    [65406566] = {},
    [65525325] = {},
    [68973431] = {},
    [69076532] = {},
    [72165969] = {note=UNIT_SKINNABLE_ROCK},
    [81364441] = {},
    -- the rest of this is a dump of locations on wowhead, with minor duplicate-filtering...
    [23606160] = {},
    [23609650] = {},
    [24206960] = {},
    [25705620] = {},
    [27705970] = {},
    [28305790] = {},
    [28905070] = {},
    [29505550] = {},
    [29805840] = {},
    [30107320] = {},
    [32006770] = {},
    [32007000] = {},
    [32405440] = {},
    [32407380] = {},
    [33107250] = {},
    [33207500] = {},
    [33906890] = {},
    [34607230] = {},
    [35406630] = {},
    [37107150] = {},
    [38208560] = {},
    [40008350] = {},
    [41206590] = {},
    [43203750] = {},
    [43306450] = {},
    [44406110] = {},
    [44708540] = {},
    [44806460] = {},
    [45807990] = {},
    [46005890] = {},
    [46305390] = {},
    [47303150] = {},
    [50003160] = {},
    [50706590] = {},
    [51208020] = {},
    [53508070] = {},
    [53802210] = {},
    [54207140] = {},
    [55308320] = {},
    [56308130] = {},
    [56506040] = {},
    [57002080] = {},
    [57207000] = {},
    [57305920] = {},
    [57707170] = {},
    [58407300] = {},
    [58703070] = {},
    [62106700] = {},
    [62503310] = {},
    [63706900] = {},
    [63802820] = {},
    [63904940] = {},
    [63905480] = {},
    [64004140] = {},
    [64204300] = {},
    [65203630] = {},
    [66007410] = {},
    [66798259] = {},
    [66907020] = {},
    [67606710] = {},
    [69604430] = {},
    [70204300] = {},
    [71307060] = {},
    [74504460] = {},
    [74804820] = {},
    [77202190] = {},
}, scoutpack)
-- TODO: find more, split into dedicated file?
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [21875785] = {},
    [23934019] = {},
    [25205877] = {},
    [26135845] = {},
    [26203719] = {},
    [31167124] = {},
    [32053888] = {},
    [35925854] = {},
    [39465229] = {},
    [41964521] = {},
    [44866760] = {},
    [47103262] = {},
    [47364563] = {},
    [50392906] = {},
    [51807550] = {},
    -- [52335310] = {}, -- either bugged or underground
    [52423044] = {},
    [52566005] = {},
    [55522756] = {},
    [60036953] = {},
    [60577712] = {},
    [64028083] = {},
    [64415503] = {},
    [71755072] = {},
    [73628656] = {},
    [76476463] = {},
    [77025789] = {},
    [78343809] = {},
    [78746936] = {},
    [79023744] = {},
    [79595130] = {},
    [82683763] = {},
    [82723275] = {},
    [83663234] = {note="In cave"},
    [84103724] = {},
    [85103901] = {},
    [86513680] = {},
    [86622765] = {},
    --
    [34503700] = {},
    [57402710] = {},
    [60202730] = {},
    [60801750] = {},
    [61002990] = {},
    [61702500] = {},
    [62802720] = {},
    [65202200] = {},
    [67503520] = {},
    [68502990] = {},
    [79203170] = {},
    [80003020] = {},
    [80003680] = {},
    [81203800] = {},
    [81303100] = {},
    [81702920] = {},
    [82503990] = {},
    [82603110] = {},
    [82603360] = {},
    [83603520] = {},
    [86403940] = {},
}, scoutpack)
ns.RegisterPoints(ns.AZURESPAN, {
    [10254317] = {},
    [12434313] = {},
    [12813169] = {},
    [12934166] = {},
    [14532071] = {},
    [14953300] = {},
    [16143459] = {},
    [33864679] = {},
    [34344607] = {},
    [34864550] = {},
    [35424781] = {},
    [42625622] = {},
    [43015294] = {},
    [44162421] = {},
    [46882208] = {},
    [47253630] = {},
    [47576220] = {},
    [47602594] = {},
    [47982987] = {},
    [49062542] = {},
    [49361964] = {},
    [49652540] = {},
    [52144881] = {},
    [56193352] = {},
    [57605281] = {},
    [57734492] = {},
    [58145373] = {},
    [62055170] = {},
    [62215064] = {},
    [65195980] = {},
    [65712841] = {},
    [65781081] = {note="In cave"},
    [65871071] = {},
    [65952788] = {},
    [66126002] = {},
    [66684883] = {},
    [66733050] = {},
    [66783133] = {},
    [68746050] = {},
    [69794388] = {},
    [70084345] = {},
    [70144609] = {},
    [70623172] = {},
    [71713541] = {},
    [71784392] = {},
    [72604267] = {},
    [75163843] = {},
    [77343866] = {},
    [77883303] = {},
    [78203510] = {},
    [78963094] = {},
    [79632956] = {},
}, scoutpack)
ns.RegisterPoints(ns.THALDRASZUS, {
    [34107306] = {},
    [34936010] = {},
    [35447335] = {},
    [35517551] = {},
    [35628577] = {},
    [36798246] = {},
    [38837770] = {},
    [40148558] = {},
    [40558673] = {},
    [41234798] = {},
    [42384801] = {},
    [47354057] = {},
    [47418020] = {},
    [48175073] = {},
    [48477563] = {note="In cave"},
    [48806725] = {},
    [49047927] = {},
    [49347891] = {},
    [50098074] = {},
    [50604505] = {},
    [50854624] = {},
    [52133863] = {},
    [52597681] = {note="In cave"},
    [52758334] = {},
    [54073858] = {},
    [54195536] = {},
    [54914250] = {},
    [55456798] = {},
    [55875137] = {},
    [55883598] = {},
    [55927732] = {},
    [56053178] = {},
    [56264118] = {},
    [56613828] = {},
    [57112915] = {},
    [57138078] = {},
    [57468106] = {},
    [57518531] = {},
    [57547623] = {},
    [58036703] = {},
    [58544918] = {},
    [58965753] = {},
    [59003659] = {},
    [59152912] = {},
    [59208794] = {},
    [59547955] = {},
    [59682931] = {},
    [60742949] = {},
    [61707948] = {},
    [61805331] = {},
    [62473052] = {},
    [65548193] = {},
    [65716628] = {},
    [66905827] = {},
    [66915827] = {},
}, scoutpack)
ns.RegisterPoints(ns.VALDRAKKEN, {
    [15325153] = {},
}, scoutpack)
