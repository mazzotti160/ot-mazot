local config = {
	boss = {
		name = "The Time Guardian",
		position = Position(32977, 31663, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33010, 31660, 14), teleport = Position(32977, 31657, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33010, 31661, 14), teleport = Position(32977, 31657, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33010, 31662, 14), teleport = Position(32977, 31657, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33010, 31663, 14), teleport = Position(32977, 31657, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33009, 31664, 14), teleport = Position(32977, 31657, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32967, 31653, 14),
		to = Position(32987, 31672, 14),
	},
	exit = Position(32980, 31672, 14),
}

local lever = BossLever(config)
lever:position({ x = 33010, y = 31659, z = 14 })--(33010, 31659, 14)
lever:register()
