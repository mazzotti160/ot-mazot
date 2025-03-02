local rewards = { 
		{ id = 39147, name = "spiritthorn armor" },
		{ id = 39148, name = "spiritthorn helmet" },
		{ id = 39177, name = "charged spiritthorn ring" },
		{ id = 39149, name = "alicorn headguard" },
		{ id = 39150, name = "alicorn quiver" },
		{ id = 39180, name = "charged alicorn ring" },
		{ id = 39151, name = "arcanomancer regalia" },
		{ id = 39152, name = "arcanomancer folio" },
		{ id = 39183, name = "charged arcanomancer sigil" },
		{ id = 39153, name = "arboreal crown" },
		{ id = 39154, name = "arboreal tome" },
		{ id = 39186, name = "charged arboreal ring" }
}

local graveDangerRoll = Action()


function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]
	local player = creature:getPlayer()
	if not player then
		return false
	end
    if player:getStorageValue(9104654510) ~= 1 then
		player:addItem(rewardItem.id, 1)		
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found a " .. rewardItem.name .. ".")
		local message = "o Player: " .. player:getName() .. " completou a primal ordeal quest e ganhou um " .. rewardItem.name .. "."
		Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)		
		player:setStorageValue(9104654510, 1)
		--outfit
		player:addOutfit(1568)
		player:addOutfit(1569)		
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already did this quest.")
	return false
end
end

graveDangerRoll:position({ x = 1639, y = 1889, z = 7 })
graveDangerRoll:register()