local rewards = { 
	{ id = 32617, name = "Fabulous legs" },	
	{ id = 32618, name = "Soulful legs" },
	{ id = 32628, name = "Ghost chestplate" },
	{ id = 32619, name = "Pair of nightmare boots" },
	{ id = 32616, name = "Phantasmal axe" },
	{ id = 32635, name = "Ring of souls" }	
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465459) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a phantasmal axe quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465459, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1994, y = 2238, z = 7 })
graveDangerRoll:register()
