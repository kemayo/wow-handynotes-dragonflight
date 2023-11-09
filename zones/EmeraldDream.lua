local myname, ns = ...

ns.RegisterPoints(ns.EMERALDDREAM, {
    [34095634] = { -- Triflesnatch's Roving Trove
        criteria=62952,
        quest=77872,
        related={
            [39705210] = {label="{npc:210060:Triflesnatcher}",note="Follow until the treasure appears"},
            [42205620] = {label="{npc:210060:Triflesnatcher}",note="Follow until the treasure appears"},
            [41706250] = {label="{npc:210060:Triflesnatcher}",note="Follow until the treasure appears"},
        },
        note="Follow the nearby {npc:210060:Triflesnatcher} until the treasure appears",
    },
    [47503490] = { -- Hidden Moonkin Stash
        criteria=62953,
        quest=77858,
        loot={
            {210725, toy=true}, -- Owl Post
        },
    },
    [39106550] = { -- Crystalline Glowblossom
        criteria=62954,
        quest=77950,
    },
    [37303070] = { -- Pineshrew Cache
        criteria=62956,
        quest=78120,
        loot={
            {210411, toy=true}, -- Fast Growing Seed
        },
    },
    [61605960] = { -- Magical Bloom
        criteria=62960,
        quest=78005,
        hide_before=ns.conditions.QuestComplete(77818), -- The Cruel
        related={
            [64306130] = {label="{npc:210544:Laughing Podling}",note="Follow until the treasure appears"},
            [62906040] = {label="{npc:210544:Laughing Podling}",note="Follow until the treasure appears"},
        },
        note="Follow the nearby {npc:210544:Laughing Podling} until the treasure appears",
    },
    [55305730] = { -- Odd Burl
        criteria=62961,
        quest=78006,
    },
    [47105310] = { -- Reliquary of Ursol
        criteria=62955,
        quest=78107,
        loot={
            210434, -- Visage of Ursol
        },
        note="Bring a Mark of Ursol here. If you can be a bear, you don't need the Mark. (Pandaren count!)",
    },
    [64101920] = { -- Reliquary of Aviana
        criteria=62957,
        quest=78360,
        loot={
            210659, -- Branch of Aviana
        },
        note="Bring a Mark of Aviana here. If you can have wings, you don't need the Mark.",
    },
    [63407300] = { -- Reliquary of Ashamane
        criteria=62958,
        quest=78359,
        loot={
            210631, -- Branch of Ashamane
        },
        note="Bring a Mark of Ashamane here. If you can stealth, you don't need the Mark",
    },
    [33208330] = { -- Reliquary of Goldrinn
        criteria=62959,
        quest=78361,
        loot={
            210660, -- Claw of Lo'Gosh
        },
        note="Bring a Mark of Goldrinn here. If you can be a wolf, you don't need the Mark. (Worgen count!)",
    },
}, {
    achievement=19317, -- Treasures
    minimap=true,
})

