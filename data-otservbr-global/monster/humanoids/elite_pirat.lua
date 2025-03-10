local mType = Game.createMonsterType("Elite Pirat")
local monster = {}

monster.description = "an elite pirat"
monster.experience = 18000
monster.outfit = {
	lookType = 534,
	lookHead = 79,
	lookBody = 79,
	lookLegs = 94,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "blood"
monster.corpse = 17446
monster.speed = 205
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = true,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 3031, chance = 100000, maxCount = 120 }, -- gold coin
	{ id = 7642, chance = 100000, maxCount = 2 }, -- great spirit potion
	{ id = 35572, chance = 10000 }, -- pirate coin
	{ id = 813, chance = 4761 }, -- terra boots
	{ id = 813, chance = 4761 }, -- terra boots
	{ id = 17812, chance = 5000 }, -- ratana
	{ id = 17813, chance = 5000 }, -- life preserver
	{ id = 17817, chance = 16666 }, -- cheese cutter
	{ id = 17818, chance = 3846 }, -- cheesy figurine
	{ id = 35596, chance = 11111 }, -- mouldy powder
	{ id = 17820, chance = 14285 }, -- soft cheese
	{ id = 17821, chance = 14285 }, -- rat cheese
	{ id = 820, chance = 1612 }, -- lightning boots
	{ id = 818, chance = 3225 }, -- magma boots
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 400, maxDamage = -210 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = 80, maxDamage = -110, range = 7, shootEffect = CONST_ANI_WHIRLWINDCLUB, target = false },
}

monster.defenses = {
	defense = 15,
	armor = 15,
	--	mitigation = ???,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
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
