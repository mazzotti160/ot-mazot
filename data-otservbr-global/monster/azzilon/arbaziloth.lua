local mType = Game.createMonsterType("Arbaziloth")
local monster = {}

monster.description = "Arbaziloth"
monster.experience = 500000
monster.outfit = {
	lookType = 1798,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}

monster.health = 360000
monster.maxHealth = 360000
monster.race = "undead"
monster.corpse = 50029
monster.speed = 400
monster.manaCost = 0

monster.changeTarget = {
	interval = 10000,
	chance = 20,
}

monster.bosstiary = {
	bossRaceId = 2594,
	bossRace = RARITY_ARCHFOE,
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

monster.events = {
	--"GazHaragothHeal",
}

monster.light = {
	level = 0,
	color = 0,
}

monster.summon = {}

monster.voices = {
	interval = 5000,
	chance = 10,
{ text = "I am superior!", yell = true },  
{ text = "You are mad to challenge a demon prince!", yell = true },  
{ text = "You can't stop me or my plans!", yell = true },  
{ text = "Pesky humans!", yell = true },  
{ text = "This insolence!", yell = true },  
{ text = "Nobody can stop me!", yell = true },  
{ text = "All will have to bow to me!", yell = true },  
{ text = "With this power I can crush everyone!", yell = true },  
{ text = "All that energy is mine!", yell = true },  
{ text = "Face the power of hell!", yell = true },  
{ text = "AHHH! THE POWER!!", yell = true },  

}

monster.loot = {
	{ name = "crystal coin", chance = 13552, maxCount = 3 },
	{ name = "platinum coin", chance = 10779, maxCount = 98 },
	{ name = "strong mana potion", chance = 10660, maxCount = 19 },
	{ name = "blue gem", chance = 12149, maxCount = 2 },
	{ name = "great mana potion", chance = 11278, maxCount = 9 },
	{ name = "yellow gem", chance = 13501, maxCount = 2 },
	{ name = "ultimate spirit potion", chance = 8557, maxCount = 14 },
	{ name = "ultimate health potion", chance = 7179, maxCount = 19 },
	{ name = "stone skin amulet", chance = 14370, maxCount = 1 },
	{ name = "ultimate mana potion", chance = 5559, maxCount = 29 },
	{ name = "fire axe", chance = 7282, maxCount = 1 },
	{ name = "giant sword", chance = 9752, maxCount = 1 },
	{ name = "great spirit potion", chance = 5456, maxCount = 4 },
	{ name = "supreme health potion", chance = 14153, maxCount = 8 },
	--{ name = "death ring", chance = 13630, maxCount = 1 },
	{ name = "devil helmet", chance = 9028, maxCount = 1 },
	{ name = "ice rapier", chance = 14227, maxCount = 1 },
	--{ name = "life ring", chance = 6647, maxCount = 1 },
	{ name = "magma amulet", chance = 8342, maxCount = 1 },
	{ id = 3039, chance = 8535, maxCount = 1 }, -- red gem
		{ id = 6299, chance = 13630, maxCount = 1 }, -- death ring
		{ id = 3052, chance = 6647, maxCount = 1 }, -- life ring
		{ id = 50061, chance = 600, maxCount = 1 }, -- demon skull (addon)
	{ name = "strange helmet", chance = 8966, maxCount = 1 },
	{ name = "demon claws", chance = 600, maxCount = 1 },--Demon Claws
	--{ name = "demon skull", chance = 600, maxCount = 1 },--Demon Skull
	{ name = "demon in a green box", chance = 600, maxCount = 1 },--Demon In A Green Box
}

monster.attacks = {
{ name = "melee", interval = 2000, chance = 100, minDamage = -300, maxDamage = -700 }, 
{ name = "combat", interval = 2000, chance = 40, type = COMBAT_PHYSICALDAMAGE, minDamage = -300, maxDamage = -700, range = 6, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = false },
{ name = "combat", interval = 2000, chance = 35, type = COMBAT_ENERGYDAMAGE, minDamage = -300, maxDamage = -650, range = 6, radius = 6, effect = CONST_ME_PURPLESMOKE, target = false },
{ name = "combat", interval = 2000, chance = 45, type = COMBAT_ENERGYDAMAGE, minDamage = -500, maxDamage = -900, range = 8, radius = 1,shootEffect = CONST_ANI_ENERGY, target = true },
{ name = "combat", interval = 2000, chance = 30, type = COMBAT_DEATHDAMAGE, minDamage = -700, maxDamage = -1500, range = 7, radius = 8,  effect = CONST_ME_SMALLCLOUDS, target = false },
{ name = "combat", interval = 2000, chance = 100, type = COMBAT_LIFEDRAIN, minDamage = -300, maxDamage = -490, range = 8, radius = 3, effect = CONST_ME_MAGIC_RED, target = false },
}

monster.defenses = {
	defense = 0,
	armor = 0,
	{ name = "combat", interval = 3000, chance = 35, type = COMBAT_HEALING, minDamage = 2500, maxDamage = 3500, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 4000, chance = 80, speedChange = 700, effect = CONST_ME_MAGIC_RED, target = false, duration = 6000 },
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
