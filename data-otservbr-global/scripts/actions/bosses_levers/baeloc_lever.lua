local config = {
	boss = {
		name = "Sir Baeloc",
		position = Position(33425, 31440, 13),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33424, 31413, 13), teleport = Position(33424, 31435, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33425, 31413, 13), teleport = Position(33424, 31435, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33426, 31413, 13), teleport = Position(33424, 31435, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33427, 31413, 13), teleport = Position(33424, 31435, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33428, 31413, 13), teleport = Position(33424, 31435, 13), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33411, 31426, 13),
		to = Position(33434, 31450, 13),
	},
	exit = Position(33424, 31449, 13),
}

local lever = BossLever(config)
lever:position({ x = 33423, y = 31413, z = 13 })--(33423, 31413, 13)
lever:register()
