local mType = Game.createMonsterType("Hellhunter Inferniarch")
local monster = {}

monster.description = "a hellhunter inferniarch"
monster.experience = 9100
monster.outfit = {
	lookType = 1793,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2600
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Azzilon Castle",
}

monster.health = 11300
monster.maxHealth = 11300
monster.race = "fire"
monster.corpse = 49994
monster.speed = 175
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
	targetDistance = 3,
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
	{ text = "Ardash... El...!", "Urrrglll!", yell = false },
	
}

monster.loot = {
	{ name = "platinum coin", chance = 10542, maxCount = 35 },
	{ name = "onyx arrow", chance = 9630, maxCount = 5 },
	{ name = "assassin star", chance = 12678, maxCount = 10 },
	{ name = "small amethyst", chance = 14225, maxCount = 4 },
	{ name = "cyan crystal fragment", chance = 11481, maxCount = 1 },
	{ name = "demonic core essence", chance = 8045, maxCount = 1 },
	{ name = "sniper arrow", chance = 10226, maxCount = 5 },
	{ name = "dark helmet", chance = 14910, maxCount = 1 },
	{ name = "mummified demon finger", chance = 11406, maxCount = 1 },
	{ id = 6299, chance = 11324, maxCount = 1 }, -- death ring
	{ name = "demonic matter", chance = 8729, maxCount = 1 },
	{ name = "hellhunter eye", chance = 13646, maxCount = 1 },
	{ name = "composite hornbow", chance = 5373, maxCount = 1 },
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 200, maxDamage = -669, condition = { type = CONDITION_FIRE, totalDamage = 600, interval = 9000 } },
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -460, maxDamage = -930, range = 7, shootEffect = CONST_ANI_INFERNALBOLT, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -380, maxDamage = -520, radius = 4, effect = CONST_ME_YELLOWENERGY, target = false},
        {name ="combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -500, range = 7, shootEffect = CONST_ANI_ENERGY, radius = 3, effect = CONST_ME_ENERGYHIT, target = true},
        {name = "whitechain", interval = 2000, chance = 15, minDamage = -100, maxDamage = -380, range = 8 },
        {name ="combat", interval = 2000, chance = 16, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -550, range = 7, shootEffect = CONST_ANI_ONYXARROW, effect = CONST_ME_MORTAREA, target = true},
	
}

monster.defenses = {
	defense = 20,
	armor = 73,
	mitigation = 2.20,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 10 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = -15 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = -15 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
