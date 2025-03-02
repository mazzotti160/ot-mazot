local rewards = { 
	{ id = 29423, name = "Dream shroud" },
	{ id = 29424, name = "Pair of dreamwalkers" },
	{ id = 29418, name = "Living armor" },
	{ id = 29417, name = "Living vine bow" },
	{ id = 29422, name = "Winterblade" },
	{ id = 29421, name = "Summerblade" },
	{ id = 29426, name = "Brain in a jar" },
	{ id = 29425, name = "Energized limb" },
	{ id = 29419, name = "Resizer" },
	{ id = 29420, name = "Shoulder plate" },
	{ id = 29427, name = "Dark whispers" },
	{ id = 30342, name = "Sleep shawl" }	
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465454) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a winterblade quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465454, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 2033, y = 2131, z = 6 })
graveDangerRoll:register()