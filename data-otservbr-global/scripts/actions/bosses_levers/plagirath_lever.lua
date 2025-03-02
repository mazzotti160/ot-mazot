local config = {
	boss = {
		name = "Plagirath",
		position = Position(33171, 31501, 13),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33229, 31500, 13), teleport = Position(33178, 31501, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33229, 31501, 13), teleport = Position(33178, 31501, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33229, 31502, 13), teleport = Position(33178, 31501, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33229, 31503, 13), teleport = Position(33178, 31501, 13), effect = CONST_ME_TELEPORT },
		{ pos = Position(33229, 31503, 13), teleport = Position(33178, 31501, 13), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33159, 31490, 13),
		to = Position(33188, 31511, 13),
	},
	exit = Position(33174, 31511, 13),
}

local lever = BossLever(config)
lever:uid(1022)
lever:register()
