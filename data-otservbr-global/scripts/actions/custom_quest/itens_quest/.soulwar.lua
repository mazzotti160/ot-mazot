local rewards = { 
		{ id = 34082, name = "soulcutter" },
		{ id = 34083, name = "soulshredder" },
		{ id = 34084, name = "soulbiter" },
		{ id = 34085, name = "souleater" },
		{ id = 34086, name = "soulcrusher" },
		{ id = 34087, name = "soulmaimer" },
		{ id = 34097, name = "pair of soulwalkers" },
		{ id = 34099, name = "soulbastion" },
		{ id = 34088, name = "soulbleeder" },
		{ id = 34089, name = "soulpiercer" },
		{ id = 34094, name = "soulshell" },
		{ id = 34098, name = "pair of soulstalkers" },
		{ id = 34090, name = "soultainter" },
		{ id = 34092, name = "soulshanks" },
		{ id = 34095, name = "soulmantle" },
		{ id = 34091, name = "soulhexer" },
		{ id = 34093, name = "soulstrider" },
		{ id = 34096, name = "soulshroud" }	
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(910465452) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a soulwar quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(910465452, 1)
		--outfit
		player:addOutfit(1323)
		player:addOutfit(1322)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1678, y = 1850, z = 7 })
graveDangerRoll:register()