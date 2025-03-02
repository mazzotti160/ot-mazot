local config = {
	boss = {
		name = "The Sandking",
		position = Position(33099, 31860, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33507, 32228, 10), teleport = Position(33099, 31852, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33507, 32229, 10), teleport = Position(33099, 31852, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33507, 32230, 10), teleport = Position(33099, 31852, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33507, 32231, 10), teleport = Position(33099, 31852, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33507, 32232, 10), teleport = Position(33099, 31852, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33089, 31850, 15),
		to = Position(33109, 31869, 15),
	},
	exit = Position(33099, 31869, 15),
}

local lever = BossLever(config)
lever:position({ x = 33507, y = 32227, z = 10 })--(33507, 32227, 10)
lever:register()
