local config = {
	boss = {
		name = "Lloyd",
		position = Position(32799, 32828, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32759, 32868, 14), teleport = Position(32800, 32831, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32759, 32869, 14), teleport = Position(32800, 32831, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32759, 32870, 14), teleport = Position(32800, 32831, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32759, 32871, 14), teleport = Position(32800, 32831, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32760, 32872, 14), teleport = Position(32800, 32831, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32787, 32815, 14),
		to = Position(32812, 32838, 14),
	},
	exit = Position(32800, 32836, 14),
}

local lever = BossLever(config)
lever:position({ x = 32759, y = 32867, z = 14 })--(32759, 32867, 14)
lever:register()
