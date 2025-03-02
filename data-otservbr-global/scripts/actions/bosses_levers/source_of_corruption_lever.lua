local config = {
	boss = {
		name = "The Source of Corruption",
		position = Position(33039, 31921, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33074, 31884, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33073, 31885, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 31885, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 31885, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33073, 31886, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 31886, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 31886, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33073, 31887, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 31887, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 31887, 15), teleport = Position(33039, 31915, 15), effect = CONST_ME_TELEPORT },		
	},
	specPos = {
		from = Position(33027, 31913, 15),
		to = Position(33052, 31930, 15),
	},
	exit = Position(33039, 31928, 15),
}

local lever = BossLever(config)
lever:position({ x = 33074, y = 31883, z = 15 }) --((33074, 31883, 15)
lever:register()