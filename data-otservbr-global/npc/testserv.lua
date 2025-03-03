local internalNpcName = "Testserv"
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
{ itemName = "Crystal coin", clientId = 3043, buy = 1, count = 1 },
{ itemName = "Enchanted theurgic amulet", clientId = 30403, buy = 1, count = 1 },
{ itemName = "Enchanted sleep shawl", clientId = 30342, buy = 1, count = 1 },
{ itemName = "Enchanted pendulet", clientId = 30344, buy = 1, count = 1 },
{ itemName = "Enchanted turtle amulet", clientId = 39233, buy = 1, count = 1 },
{ itemName = "Silver token", clientId = 22516, buy = 1, count = 1 },
{ itemName = "Gold token", clientId = 22721, buy = 1, count = 1 },
{ itemName = "Golden raid token", clientId = 19082, buy = 1, count = 1 },
{ itemName = "Forge dust", clientId = 37160, buy = 1, count = 1 },
{ itemName = "Exalted core", clientId = 37110, buy = 1, count = 1 },
{ itemName = "Bag you desire", clientId = 34109, buy = 1, count = 1 },
{ itemName = "Primal bag", clientId = 39546, buy = 1, count = 1 },
{ itemName = "Bag you covet", clientId = 43895, buy = 1, count = 1 },
{ itemName = "Tibia coins", clientId = 22118, buy = 1, count = 1 },

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
