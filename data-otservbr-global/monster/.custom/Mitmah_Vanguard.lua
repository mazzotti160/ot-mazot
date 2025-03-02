local mType = Game.createMonsterType("Mitmah Vanguard")
local monster = {}

monster.description = "Mitmah Vanguard"
monster.experience = 300000
monster.outfit = {
	lookType = 1716,
	lookHead = 78,
	lookBody = 3,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 2464,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 50000
monster.maxHealth = 50000
monster.race = "fire"
monster.corpse = 6068
monster.speed = 240
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
	chance = 25,
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
	canWalkOnEnergy = true,
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
	{ text = "FIRST I'LL OBLITERATE YOU THEN I BURN THIS PRISON DOWN!!", yell = true },
	{ text = "I'M TOO HOT FOR YOU TO HANDLE!", yell = true },
	{ text = "FREEDOM FOR THE PRINCES!", yell = true },
	{ text = "OMRAFIR INHALES DEEPLY!", yell = true },
	{ text = "OMRAFIR BREATHES INFERNAL FIRE", yell = true },
	{ text = "THE POWER OF HIS INTERNAL FIRE RENEWS OMRAFIR!", yell = true },
	{ text = "I WILL RULE WHEN THE NEW ORDER IS ESTABLISHED!", yell = true },
	{ text = "INFERNATIL! COME HERE AND FIGHT ME YOU COWARD!", yell = true },
}

monster.loot = {
	{ name = "gold coin", chance = 6551, maxCount = 380 },
	{ name = "great health potion", chance = 7897, maxCount = 12 },
	{ name = "great mana potion", chance = 9096, maxCount = 13 },
	{ name = "great spirit potion", chance = 7053, maxCount = 9 },
	{ name = "crystal of the mitmah", chance = 6596, maxCount = 1 },
	{ name = "broken mitmah necklace", chance = 7458, maxCount = 1 },
	{ name = "white gem", chance = 12485, maxCount = 1 },
	{ name = "blue gem", chance = 10030, maxCount = 1 },
	{ name = "platinum coin", chance = 10345, maxCount = 60 },
	{ name = "yellow gem", chance = 5412, maxCount = 2 },
	{ name = "broken mitmah chestplate", chance = 13431, maxCount = 1 },
	{ name = "giant sapphire", chance = 14107, maxCount = 1 },
	{ name = "splintered mitmah gem", chance = 11378, maxCount = 1 },
	{ name = "stoic iks boots", chance = 400, maxCount = 1 },
	{ name = "stoic iks casque", chance = 400, maxCount = 1 },
	{ name = "stoic iks chestplate", chance = 400, maxCount = 1 },
	{ name = "stoic iks culet", chance = 400, maxCount = 1 },
	{ name = "stoic iks faulds", chance = 400, maxCount = 1 },
	{ name = "stoic iks headpiece", chance = 400, maxCount = 1 },
	{ name = "stoic iks sandals", chance = 400, maxCount = 1 },
	{ name = "stoic iks cuirass", chance = 400, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 392, attack = 500 },
	{ name = "omrafir wave", interval = 2000, chance = 17, minDamage = -500, maxDamage = -1000, target = false },
	{ name = "omrafir beam", interval = 2000, chance = 15, minDamage = -7000, maxDamage = -10000, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -1000, maxDamage = -3000, length = 10, spread = 3, effect = CONST_ME_FIREATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -200, maxDamage = -400, radius = 3, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "combat", interval = 2000, chance = 19, type = COMBAT_FIREDAMAGE, minDamage = -150, maxDamage = -300, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_HITBYFIRE, target = true },
	{ name = "firefield", interval = 2000, chance = 12, radius = 3, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true },
}

monster.defenses = {
	defense = 165,
	armor = 155,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_HEALING, minDamage = 440, maxDamage = 800, target = false },
--	{ name = "omrafir summon", interval = 2000, chance = 50, target = false },
	--{ name = "omrafir healing 2", interval = 2000, chance = 20, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
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
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
