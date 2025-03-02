local mType = Game.createMonsterType("Squid Warden")
local monster = {}

monster.description = "a squid warden"
monster.experience = 15300
monster.outfit = {
	lookType = 1059,
	lookHead = 9,
	lookBody = 21,
	lookLegs = 3,
	lookFeet = 57,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1669
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library (ice section).",
}

monster.health = 16500
monster.maxHealth = 16500
monster.race = "undead"
monster.corpse = 28786
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
	canWalkOnFire = false,
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
	{ name = "small sapphire", chance = 10676, maxCount = 3 },
	{ name = "platinum coin", chance = 8238, maxCount = 50 },
	{ name = "glowing rune", chance = 13565, maxCount = 6 },
	{ name = "frosty heart", chance = 10650, maxCount = 1 },
	{ name = "ultimate mana potion", chance = 5906, maxCount = 1 },
	--{ name = "inkwell (black)", chance = 6972, maxCount = 1 },
		{ id = 28568, chance = 6972 }, -- inkwell
	{ name = "ultimate health potion", chance = 12425, maxCount = 1 },
	{ id = 7441, chance = 14325 }, -- ice cube
	--{ name = "ice cube", chance = 14325, maxCount = 1 },
	{ name = "glacier mask", chance = 12456, maxCount = 1 },
	{ name = "ice rapier", chance = 10108, maxCount = 1 },
	{ name = "crystal mace", chance = 5169, maxCount = 1 },
	{ name = "crystal sword", chance = 12311, maxCount = 1 },
	{ name = "slime heart", chance = 10171, maxCount = 1 },
	{ name = "piece of dead brain", chance = 5282, maxCount = 1 },
	{ name = "diamond sceptre", chance = 7730, maxCount = 1 },
	{ name = "glacier kilt", chance = 8215, maxCount = 1 },
	{ name = "glacier robe", chance = 12603, maxCount = 1 },
	{ name = "sapphire hammer", chance = 6128, maxCount = 1 },
	{ name = "glacial rod", chance = 12769, maxCount = 1 },
	{ name = "crystalline armor", chance = 10285, maxCount = 1 },
	{ name = "leviathan's amulet", chance = 10349, maxCount = 1 },
	{ name = "shard", chance = 8430, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -300 },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -200, range = 7, shootEffect = CONST_ANI_ICE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -680, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -375, length = 3, spread = 2, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -230, maxDamage = -480, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false },
}

monster.defenses = {
	defense = 40,
	armor = 78,
	mitigation = 2.16,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -15 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
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
