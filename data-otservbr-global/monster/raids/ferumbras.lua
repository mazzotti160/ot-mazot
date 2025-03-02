local mType = Game.createMonsterType("Ferumbras")
local monster = {}

monster.description = "Ferumbras"
monster.experience = 120000
monster.outfit = {
	lookType = 229,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 231,
	bossRace = RARITY_NEMESIS,
}

monster.health = 1800000
monster.maxHealth = 1800000
monster.race = "venom"
monster.corpse = 6078
monster.speed = 160
monster.manaCost = 0

monster.events = {
	--"FerumbrasTeleport",
}

monster.changeTarget = {
	interval = 5000,
	chance = 8,
}

monster.strategiesTarget = {
	nearest = 70,
	health = 10,
	damage = 10,
	random = 10,
}

monster.flags = {
	summonable = false,
	attackable = true,
	hostile = true,
	convinceable = false,
	pushable = false,
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 6,
	summons = {
		{ name = "Brachiodemon", chance = 24, interval = 2000, count = 3 },
		{ name = "Infernal Demon", chance = 24, interval = 2000, count = 3 },		
		{ name = "Many Faces", chance = 24, interval = 2000, count = 3 },	
		{ name = "Rotten Golem", chance = 24, interval = 2000, count = 3 },	
		{ name = "Distorted Phantom", chance = 24, interval = 2000, count = 3 },	
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "NO ONE WILL STOP ME THIS TIME!", yell = true },
	{ text = "THE POWER IS MINE!", yell = true },
	{ text = "I returned from death and you dream about defeating me?", yell = false },
	{ text = "Witness the first seconds of my eternal world domination!", yell = false },
	{ text = "Even in my weakened state I will crush you all!", yell = false },
}

monster.loot = {
--custom craft loot
        { id = 16206, chance = 15000, maxCount = 15 }, -- abyssador lash
        { id = 16136, chance = 15000, maxCount = 15 }, -- deathstrike snippet
        { id = 16205, chance = 15000, maxCount = 15 }, -- gnomevil hat
        { id = 27621, chance = 15000, maxCount = 12 }, -- huge shell
        { id = 27627, chance = 15000, maxCount = 12 }, -- huge spiky snail shell
        { id = 27619, chance = 15000, maxCount = 12 }, -- giant tentacle
        { id = 36796, chance = 15000, maxCount = 10 }, -- brainstealer brainwave
        { id = 36795, chance = 15000, maxCount = 10 }, -- brainstealer brain
        { id = 36794, chance = 15000, maxCount = 10 }, -- brainstealer tissue
        { id = 39040, chance = 15000, maxCount = 7 },  -- fiery tear
        { id = 39543, chance = 15000, maxCount = 7 },  -- smoldering eye
        { id = 33928, chance = 15000, maxCount = 5 },  -- megalomania essence
        { id = 33925, chance = 15000, maxCount = 5 },  -- megalomania skull
        { id = 43968, chance = 15000, maxCount = 3 },   -- bakragore amalgamation
		{ id = 37341, chance = 1000},  --skulls
		{ id = 37340, chance = 1000},  --skulls
		{ id = 37339, chance = 1000},  --skulls
		{ id = 37338, chance = 1000},  --skulls
		{ id = 37337, chance = 1000},  --skulls
		{ id = 37335, chance = 1000},  --skulls	
        { id = 3423, chance = 650}, -- blessed shield
		{ id = 3246, chance = 650}, -- boots of waterwalking
		{ id = 3363, chance = 650}, -- dragon scale legs
		{ id = 3402, chance = 650}, -- native armor
		{ id = 3365, chance = 650}, -- golden helmet		
--end
	{ id = 5903, chance = 100000, unique = true }, -- ferumbras' hat
	{ id = 3043, chance = 98000, maxCount = 184 }, -- crystal coin
	{ id = 3422, chance = 26000 }, -- great shield
	{ id = 8040, chance = 22000 }, -- velvet mantle
	{ id = 8057, chance = 20000 }, -- divine plate
	{ id = 3442, chance = 20000 }, -- tempest shield
	{ id = 3439, chance = 18000 }, -- phoenix shield
	{ id = 8102, chance = 16000 }, -- emerald sword
	{ id = 7405, chance = 16000 }, -- havoc blade
	{ id = 7417, chance = 14000 }, -- runed sword
	{ id = 8098, chance = 12000 }, -- demonwing axe
	{ id = 8041, chance = 12000 }, -- greenwood coat
	{ id = 8096, chance = 10000 }, -- hellforged axe
	{ id = 7411, chance = 10000 }, -- ornamented axe
	{ id = 7423, chance = 8000 }, -- skullcrusher
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -350 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_MANADRAIN, minDamage = -500, maxDamage = -700, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -450, length = 8, spread = 0, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 21, type = COMBAT_LIFEDRAIN, minDamage = -450, maxDamage = -500, radius = 6, effect = CONST_ME_POFF, target = false },
	-- poison
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 15, minDamage = -20, maxDamage = -40, range = 7, shootEffect = CONST_ANI_POISON, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -900, maxDamage = -1000, range = 4, radius = 3, effect = CONST_ME_DRAWBLOOD, target = false },
	-- energy damage
	{ name = "condition", type = CONDITION_ENERGY, interval = 2000, chance = 18, minDamage = -300, maxDamage = -400, radius = 6, effect = CONST_ME_ENERGYHIT, target = false },
	-- fire
	{ name = "condition", type = CONDITION_FIRE, interval = 3000, chance = 20, minDamage = -500, maxDamage = -600, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 120,
	armor = 100,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 900, maxDamage = 1500, effect = CONST_ME_MAGIC_GREEN, target = false },
	{ name = "invisible", interval = 4000, chance = 20, effect = CONST_ME_MAGIC_BLUE },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
