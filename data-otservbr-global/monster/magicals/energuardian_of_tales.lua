local mType = Game.createMonsterType("Energuardian of Tales")
local monster = {}

monster.description = "an energuardian of tales"
monster.experience = 11361
monster.outfit = {
	lookType = 1063,
	lookHead = 86,
	lookBody = 85,
	lookLegs = 82,
	lookFeet = 93,
	lookAddons = 3,
	lookMount = 0,
}

monster.raceId = 1666
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Secret Library (energy section).",
}

monster.health = 14000
monster.maxHealth = 14000
monster.race = "undead"
monster.corpse = 28873
monster.speed = 210
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
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Die, enervating mortal!", yell = false },
	{ text = "Let the energy flow!", yell = false },
}

monster.loot = {
	{ name = "book page", chance = 7323, maxCount = 4 },
	{ name = "small amethyst", chance = 7699, maxCount = 5 },
	{ name = "lightning legs", chance = 11158, maxCount = 1 },
	{ name = "ultimate health potion", chance = 8052, maxCount = 1 },
	{ name = "energuardian of tales soul core", chance = 6565, maxCount = 1 },
	{ name = "flash arrow", chance = 12505, maxCount = 2 },
	{ name = "glowing rune", chance = 10321, maxCount = 4 },
	{ name = "lightning pendant", chance = 11136, maxCount = 1 },
	{ name = "spellbook of warding", chance = 8860, maxCount = 1 },
	{ name = "ultimate mana potion", chance = 7725, maxCount = 1 },
	{ name = "wand of starstorm", chance = 6929, maxCount = 1 },
	{ name = "platinum amulet", chance = 9750, maxCount = 1 },
	{ name = "might ring", chance = 8874, maxCount = 1 },
	{ name = "wand of defiance", chance = 11894, maxCount = 1 },
	{ name = "spellweaver's robe", chance = 9131, maxCount = 1 },
	{ name = "shockwave amulet", chance = 10034, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -10, maxDamage = -550 },
	{ name = "combat", interval = 1000, chance = 13, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -555, radius = 3, effect = CONST_ME_ENERGYAREA, target = false },
}

monster.defenses = {
	defense = 40,
	armor = 77,
	mitigation = 1.94,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = -12 },
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
