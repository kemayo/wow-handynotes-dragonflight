local myname, ns = ...

local chest = {
    label="Magic-Bound Chest",
    loot={
        192055, -- Dragon Isles Artifact
    },
    requires=ns.conditions.MajorFaction(ns.FACTION_DRAGONSCALE, 16),
    texture=ns.atlas_texture("VignetteLoot", {r=0.5, g=1, b=0.5, scale=0.9}),
    group="magicbound", always=true,
    vignette=5467,
}

ns.RegisterPoints(ns.WAKINGSHORES, {
    [23789089] = {}, -- Apex Canopy
    [22507486] = {}, -- Dragonbane Keep
    [36908747] = {}, -- Dragonscale Basecamp
    [43045822] = {}, -- Obsidian Bulwark
    [55424497] = {}, -- Uktulut Blackwater
    [72206051] = {path=71755872}, -- Skytop Observatory
    [62917986] = {}, -- Ruby Life Pools
    [51711860] = {}, -- Life-Binder Observatory
    [64364285] = {path=63764061}, -- Life Vault Ruins
    [30474721] = {path=30595144}, -- Obsidian Citadel Cave
}, chest)
ns.RegisterPoints(ns.OHNAHRANPLAINS, {
    [31457160] = {}, -- The Eternal Kurgans
    [39316792] = {}, -- Terrakai Underwater
    [38945595] = {}, -- Terrakai Cave
    [53845721] = {path=53185650}, -- Thunderspine Thicket
    [61028017] = {path=61427741}, -- Ohn
    [85106638] = {path=84576633}, -- Sagecrest Pines
    [82653290] = {}, -- Mudfin Village
    [55013121] = {}, -- Maruukai
    [55455025] = {path=57705081}, -- Sylvan Glade
    [80958080] = {path=79938057}, -- Forkriver Crossing
}, chest)
ns.RegisterPoints(ns.AZURESPAN, {
    [65652784] = {}, -- Rhonin
    [72304209] = {path=71644381}, -- Forgotten Cavern
    [65895557] = {}, -- Azure Span
    [53066611] = {path=53066534}, -- Azure Span
    [49224090] = {}, -- Camp Antonidas
    [29874571] = {path=28584731}, -- Traitor
    [14012983] = {}, -- Brackenhide Hollow
    [09104841] = {}, -- Iskaara
    [34073087] = {note="In cave"}, -- Kargpaw
    [43346261] = {path=43876172}, -- Azure Archives
}, chest)
ns.RegisterPoints(ns.THALDRASZUS, {
    [54773258] = {path=54693380}, -- Mountain
    [50195206] = {path=49975159}, -- Thaldraszus
    [53005689] = {path=52965867}, -- Tyrhold
    [56846748] = {}, -- Tyrhold
    [54118395] = {}, -- Lever
    [42927897] = {path=40867767}, -- Cave
    [34836914] = {}, -- Valdrakken
    [42656663] = {path=42316553}, -- Valdrakken
    [61275400] = {path=59745372}, -- Tyrhold
}, chest)
-- ns.RegisterPoints(ns.VALDRAKKEN, {
-- }, chest)
