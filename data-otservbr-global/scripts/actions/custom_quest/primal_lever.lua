local setting = {
	-- At what level can do the quest?
	requiredLevel = 100,
	-- Can it be done daily? true = yes, false = no
	daily = false,
	-- Do not change from here down
	centerDemonRoomPosition = { x = 1630, y = 1891, z = 6 },
	demonsPositions = {
		{ x = 1627, y = 1889, z = 6 },
		{ x = 1629, y = 1889, z = 6 },
		{ x = 1631, y = 1889, z = 6 },
		{ x = 1632, y = 1893, z = 6 },
		{ x = 1630, y = 1893, z = 6 },
		{ x = 1628, y = 1893, z = 6 },
		{ x = 1631, y = 1891, z = 6 },
		{ x = 1632, y = 1891, z = 6 },
		{ x = 1633, y = 1891, z = 6 },
		{ x = 1634, y = 1891, z = 6 },
	},
	playersPositions = {
		{ fromPos = { x = 1638, y = 1890, z = 5 }, toPos = { x = 1630, y = 1891, z = 6 } },
		{ fromPos = { x = 1638, y = 1891, z = 5 }, toPos = { x = 1629, y = 1891, z = 6 } },
		{ fromPos = { x = 1638, y = 1892, z = 5 }, toPos = { x = 1628, y = 1891, z = 6 } },
		{ fromPos = { x = 1638, y = 1893, z = 5 }, toPos = { x = 1627, y = 1891, z = 6 } },
	},
}

local lever = Action()

function lever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 2772 then
		-- Checks if you have the 4 players and if they have the required level
		for i = 1, #setting.playersPositions do
			local creature = Tile(setting.playersPositions[i].fromPos):getTopCreature()
			if creature and creature:getLevel() < setting.requiredLevel then
				player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "All the players need to be level " .. setting.requiredLevel .. " or higher.")
				return true
			end
		end

		-- Checks if there are still players inside the room, if so, return true
		if roomIsOccupied(setting.centerDemonRoomPosition, true, 4, 4) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A team is already inside the quest room.")
			return true
		end

		-- Create monsters
		for i = 1, #setting.demonsPositions do
			Game.createMonster("Honour Guard 7", setting.demonsPositions[i])
		end

		-- Get players from the tiles "playersPositions" and teleport to the demons room if all of the above requirements are met
		for i = 1, #setting.playersPositions do
			local creature = Tile(setting.playersPositions[i].fromPos):getTopCreature()
			if creature and creature:isPlayer() then
				creature:teleportTo(setting.playersPositions[i].toPos)
				creature:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			else
				return false
			end
		end
		item:transform(2773)
	elseif item.itemid == 2773 then
		-- If it has "daily = true" then it will execute this function
		if setting.daily then
			player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
			return true
		end
		-- Not be able to push the lever back if someone is still inside the monsters room
		if roomIsOccupied(setting.centerDemonRoomPosition, true, 5, 5) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A team is already inside the quest room.")
			return true
		end
		-- Removes all monsters so that the next team can enter
		if Position.removeMonster(setting.centerDemonRoomPosition, 5, 5) then
			return true
		end
		item:transform(2772)
	end
	return true
end

lever:aid(24260)
lever:register()
