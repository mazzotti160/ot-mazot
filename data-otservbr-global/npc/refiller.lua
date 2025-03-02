local internalNpcName = "Refiller"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1384,
	lookHead = 77,
	lookBody = 68,
	lookLegs = 73,
	lookFeet = 16,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "All in one npc!" },
}

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)

npcType.onThink = function(npc, interval)
	npcHandler:onThink(npc, interval)
end

npcType.onAppear = function(npc, creature)
	npcHandler:onAppear(npc, creature)
end

npcType.onDisappear = function(npc, creature)
	npcHandler:onDisappear(npc, creature)
end

npcType.onMove = function(npc, creature, fromPosition, toPosition)
	npcHandler:onMove(npc, creature, fromPosition, toPosition)
end

npcType.onSay = function(npc, creature, type, message)
	npcHandler:onSay(npc, creature, type, message)
end

npcType.onCloseChannel = function(npc, creature)
	npcHandler:onCloseChannel(npc, creature)
end

-- Basic
npcHandler:setMessage(MESSAGE_GREET, "Oh, please come in, |PLAYERNAME|. What do you need?")
npcHandler:setMessage(MESSAGE_FAREWELL, "Good bye.")
npcHandler:setMessage(MESSAGE_WALKAWAY, "Good bye.")
npcHandler:setMessage(MESSAGE_SENDTRADE, "Of course, just browse through my wares. {Footballs} have to be purchased separately.")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

