local rewards = { 
	{ id = 39165, name = "Midnight Tunic" },
	{ id = 39167, name = "Midnight Sarong" },
	{ id = 39155, name = "Naga Sword" },
	{ id = 39156, name = "Naga Axe" },
	{ id = 39157, name = "Naga Club" },
	{ id = 39162, name = "Naga Wand" },
	{ id = 39163, name = "Naga Rod" },
	{ id = 39159, name = "Naga Crossbow" },
	{ id = 39160, name = "Naga Quiver" },
	{ id = 39164, name = "Dawnfire Sherwani" },
	{ id = 39166, name = "Dawnfire Pantaloons" },
	{ id = 39233, name = "Turtle Amulet" },
	{ id = 39161, name = "Feverbloom Boots" },	
	{ id = 39158, name = "Frostflower Boots" }	
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(9104654514) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a naga quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(9104654514, 1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 2153, y = 1750, z = 7 })
graveDangerRoll:register()--(2153, 1750, 7)