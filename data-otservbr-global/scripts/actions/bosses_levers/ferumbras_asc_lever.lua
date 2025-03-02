local config = {
	boss = {
		name = "Ferumbras Mortal Shell",
		position = Position(33392, 31473, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33269, 31477, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33269, 31478, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33269, 31479, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33269, 31480, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33270, 31481, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33270, 31477, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33270, 31478, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33270, 31479, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33270, 31480, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33270, 31481, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33271, 31477, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },		
		{ pos = Position(33271, 31478, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33271, 31479, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33271, 31480, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(33271, 31481, 14), teleport = Position(33392, 31480, 14), effect = CONST_ME_TELEPORT },		
	},
	specPos = {
		from = Position(33377, 31457, 14),
		to = Position(33408, 31487, 14),
	},
	exit = Position(33392, 31485, 14),
}

local lever = BossLever(config)
lever:uid(1021)
lever:register()
