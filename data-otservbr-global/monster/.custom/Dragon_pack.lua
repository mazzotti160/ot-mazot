local mType = Game.createMonsterType("Dragon Pack")
local monster = {}

monster.description = "Dragon Pack"
monster.experience = 300000
monster.outfit = {
	lookType = 1712,
	lookHead = 78,
	lookBody = 3,
	lookLegs = 79,
	lookFeet = 79,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
	"DragonPackDeath",
}

monster.bosstiary = {
	bossRaceId = 2466,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 250000
monster.maxHealth = 250000
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
	{ name = "gold coin", chance = 9218, maxCount = 391 },
	{ name = "platinum coin", chance = 12482, maxCount = 200 },
	{ name = "crystal coin", chance = 6164, maxCount = 3 },
	{ name = "blue gem", chance = 11356, maxCount = 2 },
	--{ name = "ice cube", chance = 9528, maxCount = 2 },
		{ id = 7441, chance = 9528 }, -- ice cube
	{ name = "life crystal", chance = 14505, maxCount = 2 },
	--{ name = "yellow gem", chance = 12359, maxCount = 2 },
	{ id = 3037, chance = 12359, maxcount = 2 }, -- yellow gem
	{ name = "broadsword", chance = 5903, maxCount = 1 },
	{ name = "demonic essence", chance = 12948, maxCount = 1 },
	--{ name = "white gem,", chance = 8435, maxCount = 2 },
	{ id = 32769, chance = 8435, maxcount = 2 }, -- white gem
	{ name = "dragonbone staff", chance = 7838, maxCount = 1 },
	{ name = "dragon scale mail", chance = 11169, maxCount = 1 },
	{ name = "dragon shield", chance = 12698, maxCount = 1 },
	{ name = "dragon slayer", chance = 8858, maxCount = 1 },
	{ name = "drakinata", chance = 14207, maxCount = 1 },
	{ name = "fire sword", chance = 6795, maxCount = 1 },
	{ name = "giant amethyst", chance = 7492, maxCount = 1 },
	{ name = "giant emerald", chance = 10308, maxCount = 1 },
	{ name = "giant topaz", chance = 8303, maxCount = 1 },
	{ name = "guardian boots", chance = 9683, maxCount = 1 },
	{ name = "jade hat", chance = 5554, maxCount = 1 },
	{ name = "royal helmet", chance = 9082, maxCount = 1 },
	{ name = "serpent sword", chance = 14611, maxCount = 1 },
	{ name = "shard", chance = 12550, maxCount = 1 },
	{ name = "spellweaver's robe", chance = 10451, maxCount = 1 },
	{ name = "strange helmet", chance = 8973, maxCount = 1 },
	{ name = "tower shield", chance = 5325, maxCount = 1 },
	{ name = "wand of inferno", chance = 13239, maxCount = 1 },
	{ name = "zaoan helmet", chance = 10115, maxCount = 1 },
	{ name = "crystallized blood", chance = 13710, maxCount = 1 },
	{ name = "exalted seal", chance = 8538, maxCount = 1 },
	{ name = "gold-scaled sentinel", chance = 11899, maxCount = 1 },
	{ name = "arcane dragon robe", chance = 400, maxCount = 1 },
	{ name = "dauntless dragon scale armor", chance = 400, maxCount = 1 },
	{ name = "herald's insignia", chance = 400, maxCount = 1 },
	{ name = "herald's wings", chance = 400, maxCount = 1 },
	{ name = "mystical dragon robe", chance = 400, maxCount = 1 },
	{ name = "unerring dragon scale armor", chance = 400, maxCount = 1 },
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