-- Rares
ns.RegisterPoints(ns.EMERALDDREAM, {
    [54803680] = { -- Mosa Umbramane
        criteria=62949,
        quest=77940,
        npc=210070,
        loot={
            {210647, class="DRUID"}, -- Mark of the Umbramane
        },
        vignette=5822,
    },
    [44403920] = { -- Ristar the Rabid
        criteria=62951,
        quest=77890,
        npc=210161,
        loot={
            209957, -- Fang of the Frenzied Nightclaw
        },
        vignette=5871,
    },
    [34806320] = { -- Envoy of Winter
        criteria=62933,
        quest=77878,
        npc=209929, -- also 214131
        loot={
            208365, -- Winter's Stand
        },
        vignette=5816,
    },
    [40407220] = { -- Moragh the Slothful
        criteria=62942,
        quest=78210,
        npc=210045,
        loot={
            210121, -- Ring of Season's Sunset
            210237, -- Nipping Night's Necklace
        },
        vignette=5908,
    },
    [51203180] = { -- Bloodstripe Great Ray
        criteria=62945,
        quest=77942,
        npc=210050,
        loot={
            208376, -- Great Ray's Longbow
        },
        vignette=5819,
    },
    [53804040] = { -- Greedy Gessie
        criteria=62932,
        quest=77982,
        npc=209936,
        loot={
            208355, -- String of Delicacies
        },
        vignette=5817, -- or 5969? There's two in Vignette.db2...
    },
    [41207320] = { -- Matriarch Keevah
        criteria=62944,
        quest=78213,
        npc=210051,
        loot={
            {210683, class="DRUID"}, -- Mark of the Dreamtalon Matriarch
        },
        vignette=5911,
    },
    [62007140] = { -- Nuoberon
        criteria=62929,
        quest=77570,
        npc=209113,
        vignette=5786, -- Nuoberon, the Wild Dream of a Child
    },
    [43404700] = { -- Somnambulant Ori
        criteria=62944,
        quest=78212,
        npc=210047,
        loot={
            209956, -- Ori's Verdant Feather
        },
        vignette=5910,
    },
    [66006280] = { -- Crabtankerous
        criteria=62937,
        quest=77862,
        npc=209909,
        loot={
            208334, -- Legplates of the Krakken
            208341, -- Fire-Runed Spaulders
        },
        vignette=5809,
    },
    [58405120] = { -- Ignit the Firebranded
        criteria=62936,
        quest=77864,
        npc=209620,
        loot={
            208325, -- Ignit's Fiery Heart
        },
        vignette=5811,
    },
    [61805180] = { -- Splinterlimb
        criteria=62935,
        quest=77863,
        npc=209365, -- also 212410
        loot={
            208361, -- Splinterlimb's Branch
        },
        vignette=5810,
    },
    [46201920] = { -- Moltenbinder's Disciple
        criteria=62947,
        quest=77941,
        npc=208658,
        loot={
            {205463, toy=true}, -- Molten Lava Ball
            208353, -- Djaradin's Molten Band
        },
        vignette=5818,
    },
    [43603100] = { -- Surging Lasher
        criteria=62941,
        additional={57805220, 60806400, 59007200},
        quest=nil,
        npc=210111,
        loot={
            208330, -- Piercing Touch of the Vine
            208367, -- Lasher's Red Thorn
        },
    },
    [63803620] = { -- Molten Leadspike
        criteria=62948,
        quest=77943,
        npc=210064,
        loot={
            208323, -- Nature's Firebathed Robes
        },
        vignette=5821,
    },
    [37603180] = { -- Isaqa
        criteria=62940,
        quest=77989,
        npc=209919,
        loot={
            208348, -- Binds of the Shatterer
        },
        vignette=5824,
    },
    [38406200] = { -- Voracious Mikanji
        criteria=64492,
        quest=78214,
        npc=210508,
        vignette=5912,
    },
    [40304920] = { -- Keen-eyed Cian
        criteria=62943,
        quest=78211,
        npc=210046,
        loot={
            {210650, class="DRUID"}, -- Mark of the Keen-Eyed Dreamsaber
        },
        vignette=5909,
    },
    [47403030] = { -- Henri Snufftail
        criteria=62950,
        quest=77944,
        npc=210075,
        loot={
            208357, -- Henri's Warm Coat
        },
        vignette=5820,
    },
    [35102260] = { -- Talthonei Ashwhisper
        additional={36902240,61406740,63907010,64406660},
        criteria=62934,
        quest=77994,
        npc=209902, -- also 210413
        loot={
            208374, -- Talthornei's Wrath
        },
        vignette=5828, -- also 5829
    },
    [64208400] = { -- Reefbreaker Moruud
        criteria=62931,
        quest=77867,
        npc=209898,
        vignette=5806, -- also 5814
    },
    [63407160] = { -- Fruitface
        criteria=62938,
        quest=77846,
        npc=209913,
        loot={
            208344, -- Sash of the Fruit Thief
        },
        vignette=5805,
    },
    [26002660] = { -- The Apostle
        criteria=62939,
        quest=77990,
        npc=209911,
        loot={
            208370, -- The Apostle's Steps
        },
        vignette=5825,
    },
}, {
    achievement=19316, -- Adventurer of the Emerald Dream
})
ns.RegisterPoints(ns.EMERALDDREAM, {
    [57803780] = { -- Elusive Verdant Gladewarden
        quest=nil,
        npc=212133,
    },
    [30002120] = { -- Firebrand Fystia
        criteria=62930,
        quest=78015,
        npc=209893,
        loot={
            208328, -- Fystia's Deft Hands
            209881, -- Fystia's Fiery Kris
        },
        vignette=5835,
    },
    [41202620] = { -- Amalgamation of Dreams
        additional={39805300,51805740,58205940,62805200},
        quest=nil,
        npc=209915,
    },
    [40804280] = { -- Elusive Blooming Brierhide
        quest=nil,
        npc=212090,
    },
    [39805120] = { -- Raszageth's Last Breath
        additional={50403840, 65404340, 67406620},
        quest=77859,
        npc=209912,
        loot={
            208373, -- Band of Bated Breath
        },
        vignette=5808,
    },
    [22903240] = { -- Balboan
        quest=78039,
        npc=210559,
        note="In cave",
        vignette=5837,
    },
    --[[
    [0] = { -- Enormous Dream Moth
        quest=nil,
        npc=209864,
        vignette=5799,
    },
    --]]
})
