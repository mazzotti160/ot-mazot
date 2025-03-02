local rewards = { 
		{ id = 43864, name = "sanguine blade" },
		{ id = 43866, name = "sanguine cudgel" },
		{ id = 43868, name = "sanguine hatchet" },
		{ id = 43870, name = "sanguine razor" },
		{ id = 43872, name = "sanguine bludgeon" },
		{ id = 43874, name = "sanguine battleaxe" },
		{ id = 43876, name = "sanguine legs" },
		{ id = 43877, name = "sanguine bow" },
		{ id = 43879, name = "sanguine crossbow" },
		{ id = 43881, name = "sanguine greaves" },
		{ id = 43882, name = "sanguine coil" },
		{ id = 43884, name = "sanguine boots" },
		{ id = 43885, name = "sanguine rod" },
		{ id = 43887, name = "sanguine galoshes" }
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(9104654511) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a rotten blood quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(9104654511, 1)
		--outfit
		player:addOutfit(1662)
		player:addOutfit(1663)		
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1631, y = 1847, z = 6 })
graveDangerRoll:register()