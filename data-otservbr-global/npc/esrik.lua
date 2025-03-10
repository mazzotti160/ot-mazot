local internalNpcName = "Esrik"
local npcType = Game.createNpcType(internalNpcName)
local npcConfig = {}

npcConfig.name = internalNpcName
npcConfig.description = internalNpcName

npcConfig.health = 100
npcConfig.maxHealth = npcConfig.health
npcConfig.walkInterval = 2000
npcConfig.walkRadius = 2

npcConfig.outfit = {
	lookType = 71,
}

npcConfig.flags = {
	floorchange = false,
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

local tomes = Storage.Quest.U8_54.TheNewFrontier.TomeofKnowledge
npcConfig.shop = {
	{ itemName = "all loot in pouch", clientId = 23721, sell = 1 },
	{ itemName = "club", clientId = 3270, buy = 5, sell = 1 },
	{ itemName = "coat", clientId = 3562, buy = 8, sell = 1 },
	{ itemName = "jacket", clientId = 3561, buy = 12, sell = 1 },
	{ itemName = "dagger", clientId = 3267, buy = 5, sell = 2 },
	{ itemName = "leather boots", clientId = 3552, buy = 10, sell = 2 },
	{ itemName = "throwing knife", clientId = 3298, buy = 25, sell = 2 },
	{ itemName = "doublet", clientId = 3379, buy = 16, sell = 3 },
	{ itemName = "sickle", clientId = 3293, buy = 7, sell = 3 },
	{ itemName = "hand axe", clientId = 3268, buy = 8, sell = 4 },
	{ itemName = "leather helmet", clientId = 3355, buy = 12, sell = 4 },
	{ itemName = "bone club", clientId = 3337, sell = 5 },
	{ itemName = "rapier", clientId = 3272, buy = 15, sell = 5 },
	{ itemName = "small axe", clientId = 3462, sell = 5 },
	{ itemName = "wooden shield", clientId = 3412, buy = 15, sell = 5 },
	{ itemName = "axe", clientId = 3274, buy = 20, sell = 7 },
	{ itemName = "leather legs", clientId = 3559, buy = 10, sell = 9 },
	{ itemName = "short sword", clientId = 3294, buy = 26, sell = 10 },
	{ itemName = "studded club", clientId = 3336, sell = 10 },
	{ itemName = "leather armor", clientId = 3361, buy = 35, sell = 12 },
	{ itemName = "sabre", clientId = 3273, buy = 35, sell = 12 },
	{ itemName = "studded legs", clientId = 3362, buy = 50, sell = 15 },
	{ itemName = "soldier helmet", clientId = 3375, buy = 110, sell = 16 },
	{ itemName = "studded shield", clientId = 3426, buy = 50, sell = 16 },
	{ itemName = "chain helmet", clientId = 3352, buy = 52, sell = 17 },
	{ itemName = "bone sword", clientId = 3338, buy = 75, sell = 20 },
	{ itemName = "studded helmet", clientId = 3376, buy = 63, sell = 20 },
	{ itemName = "legion helmet", clientId = 3374, sell = 22 },
	{ itemName = "brass shield", clientId = 3411, buy = 65, sell = 25 },
	{ itemName = "chain legs", clientId = 3558, buy = 80, sell = 25 },
	{ itemName = "hatchet", clientId = 3276, sell = 25 },
	{ itemName = "studded armor", clientId = 3378, buy = 90, sell = 25 },
	{ itemName = "sword", clientId = 3264, buy = 85, sell = 25 },
	{ itemName = "brass helmet", clientId = 3354, buy = 120, sell = 30 },
	{ itemName = "mace", clientId = 3286, buy = 90, sell = 30 },
	{ itemName = "katana", clientId = 3300, sell = 35 },
	{ itemName = "swampling club", clientId = 17824, sell = 40 },
	{ itemName = "plate shield", clientId = 3410, buy = 125, sell = 45 },
	{ itemName = "brass legs", clientId = 3372, buy = 195, sell = 49 },
	{ itemName = "copper shield", clientId = 3430, sell = 50 },
	{ itemName = "crowbar", clientId = 3304, buy = 260, sell = 50 },
	{ itemName = "longsword", clientId = 3285, buy = 160, sell = 51 },
	{ itemName = "viking helmet", clientId = 3367, buy = 265, sell = 66 },
	{ itemName = "chain armor", clientId = 3358, buy = 200, sell = 70 },
	{ itemName = "scale armor", clientId = 3377, buy = 260, sell = 75 },
	{ itemName = "battle axe", clientId = 3266, buy = 235, sell = 80 },
	{ itemName = "steel shield", clientId = 3409, buy = 240, sell = 80 },
	{ itemName = "viking shield", clientId = 3431, buy = 260, sell = 85 },
	{ itemName = "battle shield", clientId = 3413, sell = 95 },
	{ itemName = "dwarven shield", clientId = 3425, buy = 500, sell = 100 },
	{ itemName = "morning star", clientId = 3282, buy = 430, sell = 100 },
	{ itemName = "plate legs", clientId = 3557, sell = 115 },
	{ itemName = "carlin sword", clientId = 3283, buy = 473, sell = 118 },
	{ itemName = "battle hammer", clientId = 3305, buy = 350, sell = 120 },
	{ itemName = "brass armor", clientId = 3359, buy = 450, sell = 150 },
	{ itemName = "iron helmet", clientId = 3353, buy = 390, sell = 150 },
	{ itemName = "spike sword", clientId = 3271, buy = 8000, sell = 240 },
	{ itemName = "red lantern", clientId = 10289, sell = 250 },
	{ itemName = "double axe", clientId = 3275, sell = 260 },
	{ itemName = "steel helmet", clientId = 3351, buy = 580, sell = 293 },
	{ itemName = "orcish axe", clientId = 3316, sell = 350 },
	{ itemName = "halberd", clientId = 3269, sell = 400 },
	{ itemName = "plate armor", clientId = 3357, buy = 1200, sell = 400 },
	{ itemName = "two handed sword", clientId = 3265, buy = 950, sell = 450 },
	{ itemName = "war hammer", clientId = 3279, buy = 10000, sell = 470 },
	{ itemName = "fire sword", clientId = 3280, sell = 1000 },
	{ itemName = "twin hooks", clientId = 10392, buy = 1100 },
	{ itemName = "zaoan halberd", clientId = 10406, buy = 1200 },
	{ itemName = "exercise axe", clientId = 28553, buy = 262500, count = 500 },
	{ itemName = "exercise bow", clientId = 28555, buy = 262500, count = 500 },
	{ itemName = "exercise club", clientId = 28554, buy = 262500, count = 500 },
	{ itemName = "exercise shield", clientId = 44065, buy = 262500, count = 500 },
	{ itemName = "exercise sword", clientId = 28552, buy = 262500, count = 500 },
	{ itemName = "durable exercise axe", clientId = 35280, buy = 945000, count = 1800 },
	{ itemName = "durable exercise bow", clientId = 35282, buy = 945000, count = 1800 },
	{ itemName = "durable exercise club", clientId = 35281, buy = 945000, count = 1800 },
	{ itemName = "durable exercise shield", clientId = 44066, buy = 945000, count = 1800 },
	{ itemName = "durable exercise sword", clientId = 35279, buy = 945000, count = 1800 },
	{ itemName = "lasting exercise axe", clientId = 35286, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise bow", clientId = 35288, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise club", clientId = 35287, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise shield", clientId = 44067, buy = 7560000, count = 14400 },
	{ itemName = "lasting exercise sword", clientId = 35285, buy = 7560000, count = 14400 },
	-- 3 tomes
	{ itemName = "lizard weapon rack kit", clientId = 10210, buy = 500 },
	-- 9 tomes
	{ itemName = "broken halberd", clientId = 10418, sell = 100 },
	{ itemName = "spiked iron ball", clientId = 10408, sell = 100 },
	{ itemName = "Broken Slicer", clientId = 11661, sell = 120 },
	{ itemName = "high guard's shoulderplates", clientId = 10416, sell = 130 },
	{ itemName = "bone shoulderplate", clientId = 10404, sell = 150 },
	{ itemName = "zaogun's shoulderplates", clientId = 10414, sell = 150 },
	{ itemName = "warmaster's wristguards", clientId = 10405, sell = 200 },
	{ itemName = "cursed shoulder spikes", clientId = 10410, sell = 320 },
	{ itemName = "broken draken mail", clientId = 11660, sell = 340 },
	{ itemName = "draken wristbands", clientId = 11659, sell = 430 },
	{ itemName = "twin hooks", clientId = 10392, sell = 500 },
	{ itemName = "zaoan halberd", clientId = 10406, sell = 500 },
	{ itemName = "wailing widow's necklace", clientId = 10412, sell = 3000 },
	{ itemName = "zaoan shoes", clientId = 10386, sell = 5000 },
	{ itemName = "drachaku", clientId = 10391, sell = 10000 },
	{ itemName = "drakinata", clientId = 10388, sell = 10000 },
	{ itemName = "zaoan armor", clientId = 10384, sell = 14000 },
	{ itemName = "zaoan legs", clientId = 10387, sell = 14000 },
	{ itemName = "sai", clientId = 10389, sell = 16500 },
	{ itemName = "twiceslicer", clientId = 11657, sell = 28000 },
	{ itemName = "zaoan sword", clientId = 10390, sell = 30000 },
	{ itemName = "guardian boots", clientId = 10323, sell = 35000 },
	{ itemName = "draken boots", clientId = 4033, sell = 40000 },
	{ itemName = "zaoan helmet", clientId = 10385, sell = 45000 },
	{ itemName = "Elite Draken Mail", clientId = 11651, sell = 50000 },
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

npcHandler:setMessage(MESSAGE_GREET, "Hello, |PLAYERNAME| and welcome to my little forge.")
npcHandler:setMessage(MESSAGE_FAREWELL, "Bye.")

npcHandler:addModule(FocusModule:new(), npcConfig.name, true, true, true)

-- npcType registering the npcConfig table
npcType:register(npcConfig)
