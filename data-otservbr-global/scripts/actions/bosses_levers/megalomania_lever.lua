local config = {
	boss = {
		name = "Goshnar's Megalomania",
		position = Position(33710, 31634, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33676, 31634, 14), teleport = Position(33703, 31634, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33677, 31634, 14), teleport = Position(33703, 31634, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33678, 31634, 14), teleport = Position(33703, 31634, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33679, 31634, 14), teleport = Position(33703, 31634, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33680, 31634, 14), teleport = Position(33703, 31634, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33699, 31625, 14),
		to = Position(33721, 31643, 14),
	},
	exit = Position(33713, 31642, 14),
}

local lever = BossLever(config)
lever:position({ x = 33675, y = 31634, z = 14 })--(33675, 31634, 14)
lever:register()