local config = {
	boss = {
		name = "Goshnar's Hatred",
		position = Position(33743, 31599, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33773, 31601, 14), teleport = Position(33748, 31599, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33774, 31601, 14), teleport = Position(33748, 31599, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33775, 31601, 14), teleport = Position(33748, 31599, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33776, 31601, 14), teleport = Position(33748, 31599, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33777, 31601, 14), teleport = Position(33748, 31599, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33735, 31591, 14),
		to = Position(33753, 31607, 14),
	},
	exit = Position(33743, 31606, 14),
}

local lever = BossLever(config)
lever:position({ x = 33772, y = 31601, z = 14 })--(33772, 31601, 14)
lever:register()
