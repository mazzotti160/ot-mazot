local mType = Game.createMonsterType("Icecold Book")
local monster = {}

monster.description = "an icecold book"
monster.experience = 12750
monster.outfit = {
	lookType = 1061,
	lookHead = 87,
	lookBody = 85,
	lookLegs = 79,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 1664
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Secret Library (ice section).",
}

monster.health = 21000
monster.maxHealth = 21000
monster.race = "ink"
monster.corpse = 28774
monster.speed = 220
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
	level = 0,
	color = 0,
}

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
	{ name = "platinum coin", chance = 14567, maxCount = 5 },
	{ name = "book page", chance = 6442, maxCount = 1 },
	{ name = "small diamond", chance = 12833, maxCount = 1 },
	{ name = "small sapphire", chance = 14983, maxCount = 9 },
	{ name = "ice rapier", chance = 6823, maxCount = 1 },
	{ name = "ultimate mana potion", chance = 5292, maxCount = 1 },
	{ name = "ultimate health potion", chance = 13428, maxCount = 1 },
	{ name = "quill", chance = 6807, maxCount = 1 },
	{ name = "silken bookmark", chance = 9753, maxCount = 1 },
	{ name = "glacier mask", chance = 9622, maxCount = 1 },
	{ name = "frosty heart", chance = 14626, maxCount = 1 },
	{ name = "diamond sceptre", chance = 14622, maxCount = 1 },
--	{ name = "ice cube", chance = 6587, maxCount = 1 },
	{ id = 7441, chance = 6587 }, -- ice cube
	{ name = "glacier kilt", chance = 8918, maxCount = 1 },
	{ name = "glacier shoes", chance = 7557, maxCount = 1 },
	{ name = "crystal mace", chance = 8401, maxCount = 1 },
	{ name = "glacier robe", chance = 8700, maxCount = 1 },
	{ name = "sapphire hammer", chance = 6643, maxCount = 1 },
	{ name = "strange helmet", chance = 5772, maxCount = 1 },
	{ name = "crystalline armor", chance = 12822, maxCount = 1 },
	{ name = "glacial rod", chance = 7801, maxCount = 1 },
	{ name = "leviathan's amulet", chance = 7892, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -100, maxDamage = -200 },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -700, maxDamage = -850, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 1000, chance = 10, type = COMBAT_ICEDAMAGE, minDamage = -100, maxDamage = -380, range = 7, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ICEDAMAGE, minDamage = -350, maxDamage = -980, length = 5, spread = 0, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICEATTACK, target = false },
	{ name = "combat", interval = 1000, chance = 12, type = COMBAT_ICEDAMAGE, minDamage = -230, maxDamage = -880, range = 7, radius = 3, shootEffect = CONST_ANI_SMALLICE, effect = CONST_ME_ICETORNADO, target = false },
}

monster.defenses = {
	defense = 40,
	armor = 82,
	mitigation = 2.16,
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 0 },
	{ type = COMBAT_EARTHDAMAGE, percent = 0 },
	{ type = COMBAT_FIREDAMAGE, percent = -10 },
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
