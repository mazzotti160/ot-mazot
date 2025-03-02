local config = {
	boss = {
		name = "The Baron From Below",
		position = Position(33649, 32303, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33669, 32301, 15), teleport = Position(33648, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32302, 15), teleport = Position(33648, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32303, 15), teleport = Position(33648, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32304, 15), teleport = Position(33648, 32297, 15), effect = CONST_ME_TELEPORT },
		{ pos = Position(33669, 32305, 15), teleport = Position(33648, 32297, 15), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33638, 32293, 15),
		to = Position(33659, 32312, 15),
	},
	exit = Position(33650, 32312, 15),
}

local lever = BossLever(config)
lever:aid(24305)
lever:register()
