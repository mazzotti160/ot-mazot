local config = {
	boss = {
		name = "Malofur Mangrinder",
		position = Position(32281, 32002, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32280, 32020, 14), teleport = Position(32280, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32280, 32021, 14), teleport = Position(32280, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32280, 32022, 14), teleport = Position(32280, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32280, 32023, 14), teleport = Position(32280, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32280, 32024, 14), teleport = Position(32280, 31996, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32272, 31993, 14),
		to = Position(32290, 32011, 14),
	},
	exit = Position(32281, 32010, 14),
}

local lever = BossLever(config)
lever:position({ x = 32280, y = 32019, z = 14 })--(32280, 32019, 14)
lever:register()