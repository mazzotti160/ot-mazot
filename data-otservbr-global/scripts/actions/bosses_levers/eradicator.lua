local config = {
	boss = {
		name = "Eradicator",
		position = Position(32309, 31283, 14),
	},
	playerPositions = {
		{ pos = Position(32334, 31284, 14), teleport = Position(32309, 31290, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32334, 31285, 14), teleport = Position(32309, 31290, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32334, 31286, 14), teleport = Position(32309, 31290, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32334, 31287, 14), teleport = Position(32309, 31290, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32334, 31288, 14), teleport = Position(32309, 31290, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32297, 31272, 14),
		to = Position(32321, 31296, 14),
	},
	monsters = {
		{ name = "Spark of Destruction", pos = Position(32304, 31282, 14) },
		{ name = "Spark of Destruction", pos = Position(32305, 31287, 14) },
		{ name = "Spark of Destruction", pos = Position(32312, 31287, 14) },
		{ name = "Spark of Destruction", pos = Position(32314, 31282, 14) },
	},
	exit = Position(32218, 31375, 11),
}

local lever = BossLever(config)
lever:aid(14330)
lever:register()
