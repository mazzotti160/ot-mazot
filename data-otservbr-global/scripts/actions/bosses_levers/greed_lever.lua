local config = {
	boss = {
		name = "Goshnar's Greed",
		position = Position(33747, 31667, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33776, 31665, 14), teleport = Position(33753, 31667, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33777, 31665, 14), teleport = Position(33753, 31667, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33778, 31665, 14), teleport = Position(33753, 31667, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33779, 31665, 14), teleport = Position(33753, 31667, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33780, 31665, 14), teleport = Position(33753, 31667, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33736, 31657, 14),
		to = Position(33757, 31674, 14),
	},
	exit = Position(33747, 31673, 14),
}

local lever = BossLever(config)
lever:position({ x = 33775, y = 31665, z = 14 })--(33775, 31665, 14)
lever:register()