npcConfig.shop = {
	--{ itemName = "all loot in loot pouch", clientId = 23721, sell = 1 },
--start vendas
	{ itemName = "durable exercise shield", clientId = 44066, buy = 945000, count = 1800 },
	{ itemName = "exercise shield", clientId = 44065, buy = 262500, count = 500 },	
	{ itemName = "lasting exercise shield", clientId = 44067, buy = 7560000, count = 14400 },	
	{ itemname = "magic shield potion", clientId = 35563, buy = 1000},
	{ itemname = "lesser fragment", clientId = 46625, buy = 1500000},
	{ itemname = "greater fragment", clientId = 46626, buy = 4500000},
	{ itemname = "prismatic ring", clientId = 16114, buy = 45000},
	{ itemname = "prismatic necklace", clientId = 16113, buy = 18000},
	{ itemname = "gill necklace", clientId = 16108, buy = 16500},
	{ itemName = "dwarven ring", clientId = 3097, buy = 2000, sell = 100 },
	{ itemName = "energy ring", clientId = 3051, buy = 2000, sell = 100 },
	{ itemName = "life ring", clientId = 3052, buy = 900, sell = 50 },
	{ itemName = "might ring", clientId = 3048, buy = 5000, sell = 250, count = 20 },
	{ itemName = "ring of healing", clientId = 3098, buy = 2000, sell = 100 },
	{ itemName = "time ring", clientId = 3053, buy = 2000, sell = 100 },
	{ itemName = "axe ring", clientId = 3092, buy = 500, sell = 100 },
	{ itemName = "bronze amulet", clientId = 3056, buy = 100, sell = 50, count = 200 },
	{ itemName = "club ring", clientId = 3093, buy = 500, sell = 100 },
	{ itemName = "elven amulet", clientId = 3082, buy = 500, sell = 100, count = 50 },
	{ itemName = "garlic necklace", clientId = 3083, buy = 100, sell = 50 },
	{ itemName = "stealth ring", clientId = 3049, buy = 5000, sell = 200 },
	{ itemName = "stone skin amulet", clientId = 3081, buy = 5000, sell = 500, count = 5 },
	{ itemName = "sword ring", clientId = 3091, buy = 500, sell = 100 },
	{ itemName = "ring of blue plasma", clientId = 23529, buy = 32000 },
	{ itemName = "ring of green plasma", clientId = 23531, buy = 32000 },
	{ itemName = "ring of red plasma", clientId = 23533, buy = 32000 },
	{ itemName = "collar of blue plasma", clientId = 23542, buy = 24000 },
	{ itemName = "collar of green plasma", clientId = 23543, buy = 24000 },
	{ itemName = "collar of red plasma", clientId = 23544, buy = 24000 },	
--exercises
			{ itemName = "exercise axe", clientId = 28553, buy = 262500, subType = 500 },
			{ itemName = "exercise bow", clientId = 28555, buy = 262500, subType = 500 },
			{ itemName = "exercise club", clientId = 28554, buy = 262500, subType = 500 },
			{ itemName = "exercise rod", clientId = 28556, buy = 262500, subType = 500 },
			{ itemName = "exercise sword", clientId = 28552, buy = 262500, subType = 500 },
			{ itemName = "exercise wand", clientId = 28557, buy = 262500, subType = 500 },
			{ itemName = "durable exercise axe", clientId = 35280, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise bow", clientId = 35282, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise club", clientId = 35281, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise rod", clientId = 35283, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise sword", clientId = 35279, buy = 945000, subType = 1800 },
			{ itemName = "durable exercise wand", clientId = 35284, buy = 945000, subType = 1800 },
			{ itemName = "lasting exercise axe", clientId = 35286, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise bow", clientId = 35288, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise club", clientId = 35287, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise rod", clientId = 35289, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise sword", clientId = 35285, buy = 7560000, subType = 14400 },
			{ itemName = "lasting exercise wand", clientId = 35290, buy = 7560000, subType = 14400 },
			
--ammo
			{ itemName = "arrow", clientId = 3447, buy = 2 },
			{ itemName = "bolt", clientId = 3446, buy = 4 },
			{ itemName = "bow", clientId = 3350, buy = 400, sell = 100 },
			{ itemName = "crossbow", clientId = 3349, buy = 500, sell = 120 },
			{ itemName = "crystalline arrow", clientId = 15793, buy = 450 },
			{ itemName = "drill bolt", clientId = 16142, buy = 12 },
			{ itemName = "diamond arrow", clientId = 35901, buy = 100 },
			{ itemName = "earth arrow", clientId = 774, buy = 5 },
			{ itemName = "envenomed arrow", clientId = 16143, buy = 12 },
			{ itemName = "flaming arrow", clientId = 763, buy = 5 },
			{ itemName = "flash arrow", clientId = 761, buy = 5 },
			{ itemName = "onyx arrow", clientId = 7365, buy = 7 },
			{ itemName = "piercing bolt", clientId = 7363, buy = 5 },
			{ itemName = "power bolt", clientId = 3450, buy = 7 },
			{ itemName = "prismatic bolt", clientId = 16141, buy = 20 },
			{ itemName = "quiver", clientId = 35562, buy = 400 },
			{ itemName = "royal spear", clientId = 7378, buy = 15 },
			{ itemName = "shiver arrow", clientId = 762, buy = 5 },
			{ itemName = "sniper arrow", clientId = 7364, buy = 5 },
			{ itemName = "spear", clientId = 3277, buy = 9, sell = 3 },
			{ itemName = "spectral bolt", clientId = 35902, buy = 70 },
			{ itemName = "tarsal arrow", clientId = 14251, buy = 6 },
			{ itemName = "throwing star", clientId = 3287, buy = 42 },
			{ itemName = "vortex bolt", clientId = 14252, buy = 6 },
--potions
			{ itemName = "great health potion", clientId = 239, buy = 225 },
			{ itemName = "great mana potion", clientId = 238, buy = 144 },
			{ itemName = "great spirit potion", clientId = 7642, buy = 228 },
			{ itemName = "health potion", clientId = 266, buy = 50 },
			{ itemName = "mana potion", clientId = 268, buy = 56 },
			{ itemName = "strong health potion", clientId = 236, buy = 115 },
			{ itemName = "strong mana potion", clientId = 237, buy = 93 },
			{ itemName = "supreme health potion", clientId = 23375, buy = 625 },
			{ itemName = "ultimate health potion", clientId = 7643, buy = 379 },
			{ itemName = "ultimate mana potion", clientId = 23373, buy = 438 },
			{ itemName = "ultimate spirit potion", clientId = 23374, buy = 438 },
			{ itemName = "empty potion flask", clientId = 283, sell = 5 },
			{ itemName = "empty potion flask", clientId = 284, sell = 5 },
			{ itemName = "empty potion flask", clientId = 285, sell = 5 },
			{ itemName = "vial", clientId = 2874, sell = 5 },
--runes
			{ itemName = "animate dead rune", clientId = 3203, buy = 375 },
			{ itemName = "avalanche rune", clientId = 3161, buy = 57 },
			{ itemName = "blank rune", clientId = 3147, buy = 10 },
			{ itemName = "chameleon rune", clientId = 3178, buy = 210 },
			{ itemName = "convince creature rune", clientId = 3177, buy = 80 },
			{ itemName = "cure poison rune", clientId = 3153, buy = 65 },
			{ itemName = "destroy field rune", clientId = 3148, buy = 15 },
			{ itemName = "disintegrate rune", clientId = 3197, buy = 26 },
			{ itemName = "energy bomb rune", clientId = 3149, buy = 203 },
			{ itemName = "energy field rune", clientId = 3164, buy = 38 },
			{ itemName = "energy wall rune", clientId = 3166, buy = 85 },
			{ itemName = "explosion rune", clientId = 3200, buy = 31 },
			{ itemName = "fire bomb rune", clientId = 3192, buy = 147 },
			{ itemName = "fire field rune", clientId = 3188, buy = 28 },
			{ itemName = "fire wall rune", clientId = 3190, buy = 61 },
			{ itemName = "fireball rune", clientId = 3189, buy = 30 },
			{ itemName = "great fireball rune", clientId = 3191, buy = 57 },
			{ itemName = "heavy magic missile rune", clientId = 3198, buy = 12 },
			{ itemName = "holy missile rune", clientId = 3182, buy = 16 },
			{ itemName = "icicle rune", clientId = 3158, buy = 30 },
			{ itemName = "intense healing rune", clientId = 3152, buy = 95 },
			{ itemName = "light magic missile rune", clientId = 3174, buy = 4 },
			{ itemName = "magic wall rune", clientId = 3180, buy = 116 },
			{ itemName = "paralyse rune", clientId = 3165, buy = 700 },
			{ itemName = "poison bomb rune", clientId = 3173, buy = 85 },
			{ itemName = "poison field rune", clientId = 3172, buy = 21 },
			{ itemName = "poison wall rune", clientId = 3176, buy = 52 },
			{ itemName = "soulfire rune", clientId = 3195, buy = 46 },
			{ itemName = "stalagmite rune", clientId = 3179, buy = 12 },
			{ itemName = "stone shower rune", clientId = 3175, buy = 37 },
			{ itemName = "sudden death rune", clientId = 3155, buy = 135 },
			{ itemName = "thunderstorm rune", clientId = 3202, buy = 47 },
			{ itemName = "ultimate healing rune", clientId = 3160, buy = 175 },
			{ itemName = "wild growth rune", clientId = 3156, buy = 160 },
--supplies
			{ itemName = "brown mushroom", clientId = 3725, buy = 10 },
			{ itemName = "fishing rod", clientId = 3483, buy = 150, sell = 40 },
			{ itemName = "machete", clientId = 3308, buy = 35, sell = 6 },
			{ itemName = "pick", clientId = 3456, buy = 50, sell = 15 },
			{ itemName = "rope", clientId = 3003, buy = 50, sell = 15 },
			{ itemName = "scythe", clientId = 3453, buy = 50, sell = 10 },
			{ itemName = "shovel", clientId = 3457, buy = 50, sell = 8 },
			{ itemName = "label", clientId = 3507, buy = 1 },
			{ itemName = "letter", clientId = 3505, buy = 8 },
			{ itemName = "parcel", clientId = 3503, buy = 15 },		
--end vendas
}
-- On buy npc shop message
npcType.onBuyItem = function(npc, player, itemId, subType, amount, ignore, inBackpacks, totalCost)
	npc:sellItem(player, itemId, amount, subType, 0, ignore, inBackpacks)
end
-- On sell npc shop message
npcType.onSellItem = function(npc, player, itemId, subtype, amount, ignore, name, totalCost)
	player:sendTextMessage(MESSAGE_TRADE, string.format("Sold %ix %s for %i gold.", amount, name, totalCost))
end
-- On check npc shop message (look item)
npcType.onCheckItem = function(npc, player, clientId, subType) end

npcType:register(npcConfig)
