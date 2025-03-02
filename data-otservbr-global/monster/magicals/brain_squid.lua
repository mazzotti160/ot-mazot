local mType = Game.createMonsterType("Brain Squid")
local monster = {}

monster.description = "a brain squid"
monster.experience = 17672
monster.outfit = {
	lookType = 1059,
	lookHead = 17,
	lookBody = 41,
	lookLegs = 77,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1653
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library (energy section).",
}

monster.health = 18000
monster.maxHealth = 18000
monster.race = "undead"
monster.corpse = 28582
monster.speed = 215
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
	{ text = "tzzzz tzzzzz tzzzzz", yell = false },
	{ text = "tzuuuumme tzuuummmmee", yell = false },
}

monster.loot = {
	{ name = "platinum coin", chance = 7218, maxCount = 8 },
	--{ name = "inkwell (black)", chance = 11037, maxCount = 1 },
	{ id = 28568, chance = 11037, maxCount = 1 }, -- inkwell
	{ name = "energy bar", chance = 13946, maxCount = 1 },
	{ name = "instable proto matter", chance = 11650, maxCount = 1 },
	{ name = "ultimate mana potion", chance = 9904, maxCount = 1 },
	{ name = "violet crystal shard", chance = 9859, maxCount = 2 },
	{ name = "energy ball", chance = 10937, maxCount = 1 },
	{ name = "energy drink", chance = 8973, maxCount = 1 },
	{ name = "glowing rune", chance = 12552, maxCount = 2 },
	{ name = "odd organ", chance = 6719, maxCount = 1 },
	{ id = 23529, chance = 14212, maxCount = 1 }, -- ring of blue plasma
	{ id = 23531, chance = 7460, maxCount = 1 }, -- ring of green plasma
	{ name = "blue crystal splinter", chance = 10795, maxCount = 1 },
	{ name = "frozen lightning", chance = 10197, maxCount = 1 },
	{ name = "lightning headband", chance = 6368, maxCount = 1 },
	{ name = "violet gem", chance = 11590, maxCount = 1 },
	{ name = "wand of defiance", chance = 8928, maxCount = 1 },
	{ name = "small ruby", chance = 7169, maxCount = 6 },
	{ name = "cyan crystal fragment", chance = 5737, maxCount = 1 },
	{ id = 23533, chance = 7025, maxCount = 1 }, -- ring of red plasma
	{ name = "might ring", chance = 11187, maxCount = 1 },
	{ name = "lightning pendant", chance = 12898, maxCount = 1 },
	{ id = 23544, chance = 6222, maxCount = 1 }, -- collar of red plasma
	{ name = "slime heart", chance = 9910, maxCount = 1 },
	{ id = 23542, chance = 10300, maxCount = 1 }, -- collar of blue plasma
	{ name = "piece of dead brain", chance = 13800, maxCount = 1 },
	{ id = 23543, chance = 7684, maxCount = 1 }, -- collar of green plasma
	{ name = "spellweaver's robe", chance = 7598, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -470, range = 7, shootEffect = CONST_ANI_ENERGY, target = false },
	{ name = "combat", interval = 2000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -505, radius = 3, effect = CONST_ME_ENERGYAREA, target = false },
}

monster.defenses = {
	defense = 40,
	armor = 78,
	mitigation = 2.16,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 100 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
