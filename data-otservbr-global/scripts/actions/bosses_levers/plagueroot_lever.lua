local config = {
	boss = {
		name = "Plagueroot",
		position = Position(32226, 32002, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32226, 32020, 14), teleport = Position(32226, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32226, 32021, 14), teleport = Position(32226, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32226, 32022, 14), teleport = Position(32226, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32226, 32023, 14), teleport = Position(32226, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32226, 32024, 14), teleport = Position(32226, 31996, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32218, 31994, 14),
		to = Position(32235, 32011, 14),
	},
	exit = Position(32235, 32011, 14),
}

local lever = BossLever(config)
lever:position({ x = 32226, y = 32019, z = 14 }) --(32226, 32019, 14)
lever:register()