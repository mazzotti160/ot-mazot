local mType = Game.createMonsterType("Cursed Book")
local monster = {}

monster.description = "a cursed book"
monster.experience = 13345
monster.outfit = {
	lookType = 1061,
	lookHead = 79,
	lookBody = 81,
	lookLegs = 93,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1655
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 1,
	Locations = "Secret Library (earth section).",
}

monster.health = 20000
monster.maxHealth = 20000
monster.race = "ink"
monster.corpse = 28590
monster.speed = 220
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
}

monster.loot = {
	{ name = "platinum coin", chance = 5444, maxCount = 15 },
	{ name = "book page", chance = 7230, maxCount = 4 },
	{ name = "small diamond", chance = 12580, maxCount = 6 },
	{ name = "silken bookmark", chance = 5012, maxCount = 1 },
	{ name = "small topaz", chance = 5474, maxCount = 5 },
	{ name = "small stone", chance = 13538, maxCount = 10 },
	{ name = "protection amulet", chance = 12966, maxCount = 1 },
	{ name = "diamond sceptre", chance = 14872, maxCount = 1 },
	{ name = "terra boots", chance = 7149, maxCount = 1 },
	{ name = "terra amulet", chance = 12942, maxCount = 1 },
	{ name = "terra hood", chance = 8068, maxCount = 1 },
	{ name = "stone skin amulet", chance = 7992, maxCount = 1 },
	{ name = "sacred tree amulet", chance = 7144, maxCount = 1 },
	{ name = "terra legs", chance = 13572, maxCount = 1 },
	{ name = "springsprout rod", chance = 12963, maxCount = 1 },
	{ name = "terra mantle", chance = 12635, maxCount = 1 },
	{ name = "swamplair armor", chance = 13366, maxCount = 1 },
--	{ name = "rusty armor", chance = 13811, maxCount = 1 },
	{ id = 8894, chance = 13811 }, -- rusted armor
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200 },
	{ name = "combat", interval = 1000, chance = 32, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -680, range = 7, shootEffect = CONST_ANI_EARTHARROW, target = false },
	{ name = "combat", interval = 1000, chance = 45, type = COMBAT_LIFEDRAIN, minDamage = -400, maxDamage = -575, length = 5, spread = 0, effect = CONST_ME_POISONAREA, target = false },
	{ name = "combat", interval = 1000, chance = 38, type = COMBAT_PHYSICALDAMAGE, minDamage = -230, maxDamage = -880, range = 7, radius = 3, effect = CONST_ME_GROUNDSHAKER, target = false },
}

monster.defenses = {
	defense = 40,
	armor = 82,
	mitigation = 2.16,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
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
