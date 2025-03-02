local config = {
	boss = {
		name = "World Devourer",
		position = Position(32271, 31348, 14),
	},
	playerPositions = {
		{ pos = Position(32272, 31374, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32272, 31375, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32272, 31376, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32272, 31377, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32272, 31378, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },		
		{ pos = Position(32271, 31374, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32271, 31375, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32271, 31376, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32271, 31377, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32271, 31378, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },	
		{ pos = Position(32273, 31374, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32273, 31375, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32273, 31376, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32273, 31377, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },
		{ pos = Position(32273, 31378, 14), teleport = Position(32271, 31355, 14), effect = CONST_ME_TELEPORT },		
	},
	specPos = {
		from = Position(32258, 31335, 14),
		to = Position(32286, 31359, 14),
	},
	monsters = {
		--{ name = "Spark of Destruction", pos = Position(32203, 31246, 14) },
		--{ name = "Spark of Destruction", pos = Position(32205, 31251, 14) },
		--{ name = "Spark of Destruction", pos = Position(32210, 31251, 14) },
		--{ name = "Spark of Destruction", pos = Position(32212, 31246, 14) },
	},
	exit = Position(32281, 31348, 14),
}

local lever = BossLever(config)
lever:aid(14332)
lever:register()
