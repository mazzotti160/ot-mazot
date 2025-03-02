local mType = Game.createMonsterType("Malvaroth")
local monster = {}

monster.description = "a Malvaroth"
monster.experience = 28000
monster.outfit = {
	lookType = 1794,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2607,
	bossRace = RARITY_BANE,
}

monster.health = 45000
monster.maxHealth = 45000
monster.race = "fire"
monster.corpse = 50050
monster.speed = 160
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
	rewardBoss = true,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.light = {
	level = 0,
	color = 0,
}


monster.summon = {
	maxSummons = 8,
	summons = {
		{ name = "brinebrute inferniarch", chance = 100, interval = 2000, count = 8 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Garrr...Garrr!", yell = false },
	
}

monster.loot = {
	{ name = "brinebrute claw", chance = 9139, maxCount = 1 },
	{ name = "demonic matter", chance = 8427, maxCount = 1 },
	{ name = "platinum coin", chance = 11226, maxCount = 50 },
	{ name = "demonic core essence", chance = 11055, maxCount = 1 },
	{ name = "great spirit potion", chance = 8447, maxCount = 5 },
	{ name = "blue crystal splinter", chance = 12346, maxCount = 1 },
	{ name = "green crystal splinter", chance = 12324, maxCount = 1 },
	{ name = "green crystal shard", chance = 13420, maxCount = 2 },
	{ name = "violet crystal shard", chance = 5874, maxCount = 2 },
	{ name = "blue crystal shard", chance = 10469, maxCount = 2 },
	{ name = "brown crystal splinter", chance = 9816, maxCount = 1 },
	{ name = "gold ingot", chance = 10029, maxCount = 1 },
	{ name = "might ring", chance = 8332, maxCount = 1 },
	{ name = "stone skin amulet", chance = 6454, maxCount = 1 },
	{ name = "ultimate health potion", chance = 12357, maxCount = 4 },
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 400, maxDamage = -1669, condition = { type = CONDITION_FIRE, totalDamage = 600, interval = 9000 } },

	
}

monster.defenses = {
	defense = 40,
	armor = 90,
	mitigation = 2.45,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
