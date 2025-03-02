local config = {
	boss = {
		name = "Gnomevil",
		position = Position(33117, 31956, 11),
	},
	requiredLevel = 250,
	playerPositions = {
		{ pos = Position(33143, 31960, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33142, 31960, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33141, 31960, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33140, 31960, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33139, 31960, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },

		{ pos = Position(33143, 31961, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33142, 31961, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33141, 31961, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33140, 31961, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33139, 31961, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },

		{ pos = Position(33143, 31962, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33142, 31962, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33141, 31962, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33140, 31962, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },
		{ pos = Position(33139, 31962, 11), teleport = Position(33106, 31955, 11), effect = CONST_ME_TELEPORT },		
	},
	specPos = {
		from = Position(33101, 31944, 11),
		to = Position(33131, 31969, 11),
	},
	exit = Position(33128, 31964, 11),
}

local lever = BossLever(config)
lever:aid(24302)
lever:register()
