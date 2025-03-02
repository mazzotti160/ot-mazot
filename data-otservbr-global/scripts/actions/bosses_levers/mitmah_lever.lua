local config = {
	boss = {
		name = "Mitmah Vanguard",
		position = Position(34067, 31409, 11),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(34048, 31431, 11), teleport = Position(34076, 31410, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(34049, 31431, 11), teleport = Position(34076, 31410, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(34050, 31431, 11), teleport = Position(34076, 31410, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(34051, 31431, 11), teleport = Position(34076, 31410, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(34052, 31431, 11), teleport = Position(34076, 31410, 11), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(34050, 31397, 11),
		to = Position(34082, 31419, 11),
	},
	exit = Position(34068, 31418, 11),
}

local lever = BossLever(config)
lever:position({ x = 34047, y = 31431, z = 11 })--(34047, 31431, 11)
lever:register()