local mType = Game.createMonsterType("Twisterror")
local monster = {}

monster.description = "a Twisterror"
monster.experience = 25000
monster.outfit = {
	lookType = 1792,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2605,
	bossRace = RARITY_BANE,
}

monster.health = 35000
monster.maxHealth = 35000
monster.race = "blood"
monster.corpse = 50039
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
		{ name = "spellreaper inferniarch", chance = 100, interval = 2000, count = 8 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "CHA..RAK!", yell = true },
	
}

monster.loot = {
	{ name = "demonic matter", chance = 6114, maxCount = 1 },
	{ name = "platinum coin", chance = 9331, maxCount = 30 },
	{ name = "demonic core essence", chance = 14722, maxCount = 1 },
	{ name = "blue gem", chance = 5657, maxCount = 1 },
	{ name = "black pearl", chance = 12618, maxCount = 1 },
	{ name = "fire mushroom", chance = 11191, maxCount = 1 },
	{ name = "skin of twisterror", chance = 14022, maxCount = 1 },
	{ name = "great mana potion", chance = 5188, maxCount = 1 },
	{ name = "spellreaper staff totem", chance = 11406, maxCount = 1 },
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 100, maxDamage = -500, condition = { type = CONDITION_CURSE, totalDamage = 600, interval = 9000 } },
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_AGONYDAMAGE, minDamage = -80, maxDamage = -200, range = 7, effect = 263, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_DEATHDAMAGE, minDamage = -380, maxDamage = -720, radius = 4, effect = CONST_ME_INSECTS, target = false},
        {name ="combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -280, maxDamage = -700, range = 7, shootEffect = CONST_ANI_ENERGY, effect = CONST_ME_ENERGYHIT, target = true},
        {name ="combat", interval = 3000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -180, maxDamage = -520, radius = 4, effect = CONST_ME_DRAWBLOOD, target = false},
       
	
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
