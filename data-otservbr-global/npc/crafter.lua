local internalNpcName = "Crafter"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1662,
	lookHead = 114,
	lookBody = 114,
	lookLegs = 95,
	lookFeet = 114,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.currency = 22723

npcConfig.shop = {
	{ itemName = "dark wizards crown", clientId = 22153, buy = 1 }, 
	{ itemName = "green dragon", clientId = 44056, buy = 1 }, 
	{ itemName = "green dragon shield", clientId = 44055, buy = 1 }, 
	{ itemName = "epic wisdom", clientId = 12809, buy = 1 }, 
	{ itemName = "purple beaver", clientId = 44759, buy = 1 }, 
	{ itemName = "tibiapedia", clientId = 34266, buy = 1 }, 
	{ itemName = "dragon eye", clientId = 16262, buy = 1 }, 
	{ itemName = "gods twilight paladin doll", clientId = 39761, buy = 1 }, 
	{ itemName = "chaos critical dice", clientId = 35909, buy = 1 }, 
	{ itemName = "shield of destiny", clientId = 22889, buy = 1 }, 
	{ itemName = "gods twilight knight doll", clientId = 39759, buy = 1 }, 
	{ itemName = "mathmaster shield", clientId = 25982, buy = 1 },
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
	{ text = "Im selling addon dolls!" },
	{ text = "Use an addon doll to obtain your new outfit!" },
	{ text = "Tokens! Bring your tokens!" },
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


npcHandler:setMessage(MESSAGE_GREET, "Blessings, Player! How may I be of service? Do you wish to trade some minor tokens for an addon doll?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
