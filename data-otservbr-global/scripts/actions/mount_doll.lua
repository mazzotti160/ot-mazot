local modalLeverShop = Action()
function modalLeverShop.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if player:getItemCount(25979) >= 1 then
		player:registerEvent("MountDoll")
	else
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Put this item in your backpack.")
	return false	
	end
	
    local title = "Mount Doll"
    local message = "Choose your mount wisely and ride it."

    local window = ModalWindow(10002, title, message)

					window:addButton(101, "Yes")
					window:addButton(104, "Cancel")
					--
					window:addChoice(1, "Widow Queen") 
					window:addChoice(2, "Racing Bird") 
					window:addChoice(3, "War Bear") 
					window:addChoice(4, "Black Sheep") 
					window:addChoice(5, "Midnight Panther") 
					window:addChoice(6, "Draptor") 
					window:addChoice(7, "Titanica") 
					window:addChoice(8, "Tin Lizzard") 
					window:addChoice(9, "Rapid Boar") 
					window:addChoice(10, "Undead Cavebear") 
					window:addChoice(11, "Donkey") 
					window:addChoice(12, "Tiger Slug") 
					window:addChoice(13, "Uniwheel") 
					window:addChoice(14, "Crystal Wolf") 
					window:addChoice(15, "War Horse") 
					window:addChoice(16, "Kingly Deer") 
					window:addChoice(17, "Tamed Panda") 
					window:addChoice(18, "Dromedary") 
					window:addChoice(19, "Scorpion King") 
					window:addChoice(20, "Lady Bug") 
					window:addChoice(21, "Manta Ray") 
					window:addChoice(22, "Ironblight") 
					window:addChoice(23, "Magma Crawler") 
					window:addChoice(24, "Dragonling") 
					window:addChoice(25, "Gnarlhound") 
					window:addChoice(26, "Water Buffalo") 
					window:addChoice(27, "Ursagrodon") 
					window:addChoice(28, "The Hellgrip") 
					window:addChoice(29, "Noble Lion") 
					window:addChoice(30, "Shock Head") 
					window:addChoice(31, "Walker") 
					window:addChoice(32, "Neon Sparkid") 
					window:addChoice(33, "Vortexion") 
					window:addChoice(34, "Stone Rhino") 
					window:addChoice(35, "Mole") 
					window:addChoice(36, "Fleeting Knowledge") 
					window:addChoice(37, "Lacewing Moth") 
					window:addChoice(38, "Hibernal Moth") 
					window:addChoice(39, "Gryphon") 
					window:addChoice(40, "Haze") 
					window:addChoice(41, "Phantasmal Jade") 
					window:addChoice(42, "White Lion") 
					window:addChoice(43, "Shellodon") 
					window:addChoice(44, "Singeing Steed") 
					window:addChoice(45, "Spirit of Purity") 
					window:addChoice(46, "Foxmouse") 
					window:addChoice(47, "Pegasus") 
--
					window:setDefaultEscapeButton(104)
					window:sendToPlayer(player)
    return true
end

modalLeverShop:id(25979)
modalLeverShop:register()