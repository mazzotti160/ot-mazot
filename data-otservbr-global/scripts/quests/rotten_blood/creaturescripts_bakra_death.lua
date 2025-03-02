local config = {
	centerPosition = Position(33805, 31504, 14),
	rangeX = 11,
	rangeY = 11,
}

local event = CreatureEvent("RottenBloodBakragoreDeath")

function event.onPrepareDeath(creature)
	local spectators = Game.getSpectators(config.centerPosition, false, false, config.rangeX, config.rangeX, config.rangeY, config.rangeY)
	for _, specCreature in pairs(spectators) do
		if specCreature:isPlayer() then
			if specCreature:getStorageValue(4591046545000001) == -1 then --decaying defender storage
				specCreature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Congratulations you received the Decaying Defender Outfits.")
				specCreature:addOutfit(1663, 0)
				specCreature:addOutfit(1662, 0)
			--	specCreature:setStorageValue(Storage.Quest.U12_30.PoltergeistOutfits.Received, 1)
			end
			--specCreature:addAchievement("Beyonder")
		end
	end

	return true
end

event:register()
