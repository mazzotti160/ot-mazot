local config = {
	boss = {
		name = "Shulgrax",
		position = Position(33485, 32787, 13),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33434, 32785, 13), teleport = Position(33485, 32779, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33434, 32786, 13), teleport = Position(33485, 32779, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33434, 32787, 13), teleport = Position(33485, 32779, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33434, 32788, 13), teleport = Position(33485, 32779, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33434, 32789, 13), teleport = Position(33485, 32779, 13), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33473, 32775, 13),
		to = Position(33497, 32797, 13),
	},
	exit = Position(33486, 32796, 13),
}

local lever = BossLever(config)
lever:uid(1028)
lever:register()
