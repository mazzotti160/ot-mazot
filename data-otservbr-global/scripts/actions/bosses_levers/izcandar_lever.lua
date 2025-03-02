local config = {
	boss = {
		name = "Izcandar the Banished",
		position = Position(32172, 32002, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32172, 32020, 14), teleport = Position(32172, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32172, 32021, 14), teleport = Position(32172, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32172, 32022, 14), teleport = Position(32172, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32172, 32023, 14), teleport = Position(32172, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32172, 32024, 14), teleport = Position(32172, 31996, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32164, 31994, 14),
		to = Position(32182, 32011, 14),
	},
	exit = Position(32172, 32010, 14),
}

local lever = BossLever(config)
lever:position({ x = 32172, y = 32019, z = 14 })--(32172, 32019, 14)
lever:register()