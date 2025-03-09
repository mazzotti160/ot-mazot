local mType = Game.createMonsterType("Alchemist Brainstealer")
local monster = {}

monster.description = "Alchemist Brainstealer"
monster.experience = 720000
monster.outfit = {
	lookType = 1412,
	lookHead = 94,
	lookBody = 88,
	lookLegs = 88,
	lookFeet = 114,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 720000
monster.maxHealth = monster.health
monster.race = "undead"
monster.corpse = 36843
monster.speed = 425

monster.events = {
	"2BuffHeal",
	--"oberonImmune",
}

monster.summon = {
	maxSummons = 8,
	summons = {
		{ name = "grim reaper", chance = 100, interval = 2000, count = 4 },
	},
}

monster.changeTarget = {
	interval = 4000,
	chance = 10,
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
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
}

monster.loot = {
	{ id = 3041, chance = 1000 }, -- blue gem
	{ id = 3039, chance = 1000 }, -- red gem
	{ id = 3038, chance = 1000 }, -- green gem
	{ id = 3037, chance = 1000 }, -- yellow gem
	{ id = 3036, chance = 1000 }, -- violet gem
	{ id = 32769, chance = 1000 }, -- white gem
	{ id = 32626, chance = 1000 }, -- amber
	{ id = 32625, chance = 1000 }, -- amber dragonfly
	{ id = 32624, chance = 1000 }, -- amber bug
	{ id = 32623, chance = 1000 }, -- giant  topaz
	{ id = 32622, chance = 1000 }, -- giant amethist
	{ id = 30061, chance = 1000 }, -- giant azul
	{ id = 30060, chance = 1000 }, -- giant verde
	{ id = 30059, chance = 1000 }, -- giant vermelho
	{ id = 30180, chance = 1000 }, -- hexagonal ruby
}

monster.attacks = {
	{ name = "melee", type = COMBAT_PHYSICALDAMAGE, interval = 2000, minDamage = 0, maxDamage = -900 },
	{ name = "combat", type = COMBAT_DEATHDAMAGE, interval = 2000, chance = 20, radius = 4, minDamage = -1200, maxDamage = -1900, effect = CONST_ME_MORTAREA, shootEffect = CONST_ANI_SUDDENDEATH, target = true, range = 7 },
	{ name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 20, radius = 4, minDamage = -700, maxDamage = -1000, effect = CONST_ME_DRAWBLOOD },
	{ name = "combat", type = COMBAT_LIFEDRAIN, interval = 2000, chance = 10, length = 8, spread = 0, minDamage = -1200, maxDamage = -1600, effect = CONST_ME_ELECTRICALSPARK },
}

monster.defenses = {
	defense = 78,
	armor = 78,
	mitigation = 3.27,
	{ name = "combat", type = COMBAT_HEALING, chance = 15, interval = 2000, minDamage = 1450, maxDamage = 5350, effect = CONST_ME_MAGIC_BLUE },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = 5 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 0 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "invisible", condition = true },
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Feel the power of death unleashed!", yell = false },
	{ text = "I will rule again and my realm of death will span the world!", yell = false },
	{ text = "My lich-knights will conquer this world for me!", yell = false },
}

mType:register(monster)
