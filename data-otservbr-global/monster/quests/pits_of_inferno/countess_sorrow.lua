local mType = Game.createMonsterType("Countess Sorrow")
local monster = {}

monster.description = "Countess Sorrow"
monster.experience = 13000
monster.outfit = {
	lookType = 241,
	lookHead = 20,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 306,
	bossRace = RARITY_NEMESIS,
}

monster.health = 6500
monster.maxHealth = 6500
monster.race = "undead"
monster.corpse = 6343
monster.speed = 200
monster.manaCost = 0

monster.changeTarget = {
	interval = 60000,
	chance = 0,
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
	level = 3,
	color = 203,
}

monster.summon = {
	maxSummons = 3,
	summons = {
		{ name = "Phantasm", chance = 7, interval = 2000, count = 3 },
		{ name = "Phantasm Summon", chance = 7, interval = 2000, count = 3 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "I'm so sorry ... for youuu!", yell = false },
	{ text = "You won't rest in peace! Never ever!", yell = false },
	{ text = "Sleep ... for eternity!", yell = false },
	{ text = "Dreams can come true. As my dream of killing you.", yell = false },
	{ text = "You are lost pathetic mortal.", yell = false },
}

monster.loot = {
	{ id = 6536, chance = 100000 }, -- countess sorrow's frozen tear
	{ id = 6499, chance = 20590 }, -- demonic essence
	{ id = 3031, chance = 82350, maxCount = 169 }, -- gold coin
	{ id = 3035, chance = 55880, maxCount = 4 }, -- platinum coin
	{ id = 5944, chance = 85290 }, -- soul orb
	{ id = 3567, chance = 32350 }, -- blue robe
	{ id = 3312, chance = 4210 }, -- silver mace
	{ id = 3557, chance = 8820 }, -- plate legs
	{ id = 3084, chance = 23530 }, -- protection amulet
	{ id = 3049, chance = 5880 }, -- stealth ring
	{ id = 3123, chance = 47060 }, -- worn leather boots
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 156, attack = 100, condition = { type = CONDITION_POISON, totalDamage = 920, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -420, maxDamage = -980, range = 7, radius = 1, shootEffect = CONST_ANI_POISON, effect = CONST_ME_HITBYPOISON, target = true },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_MANADRAIN, minDamage = -45, maxDamage = -90, radius = 3, effect = CONST_ME_YELLOW_RINGS, target = false },
	{ name = "phantasm drown", interval = 2000, chance = 20, target = false },
	{ name = "drunk", interval = 2000, chance = 15, range = 7, radius = 6, effect = CONST_ME_MAGIC_RED, target = false, duration = 10000 },
}

monster.defenses = {
	defense = 20,
	armor = 25,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 26, type = COMBAT_HEALING, minDamage = 415, maxDamage = 625, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "invisible", interval = 2000, chance = 15, effect = CONST_ME_POFF },
	{ name = "speed", interval = 2000, chance = 11, speedChange = 736, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 100 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 50 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
