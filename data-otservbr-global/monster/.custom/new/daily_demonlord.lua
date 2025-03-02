local mType = Game.createMonsterType("Daily Demonlord")
local monster = {}

monster.description = "Daily Demonlord"
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

monster.health = 3600000
monster.maxHealth = 3600000
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
	{ id = 3043, chance = 10000, maxCount = 100 }, -- crystal coin
	{ id = 20264, chance = 25000, maxCount = 3 }, -- unrealized dream
	{ id = 20063, chance = 25000, maxCount = 3 }, -- dream matter
	{ id = 22721, chance = 100000, maxCount = 5 }, --gold token
	{ id = 22722, chance = 100000, maxCount = 5 }, --copper token	
	{ id = 22516, chance = 100000, maxCount = 5 }, --silver token
	{ id = 30059, chance = 100000, maxCount = 5 }, --giant gem	
	{ id = 30060, chance = 100000, maxCount = 5 }, --giant gem	
	{ id = 30061, chance = 100000, maxCount = 5 }, --giant gem	
	{ id = 16828, chance = 100000, maxCount = 2 }, --minor token
	{ id = 16829, chance = 100000, maxCount = 2 }, --major
	{ id = 16242, chance = 100000, maxCount = 5 }, --red teleport crystal
	{ id = 36827, chance = 5000 }, -- drome cube
	{ id = 19082, chance = 300 }, -- roletinha
	
	--craft abaixo chance minima
	--skulls
	{id = 37341, chance = 1, count = 1},
	{id = 37340, chance = 1, count = 1},
	{id = 37339, chance = 1, count = 1},
	{id = 37338, chance = 1, count = 1},
	{id = 37337, chance = 1, count = 1},
	{id = 37335, chance = 1, count = 1},
	--druid
	    {id = 44759, chance = 1, count = 1},  -- giant beaver
        {id = 12809, chance = 1, count = 1},  -- epic wisdom
        {id = 34266, chance = 1, count = 1},  -- tibiapedia
	--sorc
        {id = 22153, chance = 1, count = 1},  -- dark wizard crown
        {id = 44055, chance = 1, count = 1},  -- dragon shield verde
        {id = 44056, chance = 1, count = 1},  -- dragon verde doll
			-- pala
        {id = 16262, chance = 1, count = 1},  -- dragon eye
        {id = 39761, chance = 1, count = 1},  -- gods rp twilight doll
        {id = 35909, chance = 1, count = 1},  -- chaos critical dice
			--ek
        {id = 39759, chance = 1, count = 1},  -- golden gods twilight doll
        {id = 22889, chance = 1, count = 1},  -- shield of destiny
        {id = 25982, chance = 1, count = 1},  -- mathmaster shield	
-- set
        {id = 3423, chance = 1, count = 1}, -- blessed shield
		{id = 3246, chance = 1, count = 1}, -- boots of waterwalking
		{id = 3363, chance = 1, count = 1}, -- dragon scale legs
		{id = 3402, chance = 1, count = 1}, -- native armor
		{id = 3365, chance = 1, count = 1}, -- golden helmet		
	
}

monster.attacks = {
  { name = "melee", interval = 2000, chance = 100, minDamage = -550, maxDamage = -1350 },
  { name = "combat", interval = 2000, chance = 58, type = COMBAT_PHYSICALDAMAGE, minDamage = -550, maxDamage = -1350, range = 6, radius = 5, effect = CONST_ME_GROUNDSHAKER, target = false },
  { name = "combat", interval = 2000, chance = 48, type = COMBAT_ENERGYDAMAGE, minDamage = -550, maxDamage = -1250, range = 6, radius = 6, effect = CONST_ME_PURPLESMOKE, target = false },
  { name = "combat", interval = 2000, chance = 58, type = COMBAT_ENERGYDAMAGE, minDamage = -950, maxDamage = -1750, range = 8, radius = 1, shootEffect = CONST_ANI_ENERGY, target = true },
  { name = "combat", interval = 2000, chance = 48, type = COMBAT_DEATHDAMAGE, minDamage = -1350, maxDamage = -2950, range = 7, radius = 8, effect = CONST_ME_SMALLCLOUDS, target = false },
  { name = "combat", interval = 2000, chance = 100, type = COMBAT_LIFEDRAIN, minDamage = -580, maxDamage = -950, range = 8, radius = 3, effect = CONST_ME_MAGIC_RED, target = false },
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
