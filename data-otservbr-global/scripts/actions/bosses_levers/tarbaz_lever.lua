local config = {
	boss = {
		name = "Tarbaz",
		position = Position(33459, 32844, 11),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33418, 32849, 11), teleport = Position(33466, 32844, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33418, 32850, 11), teleport = Position(33466, 32844, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33418, 32851, 11), teleport = Position(33466, 32844, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33418, 32852, 11), teleport = Position(33466, 32844, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33418, 32853, 11), teleport = Position(33466, 32844, 11), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33447, 32834, 11),
		to = Position(33471, 32853, 11),
	},
	exit = Position(33460, 32853, 11),
}

local lever = BossLever(config)
lever:uid(1027)
lever:register()
