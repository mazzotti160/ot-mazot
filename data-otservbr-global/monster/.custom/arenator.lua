local mType = Game.createMonsterType("Arenator")
local monster = {}

monster.description = "an arenator"
monster.experience = 15770
monster.outfit = {
	lookType = 1299,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 25000000
monster.maxHealth = 25000000
monster.race = "blood"
monster.corpse = 33817
monster.speed = 380
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0,
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
	canPushCreatures = false,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,	
}

monster.events = {
	"arenatorTeleport",
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 7,
	summons = {
	--	{ name = "domestikion", chance = 20, interval = 2000, count = 2 },
	--	{ name = "hoodinion", chance = 20, interval = 2000, count = 2 },
	--	{ name = "mearidion", chance = 20, interval = 2000, count = 2 },
	--	{ name = "murmillion", chance = 20, interval = 2000, count = 2 },
	--	{ name = "scissorion", chance = 20, interval = 2000, count = 2 },		
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Feel the heat!", yell = false },
	{ text = "Hand over your life.", yell = false },
	{ text = "I can give you a hand... or two.", yell = false },
}

monster.loot = {
				}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -950 },
	{ name = "combat", interval = 2000, chance = 24, type = COMBAT_FIREDAMAGE, minDamage = -1100, maxDamage = -1550, radius = 4, effect = CONST_ME_EXPLOSIONAREA, target = false },
	{ name = "combat", interval = 2000, chance = 22, type = COMBAT_DEATHDAMAGE, minDamage = -900, maxDamage = -1280, radius = 4, effect = CONST_ME_EXPLOSIONHIT, target = false },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -1150, maxDamage = -1460, range = 7, effect = CONST_ANI_SUDDENDEATH, target = true },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_DEATHDAMAGE, minDamage = -950, maxDamage = -1100, range = 7, radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
--	{ name = "arenator storager", interval = 6000, chance = 100, target = false },	
}

monster.defenses = {
	defense = 100,
	armor = 100,
	mitigation = 2.75,
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
