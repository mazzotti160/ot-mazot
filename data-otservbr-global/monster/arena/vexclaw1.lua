for i = 1, 100 do
    local monsterTypeName = "Vexclaw" .. i
    local mType = Game.createMonsterType(monsterTypeName)
    local monster = {}

    -- Propriedades base do monstro
    monster.name = "Vexclaw"
    monster.description = "a vexclaw"
    monster.experience = math.floor(6248 * (1.2 ^ (i - 1)))  -- Aumenta a experiência em 20% a cada nível
    monster.outfit = {
        lookType = 854,
        lookHead = 0,
        lookBody = 0,
        lookLegs = 0,
        lookFeet = 0,
        lookAddons = 0,
        lookMount = 0,
    }

    monster.raceId = 1197
    monster.Bestiary = {
        class = "Demon",
        race = BESTY_RACE_DEMON,
        toKill = 2500,
        FirstUnlock = 100,
        SecondUnlock = 1000,
        CharmsPoints = 50,
        Stars = 4,
        Occurrence = 0,
        Locations = "The Dungeons of The Ruthless Seven.",
    }

    -- Ajustes baseados no número do monstro
    monster.health = 50000 + (i - 1) * 5000
    monster.maxHealth = monster.health
    monster.race = "fire"
    monster.corpse = 22776
    monster.speed = 135
    monster.manaCost = 0

    monster.changeTarget = {
        interval = 4000,
        chance = 20,
    }

    monster.strategiesTarget = {
        nearest = 70,
        health = 10,
        damage = 10,
        random = 10,
    }

    monster.attacks = {
        { name = "melee", interval = 2000, chance = 100, minDamage = -140 * (1.1 ^ (i - 1)), maxDamage = -468 * (1.1 ^ (i - 1)) },
        { name = "combat", interval = 2000, chance = 10, type = COMBAT_MANADRAIN, minDamage = -43 * (1.1 ^ (i - 1)), maxDamage = -187 * (1.1 ^ (i - 1)), range = 7, target = false },
        { name = "combat", interval = 2000, chance = 20, type = COMBAT_FIREDAMAGE, minDamage = -234 * (1.1 ^ (i - 1)), maxDamage = -390 * (1.1 ^ (i - 1)), range = 7, radius = 7, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREAREA, target = true },
        { name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -234 * (1.1 ^ (i - 1)), maxDamage = -624 * (1.1 ^ (i - 1)), radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
        { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -78 * (1.1 ^ (i - 1)), maxDamage = -312 * (1.1 ^ (i - 1)), length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
        { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -468 * (1.1 ^ (i - 1)), maxDamage = -764 * (1.1 ^ (i - 1)), length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
        { name = "energy strike", interval = 2000, chance = 10, minDamage = -328 * (1.1 ^ (i - 1)), maxDamage = -468 * (1.1 ^ (i - 1)), range = 1, target = false },
    }


monster.defenses = {
	defense = 55,
	armor = 55,
	{ name = "combat", interval = 2000, chance = 15, type = COMBAT_HEALING, minDamage = 180, maxDamage = 250, effect = CONST_ME_MAGIC_BLUE, target = false },
	{ name = "speed", interval = 2000, chance = 15, speedChange = 320, effect = CONST_ME_MAGIC_RED, target = false, duration = 5000 },
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
	staticAttackChance = 70,
	targetDistance = 1,
	runHealth = 0,
	healthHidden = false,
	isBlockable = false,
	canWalkOnEnergy = false,
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
	{ text = "Weakness must be culled!", yell = false },
	{ text = "Power is miiiiine!", yell = false },
}

monster.loot = {
	{ name = "gold coin", chance = 100000, maxCount = 200 },
	{ name = "platinum coin", chance = 100000, maxCount = 6 },
	{ name = "great spirit potion", chance = 26010, maxCount = 5 },
	{ name = "great mana potion", chance = 25210, maxCount = 5 },
	{ name = "vexclaw talon", chance = 21500 },
	{ name = "demonic essence", chance = 20730 },
	{ name = "ultimate health potion", chance = 19960, maxCount = 5 },
	{ name = "fire mushroom", chance = 19940, maxCount = 6 },
	{ name = "golden sickle", chance = 18940 },
	{ name = "purple tome", chance = 18450 },
	{ name = "small amethyst", chance = 10090, maxCount = 5 },
	{ name = "small topaz", chance = 9790, maxCount = 5 },
	{ name = "small emerald", chance = 9770, maxCount = 5 },
	{ name = "small ruby", chance = 9590, maxCount = 5 },
	{ name = "talon", chance = 5400 },
	{ name = "yellow gem", chance = 5090 },
	{ name = "wand of voodoo", chance = 4940 },
	{ id = 3039, chance = 4730 }, -- red gem
	{ name = "ice rapier", chance = 4730 },
	{ name = "fire axe", chance = 3520 },
	{ name = "might ring", chance = 2250 },
	{ name = "giant sword", chance = 1880 },
	{ id = 3049, chance = 1790 }, -- stealth ring
	{ id = 3051, chance = 1790 }, -- energy ring
	{ name = "rift lance", chance = 1360 },
	{ id = 3098, chance = 1320 }, -- ring of healing
	{ name = "platinum amulet", chance = 940 },
	{ name = "devil helmet", chance = 520 },
	{ name = "rift crossbow", chance = 370 },
	{ name = "rift bow", chance = 370 },
	{ name = "rift shield", chance = 370 },
	{ name = "demon shield", chance = 370 },
	{ name = "magic plate armor", chance = 70 },
	{ name = "golden legs", chance = 50 },
	{ name = "demonrage sword", chance = 30 },
}

mType:register(monster)

end