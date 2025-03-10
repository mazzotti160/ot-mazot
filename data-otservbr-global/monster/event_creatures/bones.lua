local mType = Game.createMonsterType("Bones")
local monster = {}

monster.description = "Bones"
monster.experience = 3750
monster.outfit = {
	lookType = 231,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 9500
monster.maxHealth = 9500
monster.race = "undead"
monster.corpse = 6305
monster.speed = 150
monster.manaCost = 0

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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Your new name is breakfast.", yell = false },
	{ text = "Keep that dog away!", yell = false },
	{ text = "Out Fluffy! Out! Bad dog!", yell = false },
	{ text = "Ahh, my old bones ...", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 100 },
	{ name = "gold coin", chance = 50000, maxCount = 90 },
	{ id = 3091, chance = 10000 }, -- sword ring
	{ name = "broadsword", chance = 4000 },
	{ name = "magic plate armor", chance = 2000 },
	{ name = "spectral stone", chance = 800 },
	{ name = "skull helmet", chance = 50000 },
	{ name = "soul orb", chance = 10000 },
	{ id = 6299, chance = 4000 }, -- death ring
	{ name = "demonic essence", chance = 1538 },
	{ id = 6570, chance = 5538, maxCount = 3 }, -- surprise bag
	{ id = 6571, chance = 1538 }, -- surprise bag
	{ name = "dragonbone staff", chance = 50000 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -845 },
	{ name = "combat", interval = 1000, chance = 13, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -600, radius = 1, target = true },
	{ name = "combat", interval = 3000, chance = 34, type = COMBAT_DEATHDAMAGE, minDamage = -180, maxDamage = -500, range = 1, radius = 1, shootEffect = CONST_ANI_DEATH, target = true },
}

monster.defenses = {
	defense = 55,
	armor = 50,
	mitigation = 2.00,
	{ name = "combat", interval = 5000, chance = 25, type = COMBAT_HEALING, minDamage = 60, maxDamage = 100, effect = CONST_ME_MAGIC_BLUE, target = false },
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
