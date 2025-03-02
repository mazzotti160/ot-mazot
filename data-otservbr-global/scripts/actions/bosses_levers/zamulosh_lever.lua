local config = {
	boss = {
		name = "Zamulosh",
		position = Position(33643, 32756, 11),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33680, 32741, 11), teleport = Position(33642, 32750, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33680, 32742, 11), teleport = Position(33642, 32750, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33680, 32743, 11), teleport = Position(33642, 32750, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33680, 32744, 11), teleport = Position(33642, 32750, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33680, 32745, 11), teleport = Position(33642, 32750, 11), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33634, 32748, 11),
		to = Position(33655, 32765, 11),
	},
	exit = Position(33644, 32764, 11),
}

local lever = BossLever(config)
lever:uid(1026)
lever:register()
