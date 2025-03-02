local tinderReward = Action()
function tinderReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getStorageValue(4535656514) <= 2 then
		player:setStorageValue(4535656514, 3)
	return player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your potions have been buffed for the third and last time!")
	elseif player:getStorageValue(4535656514) >= 3 then
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already finished this quest!")
end
end

tinderReward:uid(61003)
tinderReward:register()
