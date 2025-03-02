local config = {
	boss = {
		name = "Abyssador",
		position = Position(33088, 31910, 12),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33074, 31875, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 31876, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 31877, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 31878, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33074, 31879, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },		
		{ pos = Position(33075, 31875, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 31876, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 31877, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 31878, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33075, 31879, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33076, 31875, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33076, 31876, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33076, 31877, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33076, 31878, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },
		{ pos = Position(33076, 31879, 12), teleport = Position(33089, 31903, 12), effect = CONST_ME_TELEPORT },		
	},
	specPos = {
		from = Position(33076, 31898, 12),
		to = Position(33102, 31924, 12),
	},
	exit = Position(33098, 31911, 12),
}

local lever = BossLever(config)
lever:aid(24303)
lever:register()
