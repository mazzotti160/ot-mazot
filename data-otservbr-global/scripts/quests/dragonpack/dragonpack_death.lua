local config = {
	centerPosition = Position(33805, 31504, 14),
	rangeX = 11,
	rangeY = 11,
}

local event = CreatureEvent("DragonPackDeath")

function event.onPrepareDeath(creature)
	local spectators = Game.getSpectators(config.centerPosition, false, false, config.rangeX, config.rangeX, config.rangeY, config.rangeY)
	for _, specCreature in pairs(spectators) do
		if specCreature:isPlayer() then
			if specCreature:getStorageValue(4591046545000002) == -1 then --decaying defender storage
				specCreature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations you received the Draccoon Herald Outfits.")
				specCreature:addOutfit(1726, 0)
				specCreature:addOutfit(1725, 0)
				--specCreature:setStorageValue(Storage.Quest.U12_30.PoltergeistOutfits.Received, 1)
			end
			--specCreature:addAchievement("Beyonder")
		end
	end

	return true
end

event:register()
