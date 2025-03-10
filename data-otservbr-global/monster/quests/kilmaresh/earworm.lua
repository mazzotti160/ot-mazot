local mType = Game.createMonsterType("Earworm")
local monster = {}

monster.description = "an earworm"
monster.experience = 2000
monster.outfit = {
	lookType = 26,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 4000
monster.maxHealth = 4000
monster.race = "blood"
monster.corpse = 31662
monster.speed = 205
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
	{ name = "platinum coin", chance = 82000, maxCount = 2 },
	{ name = "envenomed arrow", chance = 68000, maxCount = 47 },
	{ name = "earth arrow", chance = 65000, maxCount = 21 },
	{ name = "worm", chance = 61500, maxCount = 3 },
	{ name = "lump of dirt", chance = 42000 },
	{ name = "green memory shard", chance = 35000 },
	{ name = "blue memory shard", chance = 35000 },
	{ name = "violet memory shard", chance = 32000 },
	{ name = "terra amulet", chance = 26000 },
	{ name = "terra hood", chance = 16500 },
	{ name = "sacred tree amulet", chance = 12300 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -240, condition = { type = CONDITION_POISON, totalDamage = 25, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = -320, maxDamage = -450, range = 5, shootEffect = CONST_ANI_POISON, effect = CONST_ME_SOUND_GREEN, target = true },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_EARTHDAMAGE, minDamage = -280, maxDamage = -350, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
}

monster.defenses = {
	defense = 46,
	armor = 46,
	mitigation = 1.29,
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
