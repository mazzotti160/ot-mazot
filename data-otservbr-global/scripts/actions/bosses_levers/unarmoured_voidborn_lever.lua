local config = {
	boss = {
		name = "The Unarmored Voidborn",
		position = Position(33137, 31856, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33164, 31859, 15), teleport = Position(33138, 31866, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33164, 31860, 15), teleport = Position(33138, 31866, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33164, 31861, 15), teleport = Position(33138, 31866, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33164, 31862, 15), teleport = Position(33138, 31866, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33164, 31863, 15), teleport = Position(33138, 31866, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33125, 31849, 15),
		to = Position(33147, 31869, 15),
	},
	exit = Position(33137, 31852, 15),
}

local lever = BossLever(config)
lever:position({ x = 33164, y = 31858, z = 15 })--(33164, 31858, 15)
lever:register()
