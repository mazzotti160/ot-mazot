local mType = Game.createMonsterType("The Imperor")
local monster = {}

monster.description = "The Imperor"
monster.experience = 8000
monster.outfit = {
	lookType = 237,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.bosstiary = {
	bossRaceId = 304,
	bossRace = RARITY_NEMESIS,
}

monster.health = 15000
monster.maxHealth = 15000
monster.race = "blood"
monster.corpse = 6363
monster.speed = 155
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 5,
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
	{ text = "Poke! Poke! <chuckle>", yell = false },
	{ text = "Let me tickle you with my trident!", yell = false },
	{ text = "I am so bad today", yell = false },
}

monster.loot = {
	{ id = 6499, chance = 100000 }, -- demonic essence
	{ id = 3031, chance = 100000, maxCount = 150 }, -- gold coin
	{ id = 6534, chance = 100000 }, -- imperor's trident
	{ id = 3451, chance = 53850 }, -- pitchfork
	{ id = 3320, chance = 11000 }, -- fire axe
	{ id = 3035, chance = 46150, maxCount = 3 }, -- platinum coin
	{ id = 5944, chance = 100000 }, -- soul orb
	{ id = 3382, chance = 30770 }, -- crown legs
	{ id = 3364, chance = 7690 }, -- golden legs
	{ id = 3019, chance = 15380 }, -- demonbone amulet
	{ id = 3442, chance = 7690 }, -- tempest shield
	{ id = 3415, chance = 15400 }, -- guardian shield
	{ id = 826, chance = 15380 }, -- magma coat
	{ id = 3033, chance = 30770, maxCount = 4 }, -- small amethyst
	{ id = 3030, chance = 7690, maxCount = 4 }, -- small ruby
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 90, attack = 100, condition = { type = CONDITION_POISON, totalDamage = 280, interval = 4000 } },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -350, range = 7, radius = 4, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
	{ name = "combat", interval = 2500, chance = 12, type = COMBAT_FIREDAMAGE, minDamage = -100, maxDamage = -460, range = 7, radius = 2, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true },
	{ name = "diabolic imp skill reducer", interval = 2000, chance = 10, range = 7, target = false },
}

monster.defenses = {
	defense = 15,
	armor = 15,
	--	mitigation = ???,
	{ name = "combat", interval = 2000, chance = 35, type = COMBAT_HEALING, minDamage = 275, maxDamage = 840, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "the imperor summon", interval = 2000, chance = 21, target = false },
	{ name = "speed", interval = 2000, chance = 12, speedChange = 1496, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
	{ name = "invisible", interval = 2000, chance = 11, effect = CONST_ME_TELEPORT },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
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
