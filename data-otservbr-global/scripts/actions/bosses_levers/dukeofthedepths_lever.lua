local config = {
	boss = {
		name = "The Duke of The Depths",
		position = Position(33712, 32302, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33688, 32301, 15), teleport = Position(33712, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33688, 32302, 15), teleport = Position(33712, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33688, 32303, 15), teleport = Position(33712, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33688, 32304, 15), teleport = Position(33712, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33688, 32305, 15), teleport = Position(33712, 32297, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33699, 32293, 15),
		to = Position(33722, 32311, 15),
	},
	exit = Position(33719, 32302, 15),
}

local lever = BossLever(config)
lever:aid(24306)
lever:register()
