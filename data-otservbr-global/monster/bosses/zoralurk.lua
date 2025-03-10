local mType = Game.createMonsterType("Zoralurk")
local monster = {}

monster.description = "Zoralurk"
monster.experience = 30000
monster.outfit = {
	lookType = 12,
	lookHead = 0,
	lookBody = 98,
	lookLegs = 86,
	lookFeet = 94,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 1800000
monster.maxHealth = 1800000
monster.race = "undead"
monster.corpse = 6068
monster.speed = 200
monster.manaCost = 0

monster.events = {
	"BossRoomReward",
}

monster.changeTarget = {
	interval = 10000,
	chance = 20,
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
	staticAttackChance = 98,
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
	maxSummons = 2,
	summons = {
		{ name = "demon", chance = 50, interval = 4000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I AM ZORALURK, THE DEMON WITH A THOUSAND FACES", yell = true },
	{ text = "BRING IT, COCKROACHES!", yell = true },
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
	{ name = "white pearl", chance = 10000, maxCount = 5 },
	{ name = "gold coin", chance = 100000, maxCount = 100 },
	{ name = "gold coin", chance = 50000, maxCount = 90 },
	{ name = "boots of haste", chance = 16033 },
	{ name = "giant sword", chance = 60000 },
	{ name = "bright sword", chance = 20000 },
	{ name = "bright sword", chance = 20000 },
	{ name = "warlord sword", chance = 6000 },
	{ name = "patched boots", chance = 7000 },
	{ id = 3123, chance = 16000 }, -- worn leather boots
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1013 },
	{ name = "combat", interval = 1000, chance = 12, type = COMBAT_ENERGYDAMAGE, minDamage = -600, maxDamage = -900, radius = 7, effect = CONST_ME_ENERGYHIT, target = false },
	{ name = "combat", interval = 1000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -800, radius = 7, effect = CONST_ME_SMALLPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_MANADRAIN, minDamage = -500, maxDamage = -800, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -600, range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
}

monster.defenses = {
	defense = 65,
	armor = 55,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_HEALING, minDamage = 300, maxDamage = 800, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 440, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "behemoth" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "fire devil" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "giant spider" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "undead dragon" },
	{ name = "outfit", interval = 2000, chance = 10, effect = CONST_ME_CRAPS, target = false, duration = 10000, outfitMonster = "lost soul" },
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
