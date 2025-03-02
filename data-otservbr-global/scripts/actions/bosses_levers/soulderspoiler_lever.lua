local config = {
	boss = {
		name = "The Souldespoiler",
		position = Position(33131, 31924, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33127, 31892, 15), teleport = Position(33130, 31919, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33127, 31893, 15), teleport = Position(33130, 31919, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33127, 31894, 15), teleport = Position(33130, 31919, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33127, 31895, 15), teleport = Position(33130, 31919, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33127, 31896, 15), teleport = Position(33130, 31919, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33121, 31915, 15),
		to = Position(33140, 31935, 15),
	},
	exit = Position(33138, 31924, 15),
}

local lever = BossLever(config)
lever:position({ x = 33127, y = 31891, z = 15 })--(33127, 31891, 15)
lever:register()
