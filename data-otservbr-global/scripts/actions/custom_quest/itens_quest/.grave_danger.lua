local rewards = { 
	{ id = 31579, name = "Embrace of nature" },
	{ id = 31577, name = "Terra helmet" },
	{ id = 31578, name = "Bear skin" },
	{ id = 31581, name = "Bow of cataclysm" },
	{ id = 31582, name = "Galea mortis" },
	{ id = 31580, name = "Mortal mace" },	
	{ id = 31583, name = "Toga mortis" }
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465451) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a mortal mace quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465451, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1923, y = 2010, z = 5 })
graveDangerRoll:register()