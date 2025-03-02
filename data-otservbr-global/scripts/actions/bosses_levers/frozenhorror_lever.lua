local config = {
	boss = {
		name = "Melting Frozen Horror",
		position = Position(32269, 31090, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32302, 31088, 14), teleport = Position(32269, 31097, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32302, 31089, 14), teleport = Position(32269, 31097, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32302, 31090, 14), teleport = Position(32269, 31097, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32302, 31091, 14), teleport = Position(32269, 31097, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32302, 31092, 14), teleport = Position(32269, 31097, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32259, 31081, 14),
		to = Position(32279, 31101, 14),
	},
	exit = Position(32272, 31100, 14),
}

local lever = BossLever(config)
lever:position({ x = 32302, y = 31087, z = 14 })--(32302, 31087, 14)
lever:register()
