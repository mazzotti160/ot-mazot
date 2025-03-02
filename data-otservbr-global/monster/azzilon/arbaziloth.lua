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
	{ id = 3043, chance = 10000, maxCount = 6 }, -- crystal coin
	{ id = 16124, chance = 10000, maxCount = 15 }, -- blue crystal splinter
	{ id = 7368, chance = 10000, maxCount = 100 }, -- assassin star
	{ id = 20264, chance = 7000, maxCount = 3 }, -- unrealized dream
	{ id = 6499, chance = 1000, maxCount = 2 }, -- demonic essence
	{ id = 7643, chance = 10000, maxCount = 100 }, -- ultimate health potion
	{ id = 238, chance = 10000, maxCount = 100 }, -- great mana potion
	{ id = 7642, chance = 10000, maxCount = 100 }, -- great spirit potion
	{ id = 20063, chance = 2000, maxCount = 3 }, -- dream matter
	{ id = 20062, chance = 12000, maxCount = 14 }, -- cluster of solace
	{ id = 3041, chance = 10000, maxCount = 2 }, -- blue gem
	{ id = 16122, chance = 10000, maxCount = 10 }, -- green crystal splinter
	{ id = 16120, chance = 10000, maxCount = 15 }, -- violet crystal shard
	{ id = 6528, chance = 6000 }, -- infernal bolt
	{ id = 20278, chance = 6000 }, -- demonic tapestry
	{ id = 5914, chance = 6000 }, -- yellow piece of cloth
	{ id = 5911, chance = 6000 }, -- red piece of cloth
	{ id = 20276, chance = 1100 }, -- dream warden mask
	{ id = 281, chance = 6000 }, -- giant shimmering pearl (green)
	{ id = 5954, chance = 6000 }, -- demon horn
	{ id = 20274, chance = 6000, unique = true }, -- nightmare horn
	{ id = 3052, chance = 6000 }, -- life ring
	{ id = 20280, chance = 6000 }, -- nightmare beacon
	{ id = 20279, chance = 6000 }, -- eye pod
	{ id = 20277, chance = 6000 }, -- psychedelic tapestry
	{ id = 20064, chance = 800 }, -- crude umbral blade
	{ id = 20067, chance = 1000 }, -- crude umbral slayer
	{ id = 20070, chance = 1000 }, -- crude umbral axe
	{ id = 20073, chance = 1000 }, -- crude umbral chopper
	{ id = 20079, chance = 1000 }, -- crude umbral hammer
	{ id = 20076, chance = 500 }, -- crude umbral mace
	{ id = 20082, chance = 1000 }, -- crude umbral bow
	{ id = 20085, chance = 400 }, -- crude umbral crossbow
	{ id = 20088, chance = 700 }, -- crude umbral spellbook
	{ id = 20065, chance = 100 }, -- umbral blade
	{ id = 20068, chance = 200 }, -- umbral slayer
	{ id = 20071, chance = 1000 }, -- umbral axe
	{ id = 20074, chance = 500 }, -- umbral chopper
	{ id = 20080, chance = 1000 }, -- umbral hammer
	{ id = 20077, chance = 500 }, -- umbral mace
	{ id = 20083, chance = 250 }, -- umbral bow
	{ id = 20086, chance = 400 }, -- umbral crossbow
	{ id = 20089, chance = 200 }, -- umbral spellbook
	{ id = 20066, chance = 300 }, -- umbral masterblade
	{ id = 20069, chance = 700 }, -- umbral master slayer
	{ id = 20072, chance = 500 }, -- umbral master axe
	{ id = 20075, chance = 300 }, -- umbral master chopper
	{ id = 20081, chance = 250 }, -- umbral master hammer
	{ id = 20078, chance = 300 }, -- umbral master mace
	{ id = 20084, chance = 1300 }, -- umbral master bow
	{ id = 20087, chance = 1000 }, -- umbral master crossbow
	{ id = 20090, chance = 140 }, -- umbral master spellbook
	{ id = 10345, chance = 6000 }, -- solitude charm
	{ id = 10344, chance = 6000 }, -- twin sun charm
	{ id = 10343, chance = 6000 }, -- spiritual charm
	{ id = 10342, chance = 6000 }, -- unity charm
	{ id = 10341, chance = 6000 }, -- phoenix charm
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
