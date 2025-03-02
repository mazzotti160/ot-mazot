local rewards = { 
	{ id = 34080, name = "Lion ring" },
	{ id = 34150, name = "Lion longbow" },
	{ id = 34151, name = "Lion rod" },
	{ id = 34152, name = "Lion wand" },
	{ id = 34153, name = "Lion spellbook" },
	{ id = 34154, name = "Lion shield" },
	{ id = 34155, name = "Lion longsword" },
	{ id = 34156, name = "Lion spangehelmet" },
	{ id = 34157, name = "Lion plate" },
	{ id = 34158, name = "Lion amulet" },	
	{ id = 34253, name = "Lion axe" },	
	{ id = 34254, name = "Lion hammer" }
	
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465456) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a lion longsword quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465456, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1737, y = 2295, z = 7 })
graveDangerRoll:register()