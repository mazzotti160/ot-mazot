local modalLeverShop = Action()
function modalLeverShop.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getItemCount(5903) >= 1 then
		player:registerEvent("FerumbrasHat")
	else
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Put this item in your backpack.")
	return false	
	end
	
    local title = "Ferumbras Hat"
    local message = "Do you really wanna wear ferumbras hat?"

    local window = ModalWindow(1000, title, message)

					window:addButton(101, "Yes")
					window:addButton(104, "Cancel")
					window:addChoice(1, "Mage Hat Full Outfits") -- 
					window:setDefaultEscapeButton(104)
					window:sendToPlayer(player)
    return true
end

modalLeverShop:id(5903)
modalLeverShop:register()