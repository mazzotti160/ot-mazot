local config = {
	boss = {
		name = "Lady Tenebris",
		position = Position(32912, 31599, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32902, 31623, 14), teleport = Position(32912, 31603, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32902, 31624, 14), teleport = Position(32912, 31603, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32902, 31625, 14), teleport = Position(32912, 31603, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32902, 31626, 14), teleport = Position(32912, 31603, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32902, 31627, 14), teleport = Position(32912, 31603, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32901, 31589, 14),
		to = Position(32923, 31609, 14),
	},
	exit = Position(32914, 31608, 14),
}

local lever = BossLever(config)
lever:position({ x = 32902, y = 31622, z = 14 })--(32902, 31622, 14)
lever:register()
