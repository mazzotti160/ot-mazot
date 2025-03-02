local mType = Game.createMonsterType("Magical Grand Master Oberon")
local monster = {}

monster.description = "Magical Grand Master Oberon"
monster.experience = 600000
monster.outfit = {
	lookType = 1072,
	lookHead = 21,
	lookBody = 96,
	lookLegs = 21,
	lookFeet = 105,
	lookAddons = 1,
	lookMount = 0,
}


monster.health = 600000
monster.maxHealth = 600000
monster.race = "blood"
monster.corpse = 28625
monster.speed = 205
monster.manaCost = 0

monster.events = {
	"1BuffHeal",
	--"oberonImmune",
}

monster.changeTarget = {
	interval = 4000,
	chance = 10,
}

monster.strategiesTarget = {
	nearest = 100,
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
	staticAttackChance = 70,
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
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1400 },
	{ name = "combat", interval = 3000, chance = 40, type = COMBAT_HOLYDAMAGE, minDamage = -800, maxDamage = -1200, length = 8, effect = CONST_ME_HOLYAREA, target = false },
	{ name = "combat", interval = 4250, chance = 35, type = COMBAT_EARTHDAMAGE, minDamage = -500, maxDamage = -1000, radius = 5, effect = CONST_ME_HITAREA, target = false },
	{ name = "combat", interval = 5000, chance = 37, type = COMBAT_DEATHDAMAGE, minDamage = -500, maxDamage = -1000, range = 7, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = false },
}

monster.defenses = {
	defense = 60,
	armor = 82,
	--	mitigation = ???,
	{ name = "speed", interval = 1000, chance = 10, speedChange = 180, effect = CONST_ME_POFF, target = false, duration = 4000 },
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
