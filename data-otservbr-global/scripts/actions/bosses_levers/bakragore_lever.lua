local config = {
	boss = {
		name = "Bakragore",
		position = Position(33043, 32398, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33078, 32398, 15), teleport = Position(33037, 32398, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33077, 32398, 15), teleport = Position(33037, 32398, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33076, 32398, 15), teleport = Position(33037, 32398, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 32398, 15), teleport = Position(33037, 32398, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 32398, 15), teleport = Position(33037, 32398, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33033, 32389, 15),
		to = Position(33055, 32410, 15),
	},
	exit = Position(33044, 32409, 15),
}

local lever = BossLever(config)
lever:position({ x = 33079, y = 32398, z = 15 })--(33079, 32398, 15)
lever:register()
