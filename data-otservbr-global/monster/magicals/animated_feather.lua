local mType = Game.createMonsterType("Animated Feather")
local monster = {}

monster.description = "an animated feather"
monster.experience = 9860
monster.outfit = {
	lookType = 1058,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1671
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "The Secret Library (ice section).",
}

monster.health = 13000
monster.maxHealth = 13000
monster.race = "ink"
monster.corpse = 28578
monster.speed = 210
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 8,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = false,
	canWalkOnPoison = true,
}

monster.light = {
	level = 4,
	color = 179,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "glowing rune", chance = 11480, maxCount = 5 },
	{ name = "platinum coin", chance = 11839, maxCount = 21 },
	{ name = "small sapphire", chance = 13550, maxCount = 12 },
	{ name = "ultimate mana potion", chance = 7537, maxCount = 2 },
	--{ name = "ice cube", chance = 8751, maxCount = 1 },
	{ id = 7441, chance = 8751 }, -- ice cube	
	{ id = 3051, chance = 7780 }, -- energy ring	
	--{ name = "energy ring", chance = 7780, maxCount = 1 },
	{ name = "quill", chance = 5623, maxCount = 1 },
	{ name = "glacier mask", chance = 6698, maxCount = 1 },
	{ name = "small diamond", chance = 13075, maxCount = 12 },
	{ name = "diamond sceptre", chance = 6430, maxCount = 1 },
	{ name = "life crystal", chance = 6890, maxCount = 1 },
	{ name = "glacier amulet", chance = 8705, maxCount = 1 },
	{ name = "crystal mace", chance = 6667, maxCount = 1 },
	{ name = "golden mug", chance = 8809, maxCount = 1 },
	{ name = "hailstorm rod", chance = 9595, maxCount = 1 },
	{ name = "glacial rod", chance = 12602, maxCount = 1 },
	{ name = "sapphire hammer", chance = 7377, maxCount = 1 },
	{ name = "leviathan's amulet", chance = 11821, maxCount = 1 },
	{ name = "crystalline armor", chance = 10092, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200 },
	{ name = "combat", interval = 1000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -200, range = 7, shootEffect = CONST_ANI_ICE, target = false },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -780, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -200, maxDamage = -275, length = 3, spread = 2, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 1000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -230, maxDamage = -680, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false },
}

monster.defenses = {
	defense = 40,
	armor = 79,
	mitigation = 2.02,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -18 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 0 },
	{ type = COMBAT_DEATHDAMAGE, percent = 0 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
