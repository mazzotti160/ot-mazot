local config = {
	boss = {
		name = "Deathstrike",
		position = Position(33105, 31962, 10),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33136, 31959, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33136, 31960, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33136, 31961, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33136, 31962, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33136, 31963, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33137, 31959, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33137, 31960, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33137, 31961, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33137, 31962, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33137, 31963, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31959, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31960, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31961, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31962, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33138, 31963, 10), teleport = Position(33100, 31951, 10), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33086, 31946, 10),
		to = Position(33127, 31985, 10),
	},
	exit = Position(33122, 31976, 10),
}

local lever = BossLever(config)
lever:aid(24301)--(33137, 31958, 10)
lever:register()
