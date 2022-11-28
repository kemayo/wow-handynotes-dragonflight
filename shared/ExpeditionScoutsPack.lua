local myname, ns = ...

local scoutpack = {
    label="Expedition Scout's Pack",
    loot={
        {192764, mount=1617, note="Renown 25"}, -- Verdant Skitterfly
        {199061, quest=70527}, -- A Guide to Rare Fish
        {194540, quest=67046}, -- Nokhud Armorer's Notes
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
    texture=ns.atlas_texture("VignetteLoot", {r=0.5, g=1, b=0.5}),
    group="scoutpack",
    vignette=5468,
}
ns.RegisterPoints(ns.WAKINGSHORES, {
    [22129642] = {note="In cave"},
    [22409724] = {note="In cave"},
    [22547718] = {},
    [23027547] = {},
    [25007818] = {},
    [29947646] = {},
    [34965090] = {note="In cave"},
    [35025080] = {note="In cave"},
    [41124885] = {},
    [42314879] = {},
    [45823518] = {},
    [46206456] = {},
    [46335382] = {},
    [46955170] = {},
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
    [50762512] = {},
    [52992637] = {},
    [54188369] = {},
    [54627403] = {},
    [55388537] = {},
    [60833547] = {},
    [62002537] = {},
    [63845472] = {},
    [65245333] = {},
    [65525325] = {},
    [69076532] = {},
    [72165969] = {note="Requires a miner"},
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
    [64606330] = {},
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
    [26203719] = {},
    [35925854] = {},
    [41964521] = {},
    [47103262] = {},
    [47364563] = {},
    [60577712] = {},
    [64415503] = {},
    [77025789] = {},
    [86513680] = {},
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
    [83603230] = {},
    [83603520] = {},
    [86403940] = {},
}, scoutpack)
ns.RegisterPoints(ns.AZURESPAN, {
    [10254317] = {},
    [12434313] = {},
    [12934166] = {},
    [14953300] = {},
    [33864679] = {},
    [34344607] = {},
    [34864550] = {},
    [35424781] = {},
    [42625622] = {},
    [44162421] = {},
    [46882208] = {},
    [47253630] = {},
    [47576220] = {},
    [47982987] = {},
    [49062542] = {},
    [52144881] = {},
    [56193352] = {},
    [57605281] = {},
    [57734492] = {},
    [58145373] = {},
    [62055170] = {},
    [62215064] = {},
    [65712841] = {},
    [65781081] = {},
    [65871071] = {},
    [65952788] = {},
    [66126002] = {},
    [66733050] = {},
    [66783133] = {},
    [68746050] = {},
    [70084345] = {},
    [70144609] = {},
    [70623172] = {},
    [71713541] = {},
    [71784392] = {},
    [72604267] = {},
    [77883303] = {},
    [78963094] = {},
}, scoutpack)
ns.RegisterPoints(ns.THALDRASZUS, {
    [34107306] = {},
    [35447335] = {},
    [35628577] = {},
    [36798246] = {},
    [47418020] = {},
    [48477563] = {note="In cave"},
    [48806725] = {},
    [49347891] = {},
    [50098074] = {},
    [52133863] = {},
    [52597681] = {},
    [52758334] = {},
    [54073858] = {},
    [55883598] = {},
    [56613828] = {},
    [57547623] = {},
    [59003659] = {},
    [59152912] = {},
    [59547955] = {},
    [59682931] = {},
    [60742949] = {},
    [61805331] = {},
    [66905827] = {},
}, scoutpack)
