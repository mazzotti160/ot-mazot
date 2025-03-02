local rewards = { 
	{ id = 40595, name = "Mutant bone kilt" },
	{ id = 40594, name = "Alchemists notepad" },
	{ id = 40593, name = "Mutant bone boots" },
	{ id = 40592, name = "Alchemists boots" },
	{ id = 40590, name = "Mutated skin legs" },
	{ id = 40589, name = "Stitched mutant hide legs" },
	{ id = 40588, name = "Antler horn helmet" },	
	{ id = 40591, name = "Mutated skin armor" }
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(9104654512) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a mutated skin armor quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(9104654512, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 2069, y = 1903, z = 7 })
graveDangerRoll:register()