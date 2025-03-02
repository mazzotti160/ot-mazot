local config = {
	boss = {
		name = "Maxxenius",
		position = Position(32254, 32003, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32253, 32020, 14), teleport = Position(32254, 31997, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32253, 32021, 14), teleport = Position(32254, 31997, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32253, 32022, 14), teleport = Position(32254, 31997, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32253, 32023, 14), teleport = Position(32254, 31997, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32253, 32024, 14), teleport = Position(32254, 31997, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32245, 31995, 14),
		to = Position(32262, 32010, 14),
	},
	exit = Position(32254, 32010, 14),
}

local lever = BossLever(config)
lever:position({ x = 32253, y = 32019, z = 14 })--(32253, 32019, 14)
lever:register()