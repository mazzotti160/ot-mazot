local config = {
	boss = {
		name = "The Count Of The Core",
		position = Position(33682, 32335, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33682, 32314, 15), teleport = Position(33688, 32334, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33681, 32314, 15), teleport = Position(33688, 32334, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33680, 32314, 15), teleport = Position(33688, 32334, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33680, 32314, 15), teleport = Position(33688, 32334, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33678, 32314, 15), teleport = Position(33688, 32334, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33669, 32327, 15),
		to = Position(33693, 32341, 15),
	},
	exit = Position(33681, 32340, 15),
}

local lever = BossLever(config)
lever:aid(24307)
lever:register()
