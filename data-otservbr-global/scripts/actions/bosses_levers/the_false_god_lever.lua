local config = {
	boss = {
		name = "The False God",
		position = Position(33163, 31915, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33162, 31893, 15), teleport = Position(33157, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33162, 31894, 15), teleport = Position(33157, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33162, 31895, 15), teleport = Position(33157, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33162, 31896, 15), teleport = Position(33157, 31915, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33162, 31897, 15), teleport = Position(33157, 31915, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33154, 31909, 15),
		to = Position(33174, 31921, 15),
	},
	exit = Position(33174, 31915, 15),
}

local lever = BossLever(config)
lever:position({ x = 33162, y = 31892, z = 15 })--(33162, 31892, 15)
lever:register()
