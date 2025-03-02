local internalNpcName = "Task Shop"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 133,
	lookHead = 114,
	lookBody = 57,
	lookLegs = 75,
	lookFeet = 75,
	lookAddons = 3,
	lookMount = 447,	
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.currency = 22722

npcConfig.shop = {
	{ itemName = "exercise sword", clientId = 28552, buy = 1 },
	{ itemName = "exercise axe", clientId = 28553, buy = 1 },
	{ itemName = "exercise club", clientId = 28554, buy = 1 },
	{ itemName = "exercise bow", clientId = 28555, buy = 1 },
	{ itemName = "exercise rod", clientId = 28556, buy = 1 },
	{ itemName = "exercise wand", clientId = 28557, buy = 1 },
	{ itemName = "exercise shield", clientId = 44065, buy = 1 },
--	{ itemName = "bag you covet", clientId = 43895, buy = 1 },
--	{ itemName = "bag you desire", clientId = 34109, buy = 1 },
--	{ itemName = "primal bag", clientId = 39546, buy = 1 },
	{ itemName = "forge dusts", clientId = 37160, buy = 2 },
	{ itemName = "exalted core", clientId = 37110, buy = 1 },
	{ itemName = "blood herb", clientId = 3734, buy = 1 },	
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

npcConfig.voices = {
	interval = 15000,
	chance = 50,
	{ text = "Im selling mount dolls!" },
	{ text = "Use a mount doll to obtain your new mount!" },
	{ text = "Crystals! Bring your crystals!" },
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


npcHandler:setMessage(MESSAGE_GREET, "Blessings, Player! How may I be of service? Do you wanna buy mount doll for some red teleport crystals?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
