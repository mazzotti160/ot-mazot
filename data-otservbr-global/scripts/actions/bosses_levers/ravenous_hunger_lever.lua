local config = {
	boss = {
		name = "Ravenous Hunger",
		position = Position(33162, 31953, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33138, 31953, 15), teleport = Position(33162, 31947, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31954, 15), teleport = Position(33162, 31947, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31955, 15), teleport = Position(33162, 31947, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31956, 15), teleport = Position(33162, 31947, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31957, 15), teleport = Position(33162, 31947, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33153, 31944, 15),
		to = Position(33175, 31963, 15),
	},
	exit = Position(33163, 31962, 15),
}

local lever = BossLever(config)
lever:position({ x = 33138, y = 31952, z = 15 })--(33138, 31952, 15)
lever:register()
