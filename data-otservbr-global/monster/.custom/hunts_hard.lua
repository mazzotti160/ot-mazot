local mType = Game.createMonsterType("Hunts Hard")
local monster = {}

monster.name = "Hunts Hard"
monster.description = "hunts hard"
monster.experience = 20
monster.outfit = {
	lookType = 1718,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 0,
	lookFeet = 0,
	lookAddons = 0,
	lookMount = 0,
}


monster.health = 150000
monster.maxHealth = 150000
monster.race = "blood"
monster.corpse = 0
monster.speed = 0
monster.manaCost = 0

monster.changeTarget = {
	interval = 4000,
	chance = 0,
}

monster.strategiesTarget = {
	nearest = 100,
}

monster.flags = {
	summonable = false,
	attackable = false,
	hostile = false,
	convinceable = false,
	pushable = false,
	rewardBoss = false,
	illusionable = false,
	canPushItems = false,
	canPushCreatures = false,
	staticAttackChance = 0,
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

monster.voices = {
	interval = 5000,
	chance = 10,
}

monster.loot = {
}

monster.attacks = {
	-- poison

}

monster.defenses = {
	defense = 0,
	armor = 12,
	mitigation = 0.86,
	--{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 8, maxDamage = 16, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "true dawnfire asura" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "liodile" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "energetic book" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "Vexclaw" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "grimeleech" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "naga warrior" },	
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "Freakish Lost Soul" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "dawnfire asura" },	
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "undertaker" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "brachiodemon" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "mercurial menace" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "Hulking Prehemoth" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "cloak of terror" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "Bony Sea Devil" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "rotten golem" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "many faces" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "Darklight Matter" },
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "converter" },	
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "sopping corpus" },	
	{ name = "outfit", interval = 2000, chance = 10, target = false, duration = 4000, outfitMonster = "rotten man-maggot" },	
}

monster.elements = {
	{ type = COMBAT_PHYSICALDAMAGE, percent = 100 },
	{ type = COMBAT_ENERGYDAMAGE, percent = 100 },
	{ type = COMBAT_EARTHDAMAGE, percent = 100 },
	{ type = COMBAT_FIREDAMAGE, percent = 100 },
	{ type = COMBAT_LIFEDRAIN, percent = 100 },
	{ type = COMBAT_MANADRAIN, percent = 100 },
	{ type = COMBAT_DROWNDAMAGE, percent = 100 },
	{ type = COMBAT_ICEDAMAGE, percent = 100 },
	{ type = COMBAT_HOLYDAMAGE, percent = 100 },
	{ type = COMBAT_DEATHDAMAGE, percent = 100 },
}

monster.immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = false },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = false },
}

mType:register(monster)
