local mType = Game.createMonsterType("Murcion")
local monster = {}

monster.description = "Murcion"
monster.experience = 3250000
monster.outfit = {
	lookType = 1664,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
	--"RottenBloodBossDeath",
}

monster.bosstiary = {
	bossRaceId = 2362,
	bossRace = RARITY_NEMESIS,
}

monster.health = 350000
monster.maxHealth = 350000
monster.race = "undead"
monster.corpse = 44015
monster.speed = 2050
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
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
	canPushCreatures = true,
	staticAttackChance = 98,
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

monster.summon = {
	maxSummons = 8,
	summons = {
		{ name = "Mushroom", chance = 30, interval = 5000, count = 8 },
	},
}

monster.voices = {}

monster.loot = {
	{ name = "crystal coin", chance = 12317, maxCount = 91 },
	{ id = 3039, chance = 10896, maxCount = 2 }, -- red gem
	{ name = "amber with a bug", chance = 14590, maxCount = 1 },
	{ name = "amber with a dragonfly", chance = 5405, maxCount = 1 },
	{ name = "bullseye potion", chance = 10821, maxCount = 44 },
	{ name = "green gem", chance = 7763, maxCount = 4 },
	{ name = "mastermind potion", chance = 9534, maxCount = 15 },
	{ name = "supreme health potion", chance = 6212, maxCount = 102 },
	{ name = "ultimate mana potion", chance = 8785, maxCount = 29 },
	{ name = "ultimate spirit potion", chance = 8783, maxCount = 161 },
		{ id = 43895, chance = 100 }, -- Bag you covet
			{ id = 43899, chance = 500 }, --cursed wood
	--{ id = 43900, chance = 500 },--darklight geode
		{ id = 43855, chance = 250 }, -- darklight heart
	{ id = 43854, chance = 250 }, -- tainted heart
}

monster.attacks = {
	{ name = "melee", interval = 2000, chance = 100, minDamage = -2800, maxDamage = -4600 },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -1000, maxDamage = -1800, radius = 4, effect = CONST_ME_SMALLCLOUDS, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_HOLYDAMAGE, minDamage = -1000, maxDamage = -1800, range = 4, radius = 4, shootEffect = 31, effect = 248, target = true },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_ICEDAMAGE, minDamage = -2000, maxDamage = -2400, length = 10, spread = 0, effect = 53, target = false },
	{ name = "combat", interval = 2000, chance = 20, type = COMBAT_PHYSICALDAMAGE, minDamage = -3000, maxDamage = -3800, length = 10, spread = 0, effect = 158, target = false },
	{ name = "speed", interval = 2000, chance = 20, speedChange = -600, radius = 7, effect = CONST_ME_POFF, target = false, duration = 20000 },
}

monster.defenses = {
	defense = 105,
	armor = 105,
	{ name = "combat", interval = 3000, chance = 10, type = COMBAT_HEALING, minDamage = 800, maxDamage = 1500, effect = 236, target = false },
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

mType.onThink = function(monster, interval) end

mType.onAppear = function(monster, creature)
	if monster:getType():isRewardBoss() then
		monster:setReward(true)
	end
end

mType.onDisappear = function(monster, creature) end

mType.onMove = function(monster, creature, fromPosition, toPosition) end

mType.onSay = function(monster, creature, type, message) end

mType:register(monster)
