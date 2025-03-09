local setting = {
	requiredLevel = 100,
	daily = false,
	centerDemonRoomPosition = { x = 33221, y = 31659, z = 13 },
	demonsPositions = {
		{ x = 33219, y = 31657, z = 13 },
		{ x = 33221, y = 31657, z = 13 },
		{ x = 33223, y = 31659, z = 13 },
		{ x = 33224, y = 31659, z = 13 },
		{ x = 33220, y = 31661, z = 13 },
		{ x = 33222, y = 31661, z = 13 },
	},
	playersPositions = {
		{ fromPos = { x = 33225, y = 31671, z = 13 }, toPos = { x = 33222, y = 31659, z = 13 } },
		{ fromPos = { x = 33224, y = 31671, z = 13 }, toPos = { x = 33221, y = 31659, z = 13 } },
		{ fromPos = { x = 33223, y = 31671, z = 13 }, toPos = { x = 33220, y = 31659, z = 13 } },
		{ fromPos = { x = 33222, y = 31671, z = 13 }, toPos = { x = 33219, y = 31659, z = 13 } },
	},
}

local lever = Action()

function lever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.itemid == 2772 then
		local playersToTeleport = {}
		for i = 1, #setting.playersPositions do
			local creature = Tile(setting.playersPositions[i].fromPos):getTopCreature()
			if creature and creature:isPlayer() and creature:getLevel() >= setting.requiredLevel then
				table.insert(playersToTeleport, creature)
			end
		end

		if #playersToTeleport == 0 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "At least one player is required to start the quest.")
			return true
		end

		if roomIsOccupied(setting.centerDemonRoomPosition, true, 4, 4) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A team is already inside the quest room.")
			return true
		end

		for i = 1, #setting.demonsPositions do
			Game.createMonster("Angry Demon", setting.demonsPositions[i])
		end

		for i = 1, #playersToTeleport do
			playersToTeleport[i]:teleportTo(setting.playersPositions[i].toPos)
			playersToTeleport[i]:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
		end
		item:transform(2773)
	
	elseif item.itemid == 2773 then
		if setting.daily then
			player:sendCancelMessage(RETURNVALUE_NOTPOSSIBLE)
			return true
		end
		if roomIsOccupied(setting.centerDemonRoomPosition, true, 4, 4) then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "A team is already inside the quest room.")
			return true
		end
		if Position.removeMonster(setting.centerDemonRoomPosition, 4, 4) then
			return true
		end
		item:transform(2772)
	end
	return true
end

lever:uid(30025)
lever:register()
