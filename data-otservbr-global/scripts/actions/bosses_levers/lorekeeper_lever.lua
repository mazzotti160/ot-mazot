local config = {
	boss = {
		name = "The Last Lore Keeper",
		position = Position(31985, 32847, 14),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(32018, 32844, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32018, 32845, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32018, 32846, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32018, 32847, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32018, 32848, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32019, 32844, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32019, 32845, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32019, 32846, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32019, 32847, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32019, 32848, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32020, 32844, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32020, 32845, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32020, 32846, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32020, 32847, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32020, 32848, 14), teleport = Position(31986, 32839, 14), effect = CONST_ME_TELEPORT },		
	},
	specPos = {
		from = Position(31975, 32837, 14),
		to = Position(31996, 32857, 14),
	},
	exit = Position(31990, 32856, 14),
}

local lever = BossLever(config)
lever:position({ x = 32019, y = 32843, z = 14 })--(32019, 32843, 14)
lever:register()
