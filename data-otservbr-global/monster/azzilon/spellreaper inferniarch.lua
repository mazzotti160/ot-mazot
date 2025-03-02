local mType = Game.createMonsterType("Spellreaper Inferniarch")
local monster = {}

monster.description = "a spellreaper inferniarch"
monster.experience = 9400
monster.outfit = {
	lookType = 1792,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2599
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

monster.health = 11800
monster.maxHealth = 11800
monster.race = "fire"
monster.corpse = 49990
monster.speed = 180
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
	{ text = "CHA..RAK!", yell = true },
	
}

monster.loot = {
	{ name = "platinum coin", chance = 14004, maxCount = 34 },
	{ name = "fire mushroom", chance = 6240, maxCount = 1 },
	{ name = "small ruby", chance = 13027, maxCount = 4 },
	{ name = "black pearl", chance = 9851, maxCount = 1 },
	{ name = "prismatic quartz", chance = 9291, maxCount = 1 },
	{ name = "demonic core essence", chance = 14480, maxCount = 1 },
	{ name = "wand of inferno", chance = 12393, maxCount = 1 },
	{ name = "mummified demon finger", chance = 10927, maxCount = 1 },
	{ name = "demonic matter", chance = 8020, maxCount = 1 },
	{ name = "spellbook of mind control", chance = 9947, maxCount = 1 },
	{ name = "spellreaper staff totem", chance = 11548, maxCount = 1 },
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 100, maxDamage = -500, condition = { type = CONDITION_CURSE, totalDamage = 600, interval = 9000 } },
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_AGONYDAMAGE, minDamage = -80, maxDamage = -200, range = 7, effect = 263, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_DEATHDAMAGE, minDamage = -380, maxDamage = -520, radius = 4, effect = CONST_ME_INSECTS, target = false},
        {name ="combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -280, maxDamage = -500, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
        {name ="combat", interval = 3000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -180, maxDamage = -220, radius = 4, effect = CONST_ME_DRAWBLOOD, target = false},
       
	
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
