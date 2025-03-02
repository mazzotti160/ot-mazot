local config = {
	boss = {
		name = "Dragon Pack",
		position = Position(33265, 31414, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33260, 31061, 13), teleport = Position(33272, 31414, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33261, 31061, 13), teleport = Position(33272, 31414, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33262, 31061, 13), teleport = Position(33272, 31414, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33263, 31061, 13), teleport = Position(33272, 31414, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33264, 31061, 13), teleport = Position(33272, 31414, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33253, 31403, 15),
		to = Position(33279, 31424, 15),
	},
	exit = Position(33259, 31421, 15),
}

local lever = BossLever(config)
lever:position({ x = 33259, y = 31061, z = 13 })--(33259, 31061, 13)
lever:register()