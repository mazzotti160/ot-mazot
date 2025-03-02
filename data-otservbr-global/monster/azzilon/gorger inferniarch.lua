local mType = Game.createMonsterType("Gorger Inferniarch")
local monster = {}

monster.description = "a gorger inferniarch"
monster.experience = 7680
monster.outfit = {
	lookType = 1797,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2604
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

monster.health = 9450
monster.maxHealth = 9450
monster.race = "blood"
monster.corpse = 50010
monster.speed = 160
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
	{ text = "Kar Ath... Ul", yell = false },
        { text = "Rezzz Kor ... Urrrgh!", yell = false },
	
}

monster.loot = {
	{ name = "platinum coin", chance = 11616, maxCount = 24 },
	{ name = "small sapphire", chance = 9067, maxCount = 3 },
	{ name = "spiked squelcher", chance = 6546, maxCount = 1 },
	{ name = "demonic core essence", chance = 12916, maxCount = 1 },
	--{ name = "club ring", chance = 11529, maxCount = 1 },
	{ id = 3093, chance = 10788, maxCount = 1 }, -- club ring
	{ name = "gorger antlers", chance = 6371, maxCount = 1 },
	{ name = "mummified demon finger", chance = 7322, maxCount = 1 },
	{ name = "demonic matter", chance = 8249, maxCount = 1 },
	--{ name = "gold nugget", chance = 10788, maxCount = 1 },
	{ id = 3040, chance = 10788, maxCount = 1 }, -- gold nugget
--	{ name = "time ring", chance = 13563, maxCount = 1 },
	{ id = 3053, chance = 13563, maxCount = 1 }, -- time ring
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = -199, maxDamage = -503, condition = { type = CONDITION_AGONY, totalDamage = 400, interval = 9000 } },
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_DEATHDAMAGE, minDamage = -438, maxDamage = -485, radius = 5, effect = CONST_ME_MORTAREA, target = true},
	{name ="extended fire chain", interval = 2000, chance = 20, minDamage = -389, maxDamage = -438},
        {name ="combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -440, maxDamage = -459, effect = 264, target = true},
     
       
	
}

monster.defenses = {
	defense = 20,
	armor = 74,
	mitigation = 2.20,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -5 },
	{ type = COMBAT_ENERGYDAMAGE, percent = -10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = -10 },
	{ type = COMBAT_DEATHDAMAGE, percent = 10 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
