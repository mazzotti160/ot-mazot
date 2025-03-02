local rewards = { 
	{ id = 36656, name = "Eldritch shield" },
	{ id = 36657, name = "Eldritch claymore" },
	{ id = 36658, name = "Gilded eldritch claymore" },
	{ id = 36659, name = "Eldritch warmace" },
	{ id = 36660, name = "Gilded eldritch warmace" },
	{ id = 36661, name = "Eldritch greataxe" },
	{ id = 36662, name = "Gilded eldritch greataxe" },
	{ id = 36663, name = "Eldritch cuirass" },
	{ id = 36664, name = "Eldritch bow" },
	{ id = 36665, name = "Gilded eldritch bow" },
	{ id = 36666, name = "Eldritch quiver" },
	{ id = 36667, name = "Eldritch breeches" },
	{ id = 36668, name = "Eldritch wand" },
	{ id = 36669, name = "Gilded eldritch wand" },
	{ id = 36670, name = "Eldritch cowl" },
	{ id = 36671, name = "Eldritch hood" },
	{ id = 36672, name = "Eldritch folio" },	
	{ id = 36673, name = "Eldritch tome" },
	{ id = 36674, name = "Eldritch rod" },
	{ id = 36675, name = "Gilded eldritch rod" }
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(9104654513) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a eldritch quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(9104654513, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 2156, y = 1832, z = 7 })
graveDangerRoll:register()