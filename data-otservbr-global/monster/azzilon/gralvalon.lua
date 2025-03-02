local mType = Game.createMonsterType("Gralvalon")
local monster = {}

monster.description = "a Gralvalon"
monster.experience = 24000
monster.outfit = {
	lookType = 1793,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 1,
	lookMount = 0,
}
monster.bosstiary = {
	bossRaceId = 2606,
	bossRace = RARITY_BANE,

}

monster.health = 33000
monster.maxHealth = 33000
monster.race = "fire"
monster.corpse = 50046
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
	rewardBoss = true,
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

monster.summon = {
	maxSummons = 8,
	summons = {
		{ name = "hellhunter inferniarch", chance = 100, interval = 2000, count = 8 },
	},
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
	{ name = "demonic matter", chance = 6441, maxCount = 1 },
	{ name = "platinum coin", chance = 7613, maxCount = 30 },
	{ name = "demonic core essence", chance = 6027, maxCount = 1 },
	{ name = "cyan crystal fragment", chance = 9229, maxCount = 1 },
	{ name = "white gem", chance = 10927, maxCount = 1 },
	{ name = "sniper arrow", chance = 8124, maxCount = 10 },
	{ name = "assassin star", chance = 9983, maxCount = 12 },
	{ name = "onyx arrow", chance = 8367, maxCount = 4 },
	{ name = "dark helmet", chance = 13176, maxCount = 1 },
	--{ name = "death ring", chance = 12084, maxCount = 1 },
	{ id = 6299, chance = 13563, maxCount = 1 }, -- death ring
	{ name = "opal", chance = 14710, maxCount = 1 },
	{ name = "skin of gralvalon", chance = 10599, maxCount = 1 },
	{ name = "small amethyst", chance = 8014, maxCount = 2 },
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 200, maxDamage = -1069, condition = { type = CONDITION_FIRE, totalDamage = 600, interval = 9000 } },
	{name ="combat", interval = 2000, chance = 25, type = COMBAT_PHYSICALDAMAGE, minDamage = -460, maxDamage = -930, range = 7, shootEffect = CONST_ANI_INFERNALBOLT, target = true},
	{name ="combat", interval = 2000, chance = 17, type = COMBAT_ENERGYDAMAGE, minDamage = -380, maxDamage = -720, radius = 4, effect = CONST_ME_YELLOWENERGY, target = false},
        {name ="combat", interval = 2000, chance = 18, type = COMBAT_ENERGYDAMAGE, minDamage = -200, maxDamage = -700, range = 7, shootEffect = CONST_ANI_ENERGY, radius = 3, effect = CONST_ME_ENERGYHIT, target = true},
        {name = "whitechain", interval = 3000, chance = 10, minDamage = -100, maxDamage = -380, target = true },
        {name ="combat", interval = 2000, chance = 16, type = COMBAT_DEATHDAMAGE, minDamage = -200, maxDamage = -750, range = 7, shootEffect = CONST_ANI_ONYXARROW, effect = CONST_ME_MORTAREA, target = true},
	
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
