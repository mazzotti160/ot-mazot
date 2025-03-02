local config = {
	boss = {
		name = "The Rootkraken",
		position = Position(33979, 32046, 8),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33967, 32121, 8), teleport = Position(33988, 32047, 8), effect = CONST_ME_TELEPORT },
		{ pos = Position(33967, 32122, 8), teleport = Position(33988, 32047, 8), effect = CONST_ME_TELEPORT },
		{ pos = Position(33967, 32123, 8), teleport = Position(33988, 32047, 8), effect = CONST_ME_TELEPORT },
		{ pos = Position(33967, 32124, 8), teleport = Position(33988, 32047, 8), effect = CONST_ME_TELEPORT },
		{ pos = Position(33967, 32125, 8), teleport = Position(33988, 32047, 8), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33964, 32034, 8),
		to = Position(33995, 32059, 8),
	},
	exit = Position(33979, 32055, 8),
}

local lever = BossLever(config)
lever:position({ x = 33967, y = 32120, z = 8 })--(33967, 32120, 8)
lever:register()