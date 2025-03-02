local config = {
	boss = {
		name = "Ragiaz",
		position = Position(33482, 32333, 13),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33456, 32356, 13), teleport = Position(33483, 32326, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33457, 32356, 13), teleport = Position(33483, 32326, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33458, 32356, 13), teleport = Position(33483, 32326, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33459, 32356, 13), teleport = Position(33483, 32326, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33460, 32356, 13), teleport = Position(33483, 32326, 13), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33471, 32322, 13),
		to = Position(33494, 32347, 13),
	},
	exit = Position(33482, 32345, 13),
}

local lever = BossLever(config)
lever:uid(1023)
lever:register()
