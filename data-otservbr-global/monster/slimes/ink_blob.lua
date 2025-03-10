local mType = Game.createMonsterType("Ink Blob")
local monster = {}

monster.description = "an ink blob"
monster.experience = 14450
monster.outfit = {
	lookType = 1064,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1658
monster.Bestiary = {
	class = "Slime",
	race = BESTY_RACE_SLIME,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library (earth, fire and ice sections)",
}

monster.health = 9500
monster.maxHealth = 9500
monster.race = "ink"
monster.corpse = 28601
monster.speed = 190
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
	canPushCreatures = false,
	staticAttackChance = 85,
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
	{ name = "platinum coin", chance = 8452, maxCount = 25 },
	{ name = "envenomed arrow", chance = 10287, maxCount = 50 },
	{ name = "small diamond", chance = 9943, maxCount = 7 },
	{ name = "small topaz", chance = 11758, maxCount = 3 },
--	{ name = "inkwell (black)", chance = 6457, maxCount = 4 },
	{ id = 28568, chance = 7441 }, -- inkwell
	{ name = "poisonous slime", chance = 12972, maxCount = 1 },
	--{ name = "giant shimmering pearl (brown)", chance = 8808, maxCount = 1 },
		{ id = 282, chance = 8808 }, -- giant pearl brown
	{ name = "terra hood", chance = 12403, maxCount = 1 },
	{ name = "terra boots", chance = 9539, maxCount = 1 },
	{ name = "blue gem", chance = 7827, maxCount = 1 },
	{ name = "terra legs", chance = 12480, maxCount = 1 },
	{ name = "stone skin amulet", chance = 8208, maxCount = 1 },
	{ name = "sacred tree amulet", chance = 11919, maxCount = 1 },
	{ name = "protection amulet", chance = 12268, maxCount = 1 },
	{ name = "terra mantle", chance = 13596, maxCount = 1 },
	{ name = "springsprout rod", chance = 7381, maxCount = 1 },
	{ name = "clay lump", chance = 14627, maxCount = 1 },
	{ name = "terra amulet", chance = 6833, maxCount = 1 },
	{ name = "swamplair armor", chance = 12908, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -600, maxDamage = -1055 },
	-- poison
	{ name = "condition", type = CONDITION_POISON, interval = 2000, chance = 52, minDamage = -400, maxDamage = -580, radius = 4, effect = CONST_ME_POISONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 52, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -480, radius = 3, shootEffect = CONST_ANI_ENVENOMEDARROW, effect = CONST_ME_GREEN_RINGS, target = true },
	{ name = "combat", interval = 2000, chance = 41, type = COMBAT_EARTHDAMAGE, minDamage = -400, maxDamage = -505, range = 7, shootEffect = CONST_ANI_POISON, effect = CONST_ME_POISONAREA, target = true },
}

monster.defenses = {
	defense = 15,
	armor = 70,
	mitigation = 2.02,
	{ name = "combat", interval = 2000, chance = 5, type = COMBAT_HEALING, minDamage = 20, maxDamage = 30, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -8 },
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
