local config = {
	boss = {
		name = "Mazoran",
		position = Position(33584, 32689, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33593, 32644, 14), teleport = Position(33584, 32681, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33593, 32645, 14), teleport = Position(33584, 32681, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33593, 32646, 14), teleport = Position(33584, 32681, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33593, 32647, 14), teleport = Position(33584, 32681, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33593, 32648, 14), teleport = Position(33584, 32681, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33570, 32679, 14),
		to = Position(33600, 32701, 14),
	},
	exit = Position(33585, 32699, 14),
}

local lever = BossLever(config)
lever:uid(1025)
lever:register()
