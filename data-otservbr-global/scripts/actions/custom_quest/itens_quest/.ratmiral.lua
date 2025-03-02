local rewards = { 
	{ id = 35514, name = "Junge flail" },
	{ id = 35515, name = "Throwing axe" },
	{ id = 35516, name = "Exotic legs" },
	{ id = 35517, name = "Bast legs" },
	{ id = 35518, name = "Jungle bow" },
	{ id = 35519, name = "Makeshift boots" },
	{ id = 35520, name = "Make-do boots" },
	{ id = 35521, name = "Jungle rod" },
	{ id = 35522, name = "Jungle wand" },
	{ id = 35523, name = "Exotic amulet" },
	{ id = 35524, name = "Jungle quiver" }
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465458) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a throwing axe quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465458, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1725, y = 2454, z = 7 })
graveDangerRoll:register()
