local mType = Game.createMonsterType("Lost Husher")
local monster = {}

monster.description = "a lost husher"
monster.experience = 1100
monster.outfit = {
	lookType = 537,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 924
monster.Bestiary = {
	class = "Humanoid",
	race = BESTY_RACE_HUMANOID,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Caves of the Lost, Lower Spike and in the Lost Dwarf version of the Forsaken Mine.",
}

monster.health = 1600
monster.maxHealth = 1600
monster.race = "blood"
monster.corpse = 17684
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
	targetDistance = 4,
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

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Arr far zwar!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 50000, maxCount = 100 },
	{ name = "platinum coin", chance = 58670, maxCount = 2 },
	{ name = "fire axe", chance = 330 },
	{ name = "skull staff", chance = 280 },
	{ name = "guardian shield", chance = 830 },
	{ name = "tower shield", chance = 440 },
	{ name = "brown mushroom", chance = 14920, maxCount = 2 },
	{ name = "spiked squelcher", chance = 50 },
	{ name = "strong health potion", chance = 11050, maxCount = 3 },
	{ name = "great mana potion", chance = 10770, maxCount = 2 },
	{ name = "terra legs", chance = 50 },
	{ name = "terra boots", chance = 880 },
	{ name = "small topaz", chance = 9780 },
	{ name = "clay lump", chance = 500 },
	{ id = 12600, chance = 10930 }, -- coal
	{ name = "buckle", chance = 8180 },
	{ name = "buckle", chance = 770 },
	{ name = "bonecarving knife", chance = 8510 },
	{ name = "wimp tooth chain", chance = 8950 },
	{ name = "skull shatterer", chance = 12320 },
	{ name = "red hair dye", chance = 8510 },
	{ name = "basalt figurine", chance = 8560 },
}

monster.attacks = {
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -300, length = 6, spread = 0, effect = CONST_ME_BLACKSMOKE, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -150, maxDamage = -200, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_EARTHDAMAGE, minDamage = -150, maxDamage = -250, range = 7, radius = 2, shootEffect = CONST_ANI_SMALLEARTH, effect = CONST_ME_MAGIC_GREEN, target = true },
	{ name = "drunk", interval = 2000, chance = 10, radius = 4, effect = CONST_ME_SOUND_RED, target = false, duration = 6000 },
}

monster.defenses = {
	defense = 25,
	armor = 55,
	mitigation = 1.35,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 75, maxDamage = 92, effect = CONST_ME_YELLOWENERGY, target = false },
	{ name = "invisible", interval = 2000, chance = 15, effect = CONST_ME_TELEPORT },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 5 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 25 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
