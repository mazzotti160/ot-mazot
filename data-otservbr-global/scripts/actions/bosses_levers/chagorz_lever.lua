local config = {
	boss = {
		name = "Chagorz",
		position = Position(33043, 32366, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33078, 32367, 15), teleport = Position(33037, 32366, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33077, 32367, 15), teleport = Position(33037, 32366, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33076, 32367, 15), teleport = Position(33037, 32366, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 32367, 15), teleport = Position(33037, 32366, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 32367, 15), teleport = Position(33037, 32366, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33035, 32358, 15),
		to = Position(33053, 32376, 15),
	},
	exit = Position(33044, 32375, 15),
}

local lever = BossLever(config)
lever:position({ x = 33079, y = 32367, z = 15 })--(33079, 32367, 15)
lever:register()