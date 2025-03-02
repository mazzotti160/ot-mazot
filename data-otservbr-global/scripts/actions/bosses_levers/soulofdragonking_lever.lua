local config = {
	boss = {
		name = "Soul Of Dragonking Zyrtarch",
		position = Position(33358, 31182, 10),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33391, 31178, 10), teleport = Position(33358, 31175, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33391, 31179, 10), teleport = Position(33358, 31175, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33391, 31180, 10), teleport = Position(33358, 31175, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33391, 31181, 10), teleport = Position(33358, 31175, 10), effect = CONST_ME_TELEPORT },
		{ pos = Position(33391, 31182, 10), teleport = Position(33358, 31175, 10), effect = CONST_ME_TELEPORT },
	},
	specPos = {
		from = Position(33348, 31173, 10),
		to = Position(33369, 31192, 10),
	},
	exit = Position(33361, 31191, 10),
}

local lever = BossLever(config)
lever:position({ x = 33391, y = 31177, z = 10 })--(33391, 31177, 10)
lever:register()
