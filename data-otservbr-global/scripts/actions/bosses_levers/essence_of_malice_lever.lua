local config = {
	boss = {
		name = "Essence Of Malice",
		position = Position(33098, 31921, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33095, 31943, 15), teleport = Position(33098, 31914, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33095, 31944, 15), teleport = Position(33098, 31914, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33095, 31945, 15), teleport = Position(33098, 31914, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33095, 31946, 15), teleport = Position(33098, 31914, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33095, 31947, 15), teleport = Position(33098, 31914, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33087, 31911, 15),
		to = Position(33107, 31929, 15),
	},
	exit = Position(33099, 31929, 15),
}

local lever = BossLever(config)
lever:position({ x = 33095, y = 31942, z = 15 })--(33095, 31942, 15)
lever:register()
