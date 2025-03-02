local config = {
	boss = {
		name = "Drume",
		position = Position(32445, 32517, 7),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32457, 32508, 6), teleport = Position(32447, 32513, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(32458, 32508, 6), teleport = Position(32447, 32513, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(32459, 32508, 6), teleport = Position(32447, 32513, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(32460, 32508, 6), teleport = Position(32447, 32513, 7), effect = CONST_ME_TELEPORT },
		{ pos = Position(32461, 32508, 6), teleport = Position(32447, 32513, 7), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(32436, 32509, 7),
		to = Position(32454, 32526, 7),
	},
	exit = Position(32447, 32511, 7),
}

local lever = BossLever(config)
lever:position({ x = 32456, y = 32508, z = 6 }) --(32456, 32508, 6)
lever:register()
