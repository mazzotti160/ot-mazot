local mType = Game.createMonsterType("Hoodinion")
local monster = {}

monster.description = "a hoodinion"
monster.experience = 25
monster.outfit = {
	lookType = 1424,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 17500
monster.maxHealth = 17500
monster.race = "blood"
monster.corpse = 0
monster.speed = 75
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 40,
	targetDistance = 4,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
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
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -750 },
	{ name = "combat", interval = 4000, chance = 33, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -1250, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 5000, chance = 44, type = COMBAT_ICEDAMAGE, minDamage = -1050, maxDamage = -1300, range = 7, radius = 4, shootEffect = CONST_ANI_ICE, effect = CONST_ME_ICETORNADO, target = true },
	{ name = "ice chain", interval = 10000, chance = 59, minDamage = -1100, maxDamage = -1300, range = 7 },
	{ name = "combat", interval = 3000, chance = 18, type = COMBAT_HOLYDAMAGE, minDamage = -1050, maxDamage = -1250, range = 7, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 4000, chance = 25, type = COMBAT_HOLYDAMAGE, minDamage = -900, maxDamage = -1100, range = 7, radius = 4, shootEffect = CONST_ANI_SMALLHOLY, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "extended holy chain", interval = 10000, chance = 59, minDamage = -400, maxDamage = -700, range = 7 },
}

monster.defenses = {
	defense = 10,
	armor = 10,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 20 },
	{ type = COMBAT_EARTHDAMAGE, percent = -12 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 1 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
