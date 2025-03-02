for i = 1, 100 do
    local monsterTypeName = "Hellflayer" .. i
    local mType = Game.createMonsterType(monsterTypeName)
    local monster = {}

    -- Propriedades base do monstro
    monster.name = "Hellflayer"
    monster.description = "a Hellflayer"
    monster.experience = math.floor(11720 * (1.2 ^ (i - 1)))  -- Aumenta a experiência em 20% a cada nível
    monster.outfit = {
	lookType = 856,
        lookHead = 0,
        lookBody = 0,
        lookLegs = 0,
        lookFeet = 0,
        lookAddons = 0,
        lookMount = 0,
    }

monster.raceId = 1198
monster.Bestiary = {
	class = "Demon",
	race = BESTY_RACE_DEMON,
	toKill = 2500,
	FirstUnlock = 100,
	SecondUnlock = 1000,
	CharmsPoints = 50,
	Stars = 4,
	Occurrence = 0,
	Locations = "Grounds of Damnation, Grounds of Despair, Grounds of Destruction, Grounds of Fire, Grounds of Plague, Grounds of Undeath, Halls of Ascension and Hell Hub",
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
    { name = "melee", interval = 2000, chance = 100, minDamage = 200 * (1.1 ^ (i - 1)), maxDamage = -869 * (1.1 ^ (i - 1)), condition = { type = CONDITION_FIRE, totalDamage = 6, interval = 9000 } },
    { name = "combat", interval = 2000, chance = 15, type = COMBAT_FIREDAMAGE, minDamage = -170 * (1.1 ^ (i - 1)), maxDamage = -300 * (1.1 ^ (i - 1)), range = 7, shootEffect = CONST_ANI_POISON, target = false },
    { name = "choking fear drown", interval = 2000, chance = 20, target = false },
    { name = "combat", interval = 2000, chance = 20, type = COMBAT_DEATHDAMAGE, minDamage = -250 * (1.1 ^ (i - 1)), maxDamage = -500 * (1.1 ^ (i - 1)), radius = 4, shootEffect = CONST_ANI_SUDDENDEATH, effect = CONST_ME_MORTAREA, target = true },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_LIFEDRAIN, minDamage = -50 * (1.1 ^ (i - 1)), maxDamage = -200 * (1.1 ^ (i - 1)), length = 8, spread = 0, effect = CONST_ME_PURPLEENERGY, target = false },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_FIREDAMAGE, minDamage = -300 * (1.1 ^ (i - 1)), maxDamage = -550 * (1.1 ^ (i - 1)), radius = 1, shootEffect = CONST_ANI_FIRE, effect = CONST_ME_FIREATTACK, target = true },
    { name = "combat", interval = 2000, chance = 10, type = COMBAT_PHYSICALDAMAGE, minDamage = 300 * (1.1 ^ (i - 1)), maxDamage = -500 * (1.1 ^ (i - 1)), radius = 1, shootEffect = CONST_ANI_EXPLOSION, effect = CONST_ME_SLEEP, target = true },
}

monster.defenses = {
	defense = 20,
	armor = 55,
	mitigation = 1.60,
	{ name = "combat", interval = 2000, chance = 10, type = COMBAT_HEALING, minDamage = 80, maxDamage = 95, effect = CONST_ME_MAGIC_BLUE, target = false },
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

monster.changeTarget = {
	interval = 4000,
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
	rewardBoss = false,
	illusionable = false,
	canPushItems = true,
	canPushCreatures = true,
	staticAttackChance = 90,
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
	{ text = "Your tainted soul belongs to us anyway!", yell = false },
	{ text = "You should consider bargaining for your life!", yell = false },
}

monster.loot = {
	{ id = 3031, chance = 90000, maxCount = 130 }, -- gold coin
	{ id = 3035, chance = 20000, maxCount = 9 }, -- platinum coin
	{ id = 6558, chance = 4000, maxCount = 3 }, -- flask of demonic blood
	{ id = 9058, chance = 1300, maxCount = 2 }, -- gold ingot
	{ id = 238, chance = 9600, maxCount = 2 }, -- great mana potion
	{ id = 7642, chance = 2300, maxCount = 2 }, -- great spirit potion
	{ id = 3033, chance = 2000, maxCount = 5 }, -- small amethyst
	{ id = 3028, chance = 900, maxCount = 5 }, -- small diamond
	{ id = 3032, chance = 900, maxCount = 5 }, -- small emerald
	{ id = 3030, chance = 2000, maxCount = 5 }, -- small ruby
	{ id = 9057, chance = 900, maxCount = 5 }, -- small topaz
	{ id = 7643, chance = 5300, maxCount = 2 }, -- ultimate health potion
	{ id = 3019, chance = 1000 }, -- demonbone amulet
	{ id = 6499, chance = 1600 }, -- demonic essence
	{ id = 281, chance = 800 }, -- giant shimmering pearl (green)
	{ id = 3038, chance = 800 }, -- green gem
	{ id = 818, chance = 500 }, -- magma boots
	{ id = 821, chance = 1200 }, -- magma legs
	{ id = 3414, chance = 350 }, -- mastermind shield
	{ id = 22729, chance = 800 }, -- pair of hellflayer horns
	{ id = 3039, chance = 500 }, -- red gem
	{ id = 22866, chance = 280 }, -- rift bow
	{ id = 22867, chance = 180 }, -- rift crossbow
	{ id = 5741, chance = 450 }, -- skull helmet
	{ id = 22727, chance = 200 }, -- rift lance
	{ id = 7413, chance = 900 }, -- titan axe
	{ id = 3360, chance = 750 }, -- golden armor
	{ id = 8074, chance = 900 }, -- spellbook of mind control
	{ id = 3340, chance = 400 }, -- heavy mace
}

mType:register(monster)
end