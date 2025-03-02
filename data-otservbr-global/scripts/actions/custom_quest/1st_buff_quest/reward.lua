local tinderReward = Action()
function tinderReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(4535656514) <= 0 then
		player:setStorageValue(4535656514, 1)
	return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your potions have been buffed for the first time!")
	elseif player:getStorageValue(4535656514) >= 1 then
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already finished this quest!")
end
end

tinderReward:uid(61001)
tinderReward:register()
