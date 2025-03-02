local config = {
	boss = {
		name = "Brokul",
		position = Position(33483, 31437, 15),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33522, 31465, 15), teleport = Position(33484, 31446, 15) },
		{ pos = Position(33520, 31465, 15), teleport = Position(33484, 31446, 15) },
		{ pos = Position(33521, 31465, 15), teleport = Position(33484, 31446, 15) },
		{ pos = Position(33523, 31465, 15), teleport = Position(33484, 31446, 15) },
		{ pos = Position(33524, 31465, 15), teleport = Position(33484, 31446, 15) },
	},
	specPos = {
		from = Position(33472, 31427, 15),
		to = Position(33496, 31450, 15),
	},
	exit = Position(33528, 31464, 14),
}

local lever = BossLever(config)
lever:aid(34000)
lever:register()

