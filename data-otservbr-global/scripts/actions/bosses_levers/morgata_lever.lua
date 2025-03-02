local config = {
	boss = {
		name = "Ancient Spawn Of Morgathla",
		position = Position(33678, 32278, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33679, 32292, 15), teleport = Position(33678, 32282, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33679, 32293, 15), teleport = Position(33678, 32282, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33679, 32294, 15), teleport = Position(33678, 32282, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33679, 32295, 15), teleport = Position(33678, 32282, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33679, 32296, 15), teleport = Position(33678, 32282, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33668, 32269, 15),
		to = Position(33689, 32283, 15),
	},
	exit = Position(33678, 32272, 15),
}

local lever = BossLever(config)
lever:aid(24304)
lever:register()
