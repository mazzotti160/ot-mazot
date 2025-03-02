local config = {
	boss = {
		name = "Razzagorn",
		position = Position(33424, 32466, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33386, 32455, 14), teleport = Position(33424, 32460, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33387, 32455, 14), teleport = Position(33424, 32460, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33388, 32455, 14), teleport = Position(33424, 32460, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33389, 32455, 14), teleport = Position(33424, 32460, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33390, 32455, 14), teleport = Position(33424, 32460, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33410, 32453, 14),
		to = Position(33439, 32480, 14),
	},
	exit = Position(33413, 32467, 14),
}

local lever = BossLever(config)
lever:uid(1024)
lever:register()
