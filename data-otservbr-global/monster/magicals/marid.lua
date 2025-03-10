local mType = Game.createMonsterType("Marid")
local monster = {}

monster.description = "a marid"
monster.experience = 410
monster.outfit = {
	lookType = 104,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.raceId = 104
monster.Bestiary = {
	class = "Magical",
	race = BESTY_RACE_MAGICAL,
	toKill = 1000,
	FirstUnlock = 50,
	SecondUnlock = 500,
	CharmsPoints = 25,
	Stars = 3,
	Occurrence = 0,
	Locations = "Kha'zeel, Magician Quarter, Djinn battle island through the Haunted Tomb.",
}

monster.health = 550
monster.maxHealth = 550
monster.race = "blood"
monster.corpse = 6033
monster.speed = 205
monster.manaCost = 0

monster.faction = FACTION_MARID
monster.enemyFactions = { FACTION_PLAYER, FACTION_EFREET }

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
	rewardBoss = false,
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
	canWalkOnPoison = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 2,
	summons = {
		{ name = "blue djinn", chance = 10, interval = 2000, count = 2 },
	},
}

monster.voices = {
	interval = 5000,
	chance = 10,
	{ text = "Wishes can come true.", yell = false },
	{ text = "Feel the power of my magic, tiny mortal!", yell = false },
	{ text = "Simsalabim", yell = false },
	{ text = "Be careful what you wish for.", yell = false },
}

monster.loot = {
	{ id = 2659, chance = 2560 }, -- blue tapestry
	{ name = "small oil lamp", chance = 110 },
	{ name = "small sapphire", chance = 6200 },
	{ name = "gold coin", chance = 60000, maxCount = 70 },
	{ name = "gold coin", chance = 60000, maxCount = 30 },
	{ name = "blue gem", chance = 110 },
	{ name = "hailstorm rod", chance = 770 },
	{ id = 2948, chance = 5000 }, -- wooden flute
	{ name = "heavy machete", chance = 4530 },
	{ name = "mystic turban", chance = 290 },
	{ name = "blueberry", chance = 65000, maxCount = 29 },
	{ name = "blue piece of cloth", chance = 3750 },
	{ name = "royal spear", chance = 15500, maxCount = 3 },
	{ name = "strong mana potion", chance = 9800 },
	{ name = "seeds", chance = 2400 },
	{ name = "magma monocle", chance = 320 },
	{ name = "jewelled belt", chance = 7880 },
	{ name = "noble turban", chance = 530 },
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -90 },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_ENERGYDAMAGE, minDamage = -100, maxDamage = -250, range = 7, shootEffect = CONST_ANI_ENERGYBALL, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_LIFEDRAIN, minDamage = -30, maxDamage = -90, range = 7, effect = CONST_ME_MAGIC_RED, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = -650, range = 7, effect = CONST_ME_MAGIC_RED, target = false, duration = 1500 },
	{ name = "drunk", interval = 2000, chance = 10, range = 7, shootEffect = CONST_ANI_ENERGY, target = false, duration = 6000 },
	{ name = "outfit", interval = 2000, chance = 1, range = 7, effect = CONST_ME_MAGIC_BLUE, target = false, duration = 4000, outfitMonster = "rabbit" },
	{ name = "djinn electrify", interval = 2000, chance = 15, range = 5, target = false },
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_ENERGYDAMAGE, minDamage = -30, maxDamage = -90, radius = 3, effect = CONST_ME_ENERGYHIT, target = false },
}

monster.defenses = {
	defense = 20,
	armor = 24,
	mitigation = 0.91,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 50, maxDamage = 80, effect = CONST_ME_MAGIC_BLUE, target = false },
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 0 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 60 },
	{ type = COMBAT_EARTHDAMAGE, percent = 10 },
	{ type = COMBAT_FIREDAMAGE, percent = 90 },
	{ type = COMBAT_LIFEDRAIN, percent = 0 },
	{ type = COMBAT_MANADRAIN, percent = 0 },
	{ type = COMBAT_DROWNDAMAGE, percent = 0 },
	{ type = COMBAT_ICEDAMAGE, percent = -5 },
	{ type = COMBAT_HOLYDAMAGE, percent = 20 },
	{ type = COMBAT_DEATHDAMAGE, percent = -8 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
