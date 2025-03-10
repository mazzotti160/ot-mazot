local mType = Game.createMonsterType("Sulphur Scuttler")
local monster = {}

monster.description = "Sulphur Scuttler"
monster.experience = 900
monster.outfit = {
	lookType = 352,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 1300
monster.maxHealth = 1300
monster.race = "venom"
monster.corpse = 11571
monster.speed = 205
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 2,
	color = 66,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ id = 3035, chance = 98330, maxCount = 10 }, -- platinum coin
	{ id = 9640, chance = 50000 }, -- poisonous slime
	{ id = 10305, chance = 75000 }, -- lump of earth
	{ id = 10315, chance = 96670 }, -- sulphurous stone
	{ id = 11703, chance = 100000 }, -- brimstone shell
	{ id = 237, chance = 71670 }, -- strong mana potion
	{ id = 236, chance = 75000 }, -- strong health potion
	{ id = 11702, chance = 100000 }, -- brimstone fangs
	{ id = 3032, chance = 65000, maxCount = 4 }, -- small emerald
	{ id = 5904, chance = 81670 }, -- magic sulphur
	{ id = 3049, chance = 46670 }, -- stealth ring
	{ id = 3055, chance = 20000 }, -- platinum amulet
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -200 },
	{ name = "speed", interval = 2000, chance = 20, speedChange = -600, range = 7, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = false, duration = 10000 },
	{ name = "combat", interval = 2000, chance = 5, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -394, radius = 6, effect = CONST_ME_SMALLPLANTS, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = 0, maxDamage = -200, length = 6, spread = 3, effect = CONST_ME_HITBYPOISON, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_EARTHDAMAGE, minDamage = 0, maxDamage = -120, length = 8, spread = 3, effect = CONST_ME_YELLOW_RINGS, target = false },
}

monster.defenses = {
	defense = 25,
	armor = 25,
	--	mitigation = 1.38,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
