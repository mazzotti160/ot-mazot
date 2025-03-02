local config = {
	boss = {
		name = "Arbaziloth",
		position = Position(34033, 32331, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(34058, 32396, 14), teleport = Position(34033, 32325, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(34058, 32397, 14), teleport = Position(34033, 32325, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(34058, 32398, 14), teleport = Position(34033, 32325, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(34058, 32399, 14), teleport = Position(34033, 32325, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(34058, 32400, 14), teleport = Position(34033, 32325, 14), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(34016, 32318, 14),
		to = Position(34043, 32341, 14),
	},
	exit = Position(34041, 32330, 14),
}

local lever = BossLever(config)
lever:position({ x = 34058, y = 32395, z = 14 })--(34058, 32395, 14)
lever:register()
