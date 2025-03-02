local mType = Game.createMonsterType("Brinebrute Inferniarch")
local monster = {}

monster.description = "a brinebrute inferniarch"
monster.experience = 23500
monster.outfit = {
	lookType = 1794,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 2601
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

monster.health = 32000
monster.maxHealth = 32000
monster.race = "fire"
monster.corpse = 49998
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
	{ text = "Garrr...Garrr!", yell = false },
	
}

monster.loot = {
	{ name = "platinum coin", chance = 8438, maxCount = 40 },
	{ name = "brinebrute claw", chance = 7609, maxCount = 1 },
	{ name = "great spirit potion", chance = 10703, maxCount = 5 },
	{ name = "brown crystal splinter", chance = 14764, maxCount = 1 },
	{ name = "blue crystal splinter", chance = 6815, maxCount = 1 },
	{ name = "green crystal shard", chance = 10456, maxCount = 2 },
	{ name = "blue crystal shard", chance = 6063, maxCount = 2 },
	{ name = "green crystal splinter", chance = 10206, maxCount = 1 },
	{ name = "violet crystal shard", chance = 12538, maxCount = 2 },
	{ id = 3039, chance = 13473, maxCount = 1 }, -- red gem
	{ name = "small sapphire", chance = 13487, maxCount = 4 },
	{ name = "ultimate health potion", chance = 6724, maxCount = 3 },
	{ name = "demonic core essence", chance = 6490, maxCount = 1 },
	{ name = "stone skin amulet", chance = 6910, maxCount = 1 },
	{ name = "bloodstained scythe", chance = 5215, maxCount = 1 },
	{ name = "giant sword", chance = 11755, maxCount = 1 },
	{ name = "green gem", chance = 14610, maxCount = 1 },
	{ name = "might ring", chance = 7513, maxCount = 1 },
	{ id = 3098, chance = 6370, maxCount = 1 }, -- ring of healing
	{ name = "demonic matter", chance = 6514, maxCount = 1 },
	{ name = "gold ring", chance = 13533, maxCount = 1 },
	{ name = "mummified demon finger", chance = 10533, maxCount = 1 },
	{ name = "demon shield", chance = 8265, maxCount = 1 },
	{ name = "demonrage sword", chance = 12142, maxCount = 1 },
}

monster.attacks = {
	{name = "melee", interval = 2000, chance = 100, minDamage = 400, maxDamage = -1069, condition = { type = CONDITION_FIRE, totalDamage = 600, interval = 9000 } },
	{name ="combat", interval = 2000, chance = 18, type = COMBAT_AGONYDAMAGE, minDamage = -80, maxDamage = -150, range = 7, effect = 150, target = true},
	{name ="combat", interval = 2000, chance = 14, type = COMBAT_FIREDAMAGE, minDamage = -380, maxDamage = -720, length = 6, spread = 0, effect = CONST_ME_EXPLOSIONHIT, target = false},
        {name ="combat", interval = 2000, chance = 12, type = COMBAT_DEATHDAMAGE, minDamage = -380, maxDamage = -520, radius = 4, effect = CONST_ME_SLASH, target = false},
	
}

monster.defenses = {
	defense = 40,
	armor = 80,
	mitigation = 2.45,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_REDSMOKE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 20 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = -10 },
	{ type = COMBAT_FIREDAMAGE, percent = 0 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 20 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
