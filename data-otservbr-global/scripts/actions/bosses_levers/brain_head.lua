local config = {
	boss = {
		name = "Brain Head",
		position = Position(31954, 32324, 10),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(31926, 32348, 10), teleport = Position(31954, 32329, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(31926, 32349, 10), teleport = Position(31954, 32329, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(31926, 32350, 10), teleport = Position(31954, 32329, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(31926, 32351, 10), teleport = Position(31954, 32329, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(31926, 32352, 10), teleport = Position(31954, 32329, 10), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(31941, 32316, 10),
		to = Position(31966, 32336, 10),
	},
	exit = Position(31946, 32334, 10),
}

local lever = BossLever(config)
lever:aid(24262) --(31926, 32347, 10)
lever:register()