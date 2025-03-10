local mType = Game.createMonsterType("Troll Marauder")
local monster = {}

monster.description = "a troll marauder"
monster.experience = 40
monster.outfit = {
	lookType = 281,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 70
monster.maxHealth = 70
monster.race = "blood"
monster.corpse = 861
monster.speed = 205
monster.manaCost = 350

monster.changeTarget = {
	interval = 2000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = true,
	attackable = true,
	hostile = true,
	convinceable = true,
	pushable = true,
	rewardBoss = false,
	illusionable = true,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = false,
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
	{ id = 21470, chance = 5190, maxCount = 3 }, -- simple arrow
	{ id = 9689, chance = 2600 }, -- bunch of troll hair
	{ id = 3031, chance = 100000, maxCount = 8 }, -- gold coin
	{ id = 3552, chance = 5190 }, -- leather boots
	{ id = 3577, chance = 24680 }, -- meat
	{ id = 3054, chance = 1300 }, -- silver amulet
	{ id = 3277, chance = 25970 }, -- spear
	{ id = 3336, chance = 10390 }, -- studded club
	{ id = 3378, chance = 9090 }, -- studded armor
	{ id = 11515, chance = 5190 }, -- trollroot
	{ id = 3412, chance = 11690 }, -- wooden shield
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, skill = 10, attack = 25 },
}

monster.defenses = {
	defense = 4,
	armor = 8,
	--	mitigation = ???,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = -15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 10 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 10 },
	{ type = COMBAT_HOLYDAMAGE, percent = 10 },
	{ type = COMBAT_DEATHDAMAGE, percent = -10 },
}

monster.immunities = {
	{ type = "paralyze", condition = false },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = false },
	{ type = "bleed", condition = false },
}

mType:register(monster)
