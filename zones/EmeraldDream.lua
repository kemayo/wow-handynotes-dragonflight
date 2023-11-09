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
