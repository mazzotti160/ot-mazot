local internalNpcName = "Arenator"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 150
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 1444,
	lookHead = 0,
	lookBody = 0,
	lookLegs = 113,
	lookFeet = 114,
	lookAddons = 3,
}

npcConfig.flags = {
	floorchange = false,
}

npcConfig.currency = 23487

npcConfig.shop = {
{ itemName = "bestiary betterment", clientId = 36728, buy = 40 },
{ itemName = "fire resilience", clientId = 36729, buy = 40 },
{ itemName = "ice resilience", clientId = 36730, buy = 40 },
{ itemName = "earth resilience", clientId = 36731, buy = 40 },
{ itemName = "energy resilience", clientId = 36732, buy = 40 },
{ itemName = "holy resilience", clientId = 36733, buy = 40 },
{ itemName = "death resilience", clientId = 36734, buy = 40 },
{ itemName = "physical resilience", clientId = 36735, buy = 40 },
{ itemName = "fire amplification", clientId = 36736, buy = 40 },
{ itemName = "ice amplification", clientId = 36737, buy = 40 },
{ itemName = "earth amplification", clientId = 36738, buy = 40 },
{ itemName = "energy amplification", clientId = 36739, buy = 40 },
{ itemName = "holy amplification", clientId = 36740, buy = 40 },
{ itemName = "death amplification", clientId = 36741, buy = 40 },
{ itemName = "physical amplification", clientId = 36742, buy = 40 },
{ itemName = "strawberry cupcake", clientId = 28485, buy = 400 },
{ itemName = "blueberry cupcake", clientId = 28484, buy = 400 },
{ itemName = "drome cube", clientId = 36827, buy = 25 },
{ itemName = "forge token", clientId = 22720, buy = 150 },
{ itemName = "bag you covet", clientId = 43895, buy = 2500 },
{ itemName = "bag you desire", clientId = 34109, buy = 1750 },
{ itemName = "primal bag", clientId = 39546, buy = 2150 },
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
	{ text = "Win arena tokens and trade with me!", buy = 40 },
	--{ text = "Use an addon doll to obtain your new outfit!", buy = 40 },
	--{ text = "Tokens! Bring your tokens!", buy = 40 },
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
