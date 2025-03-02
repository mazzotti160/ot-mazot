local rewards = { 
	{ id = 27647, name = "Gnome helmet" },
	{ id = 27648, name = "Gnome armor" },
	{ id = 27649, name = "Gnome legs" },
	{ id = 27651, name = "Gnome sword" },
	{ id = 27650, name = "Gnome shield" }
	
}

local gnomeRoll = Action()


function gnomeRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end

    if player:getStorageValue(910465453) ~= 1 then
		player:addItem(rewardItem.id, 1)			
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a gnome sword quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465453, 1)		
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

gnomeRoll:position({ x = 1605, y = 2096, z = 6 })
gnomeRoll:register()