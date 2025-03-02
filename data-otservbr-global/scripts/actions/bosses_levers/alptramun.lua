local config = {
	boss = {
		name = "Alptramun",
		position = Position(32199, 32002, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32199, 32020, 14), teleport = Position(32199, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32199, 32021, 14), teleport = Position(32199, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32199, 32022, 14), teleport = Position(32199, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32199, 32023, 14), teleport = Position(32199, 31996, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32199, 32024, 14), teleport = Position(32199, 31996, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32191, 31994, 14),
		to = Position(32209, 32011, 14),
	},
	exit = Position(32199, 32010, 14),
}

local lever = BossLever(config)
lever:position({ x = 32199, y = 32019, z = 14 })--(32199, 32019, 14)
lever:register()