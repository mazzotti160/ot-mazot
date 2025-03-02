local config = {
	boss = {
		name = "Grand Master Oberon",
		position = Position(33364, 31318, 9),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33362, 31344, 9), teleport = Position(33364, 31322, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33363, 31344, 9), teleport = Position(33364, 31322, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33364, 31344, 9), teleport = Position(33364, 31322, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33365, 31344, 9), teleport = Position(33364, 31322, 9), effect = CONST_ME_TELEPORT },
		{ pos = Position(33366, 31344, 9), teleport = Position(33364, 31322, 9), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33352, 31307, 9),
		to = Position(33376, 31327, 9),
	},
	exit = Position(33364, 31324, 9),
}

local lever = BossLever(config)
lever:position({ x = 33364, y = 31343, z = 9 }) --(33364, 31343, 9)
lever:register()