local mType = Game.createMonsterType("Woodling")
local monster = {}

monster.description = "a woodling"
monster.experience = 40
monster.outfit = {
	lookType = 535,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 80
monster.maxHealth = 80
monster.race = "blood"
monster.corpse = 21446
monster.speed = 205
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	illusionable = true,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 21470, chance = 9450, maxCount = 10 }, -- simple arrow
	{ id = 3031, chance = 100000, maxCount = 12 }, -- gold coin
	{ id = 17823, chance = 14500 }, -- piece of swampling wood
	{ id = 3003, chance = 5700 }, -- rope
	{ id = 3378, chance = 4950 }, -- studded armor
	{ id = 3426, chance = 2670 }, -- studded shield
	{ id = 17822, chance = 20250 }, -- swampling moss
	{ id = 3723, chance = 18200, maxCount = 4 }, -- white mushroom
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 10, attack = 14 },
	{ name = "woodling paralyze", interval = 2000, chance = 10, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -4, maxDamage = -9, range = 3, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_INSECTS, target = false },
}

monster.defenses = {
	defense = 2,
	armor = 2,
	--	mitigation = ???,
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
