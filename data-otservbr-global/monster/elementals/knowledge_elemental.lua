local mType = Game.createMonsterType("Knowledge Elemental")
local monster = {}

monster.description = "a knowledge elemental"
monster.experience = 10603
monster.outfit = {
	lookType = 1065,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1670
monster.Bestiary = {
	class = "Elemental",
	race = BESTY_RACE_ELEMENTAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Secret Library energy section.",
}

monster.health = 10500
monster.maxHealth = 10500
monster.race = "undead"
monster.corpse = 28605
monster.speed = 230
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
	level = 4,
	color = 71,
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Did you know... there are over 200 bones in your body to break?", yell = false },
	{ text = "Did you know... a lot of so-called trivia facts aren't even remotely true?", yell = false },
	{ text = "Did you know... fear can be smelled?", yell = false },
	{ text = "Did you know... you could die in 1.299.223 ways within the next ten seconds?", yell = false },
}

monster.loot = {
	{ name = "small amethyst", chance = 6319, maxCount = 6 },
	{ name = "glowing rune", chance = 13630, maxCount = 9 },
	{ name = "platinum coin", chance = 9058, maxCount = 3 },
	{ name = "book page", chance = 13957, maxCount = 5 },
	{ name = "silken bookmark", chance = 13185, maxCount = 1 },
	{ name = "quill", chance = 9354, maxCount = 1 },
	{ name = "ultimate mana potion", chance = 11009, maxCount = 1 },
	{ name = "guardian shield", chance = 12718, maxCount = 1 },
	{ name = "flash arrow", chance = 13175, maxCount = 15 },
	{ name = "throwing star", chance = 7237, maxCount = 10 },
--	{ name = "energy ring", chance = 11420, maxCount = 1 },
	{ id = 3051, chance = 11420, maxCount = 1 }, -- energy ring
	{ name = "mana potion", chance = 10538, maxCount = 1 },
--	{ name = "crystal ring", chance = 14880, maxCount = 1 },
	{ id = 3007, chance = 11420, maxCount = 1 }, -- crystal ring
	{ name = "might ring", chance = 13019, maxCount = 1 },
	{ name = "wand of cosmic energy", chance = 10276, maxCount = 1 },
	{ name = "crystal sword", chance = 13747, maxCount = 1 },
	{ name = "ultimate health potion", chance = 8403, maxCount = 2 },
	{ name = "obsidian lance", chance = 7919, maxCount = 1 },
	{ name = "silver amulet", chance = 8503, maxCount = 1 },
	{ name = "lightning pendant", chance = 11458, maxCount = 1 },
	{ name = "wand of defiance", chance = 14805, maxCount = 1 },
	{ name = "spellweaver's robe", chance = 11890, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -400 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HOLYDAMAGE, minDamage = -200, maxDamage = -680, radius = 3, effect = CONST_ME_HOLYDAMAGE, target = true },
	{ name = "combat", interval = 2000, chance = 14, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -680, range = 7, shootEffect = CONST_ANI_ENERGY, target = false },
}

monster.defenses = {
	defense = 33,
	armor = 76,
	mitigation = 2.08,
	{ name = "combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 300, radius = 3, effect = CONST_ME_BLOCKHIT, target = false },
	{ name = "combat", interval = 200, chance = 55, type = COMBAT_PHYSICALDAMAGE, minDamage = 100, maxDamage = 300, radius = 3, effect = CONST_ME_ENERGYHIT, target = false },
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
	{ type = COMBAT_HOLYDAMAGE, percent = 50 },
	{ type = COMBAT_DEATHDAMAGE, percent = -20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
