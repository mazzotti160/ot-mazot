local rewards = { 
	{ id = 28714, name = "Falcon circlet" },
	{ id = 28715, name = "Falcon coif" },
	{ id = 28716, name = "Falcon rod" },
	{ id = 28717, name = "Falcon wand" },
	{ id = 28718, name = "Falcon bow" },
	{ id = 28719, name = "Falcon plate" },
	{ id = 28720, name = "Falcon greaves" },
	{ id = 28721, name = "Falcon shield" },
	{ id = 28722, name = "Falcon escutcheon" },
	{ id = 28723, name = "Falcon longsword" },
	{ id = 28724, name = "Falcon battleaxe" },
	{ id = 28725, name = "Falcon mace" }--,
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465457) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a lion longsword quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465457, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1635, y = 2371, z = 7 })
graveDangerRoll:register()
