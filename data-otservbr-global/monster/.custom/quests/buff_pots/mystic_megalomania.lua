local mType = Game.createMonsterType("Mystic Megalomania")
local monster = {}

monster.description = "Mystic Megalomania"
monster.experience = 2000000
monster.outfit = {
	lookType = 1308,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.events = {
	"3BuffHeal",
}

monster.health = 5000000
monster.maxHealth = 5000000
monster.race = "undead"
monster.corpse = 33889
monster.speed = 165
monster.manaCost = 0

monster.changeTarget = {
	interval = 2000,
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
	canPushCreatures = true,
	staticAttackChance = 95,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = true,
	canWalkOnFire = true,
	canWalkOnPoison = true,
	pet = false,
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {
	maxSummons = 4,
	summons = {
		{ name = "dreadful harvester", chance = 40, interval = 1000, count = 2 },
		{ name = "aspect of power", chance = 50, interval = 1000, count = 2 },
	},
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
	{ name = "melee", interval = 2000, chance = 100, minDamage = 0, maxDamage = -8000 },
	{ name = "combat", interval = 2000, chance = 30, type = COMBAT_PHYSICALDAMAGE, minDamage = -2950, maxDamage = -4400, range = 7, radius = 3, shootEffect = CONST_ANI_DEATH, effect = CONST_ME_MORTAREA, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -3000, maxDamage = -5500, length = 8, spread = 3, effect = CONST_ME_INSECTS, target = false },
	{ name = "singlecloudchain", interval = 6000, chance = 40, minDamage = -3300, maxDamage = -5500, range = 6, effect = CONST_ME_ENERGYHIT, target = true },
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_DEATHDAMAGE, minDamage = -3300, maxDamage = -5200, length = 10, spread = 0, effect = CONST_ME_BLUE_GHOST, target = false },
}

monster.defenses = {
	defense = 160,
	armor = 160,
	mitigation = 8.40,
	{ name = "speed", interval = 1000, chance = 20, speedChange = 500, effect = CONST_ME_MAGIC_RED, target = false, duration = 10000 },
	{ name = "combat", interval = 2000, chance = 25, type = COMBAT_HEALING, minDamage = 2250, maxDamage = 4250, effect = CONST_ME_MAGIC_BLUE, target = false },
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
