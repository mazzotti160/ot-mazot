local mType = Game.createMonsterType("Honour Guard 3")
local monster = {}

monster.name = "Reinforced Trapper"
monster.description = "a reinforced trapper"
monster.experience = 20
monster.outfit = {
	lookTypeEx = 7805,
}


monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 0
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 20,
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
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
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
	{ name = "platinum coin", chance = 10750, maxCount = 100 },
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 100, type = COMBAT_HOLYDAMAGE, minDamage = -350, maxDamage = -400, range = 7, shootEffect = CONST_ANI_HOLY, target = true },
  { name = "combat", interval = 2000, chance = 100, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -400, range = 7, shootEffect = CONST_ANI_ARROW, target = false },
	-- poison

}

monster.defenses = {
	defense = 0,
	armor = 12,
	mitigation = 0.86,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 8, maxDamage = 16, effect = CONST_ME_MAGIC_BLUE, target = false },
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
