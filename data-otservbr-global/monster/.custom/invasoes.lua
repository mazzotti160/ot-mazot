local mType = Game.createMonsterType("Invasoes")
local monster = {}

monster.name = "Invasoes"
monster.description = "invasoes"
monster.experience = 20
monster.outfit = {
	lookType = 35,
}


monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 0
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = false,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 0,
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
}

monster.attacks = {
	-- poison

}

monster.defenses = {
	defense = 0,
	armor = 12,
	mitigation = 0.86,
	--{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 8, maxDamage = 16, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "outfit", interval = 2000, chance = 25, target = false, duration = 4000, outfitMonster = "gaz'haragoth" },
	{ name = "outfit", interval = 2000, chance = 25, target = false, duration = 4000, outfitMonster = "morshabaal" },
	{ name = "outfit", interval = 2000, chance = 25, target = false, duration = 4000, outfitMonster = "orshabaal" },
	{ name = "outfit", interval = 2000, chance = 25, target = false, duration = 4000, outfitMonster = "morgaroth" },
	{ name = "outfit", interval = 2000, chance = 25, target = false, duration = 4000, outfitMonster = "ghazbaran" },
	{ name = "outfit", interval = 2000, chance = 25, target = false, duration = 4000, outfitMonster = "omrafir" },		
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 100 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 100 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 100 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
