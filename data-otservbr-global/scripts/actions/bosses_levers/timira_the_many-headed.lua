local config = {
	boss = {
		name = "Timira the Many-Headed",
		position = Position(33913, 32704, 9),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33907, 32702, 8), teleport = Position(33919, 32704, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33906, 32702, 8), teleport = Position(33919, 32704, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33905, 32702, 8), teleport = Position(33919, 32704, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33904, 32702, 8), teleport = Position(33919, 32704, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33805, 32702, 8), teleport = Position(33919, 32704, 9), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33903, 32695, 9),
		to = Position(33923, 32712, 9),
	},
	exit = Position(33908, 32702, 8),
}

local lever = BossLever(config)
lever:position({ x = 33908, y = 32702, z = 8 }) --(33908, 32702, 8)
lever:register()

