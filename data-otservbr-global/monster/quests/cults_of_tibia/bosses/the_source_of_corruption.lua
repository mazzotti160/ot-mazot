local mType = Game.createMonsterType("The Source of Corruption")
local monster = {}

monster.description = "The Source Of Corruption"
monster.experience = 0
monster.outfit = {
	lookType = 979,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
	--"CultsOfTibiaBossDeath",
}

monster.bosstiary = {
	bossRaceId = 1500,
	bossRace = RARITY_ARCHFOE,
}

monster.health = 500000
monster.maxHealth = 500000
monster.race = "undead"
monster.corpse = 23567
monster.speed = 60
monster.manaCost = 0

monster.changeTarget = {
	interval = 5000,
	chance = 20,
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
	staticAttackChance = 95,
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
	{ name = "ancient stone", chance = 5697, maxCount = 1 },
	{ name = "gold coin", chance = 9994, maxCount = 343 },
	{ name = "gold token", chance = 13456, maxCount = 4 },
	{ name = "magic sulphur", chance = 8655, maxCount = 5 },
	{ name = "onyx chip", chance = 11177, maxCount = 1 },
	{ name = "piece of hell steel", chance = 14335, maxCount = 9 },
	{ name = "platinum coin", chance = 12608, maxCount = 42 },
	{ name = "silver token", chance = 11436, maxCount = 3 },
	{ name = "solid rage", chance = 5822, maxCount = 20 },
	{ name = "ultimate health potion", chance = 6384, maxCount = 13 },
	{ name = "crystallized anger", chance = 14157, maxCount = 19 },
	{ name = "great spirit potion", chance = 14906, maxCount = 9 },
	{ name = "great mana potion", chance = 10334, maxCount = 16 },
	{ name = "gold ingot", chance = 14363, maxCount = 1 },
	{ name = "green gem", chance = 5143, maxCount = 1 },
	{ name = "small topaz", chance = 13680, maxCount = 35 },
	{ name = "yellow gem", chance = 12981, maxCount = 1 },
	{ name = "small amethyst", chance = 10337, maxCount = 39 },
	{ id = 3039, chance = 9823, maxCount = 1 }, -- red gem
	{ name = "small ruby", chance = 13868, maxCount = 37 },
	{ name = "small sapphire", chance = 7130, maxCount = 35 },
	{ id = 282, chance = 5445, maxCount = 1 }, -- giant shimmering pearl
	{ name = "white piece of cloth", chance = 6437, maxCount = 7 },
	{ name = "gemmed figurine", chance = 13291, maxCount = 5 },
	{ name = "opal", chance = 7030, maxCount = 3 },
	{ id = 23533, chance = 9404, maxCount = 1 }, -- ring of red plasma
	{ id = 6068, chance = 7915, maxCount = 1 }, -- red gem
	{ name = "blue gem", chance = 10036, maxCount = 1 },
	{ name = "sapphire hammer", chance = 10408, maxCount = 1 },
	{ name = "enchanted chicken wing", chance = 11844, maxCount = 1 },
	{ name = "skull staff", chance = 6468, maxCount = 1 },
	{ name = "violet gem", chance = 13468, maxCount = 1 },
	{ name = "devil helmet", chance = 8064, maxCount = 1 },
	{ name = "silkweaver bow", chance = 9616, maxCount = 1 },
	{ name = "small emerald", chance = 14679, maxCount = 27 },
	{ name = "violet crystal shard", chance = 5802, maxCount = 13 },
	{ name = "demonwing axe", chance = 6692, maxCount = 1 },
	{ name = "heavy mace", chance = 7730, maxCount = 1 },
	{ name = "umbral slayer", chance = 12122, maxCount = 1 },
	{ name = "wand of everblazing", chance = 13723, maxCount = 1 },
	{ name = "yalahari figurine", chance = 5463, maxCount = 1 },
	{ name = "crude umbral slayer", chance = 8355, maxCount = 1 },
	{ name = "nightmare blade", chance = 13696, maxCount = 1 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -1500 },
	{ name = "source of corruption wave", interval = 2000, chance = 15, target = false },
}

monster.defenses = {
	defense = 30,
	armor = 30,
	--	mitigation = ???,
}

monster.reflects = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 15 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 15 },
	{ type = COMBAT_EARTHDAMAGE, percent = 15 },
	{ type = COMBAT_FIREDAMAGE, percent = 15 },
	{ type = COMBAT_LIFEDRAIN, percent = 15 },
	{ type = COMBAT_MANADRAIN, percent = 15 },
	{ type = COMBAT_DROWNDAMAGE, percent = 15 },
	{ type = COMBAT_ICEDAMAGE, percent = 15 },
	{ type = COMBAT_HOLYDAMAGE, percent = 15 },
	{ type = COMBAT_DEATHDAMAGE, percent = 15 },
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
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
