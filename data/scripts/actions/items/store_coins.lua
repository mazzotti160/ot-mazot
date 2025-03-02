local storeCoin = Action()

function storeCoin.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	local count = item:getCount()
    if player:getItemCount(ITEM_STORE_COIN) >= 1 then	
	player:addTransferableCoins(count)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have added " .. count .. " tibia coins to your balance. Your total is now " .. player:getTransferableCoins() .. ".")
	player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
	player:removeItem(ITEM_STORE_COIN, count)
	logger.warn("[StoreCoinScript - ITEM_STORE_COIN] The player {} used the item to store Tibia Coins.", player:getName())
	else
	--player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Put this item in your backpack.")	
	end
	return true
end

storeCoin:id(ITEM_STORE_COIN)
storeCoin:register()
