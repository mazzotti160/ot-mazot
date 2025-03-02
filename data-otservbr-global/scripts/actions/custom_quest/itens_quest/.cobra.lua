local rewards = { 
	{ id = 30393, name = "Cobra crossbow" },
	{ id = 30394, name = "Cobra boots" },
	{ id = 30395, name = "Cobra club" },
	{ id = 30396, name = "Cobra axe" },
	{ id = 30397, name = "Cobra hood" },
	{ id = 30398, name = "Cobra sword" },
	{ id = 30399, name = "Cobra wand" },
	{ id = 30400, name = "Cobra rod" },
	{ id = 31631, name = "Cobra amulet" }
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465455) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a cobra sword quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465455, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1572, y = 2236, z = 7 })
graveDangerRoll:register()