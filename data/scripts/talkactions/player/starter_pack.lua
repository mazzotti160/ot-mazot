local aol = TalkAction("!kitstart")

function aol.onSay(player, words, param)
    if player:getStorageValue(4191046545002) == 1 then
        local inbox = player:getSlotItem(CONST_SLOT_STORE_INBOX)
        
        if not inbox then
            player:sendCancelMessage("Erro: Não foi possível encontrar o inbox.")
            return true
        end

        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Have a nice gameplay!")	
        inbox:addItem(23721, 1)
        inbox:addItem(19082, 5)
        player:addPreyCards(50)
        player:addPremiumDays(30)
        player:setStorageValue(4191046545002, -1) 
        
    end
    return true
end

aol:groupType("normal")
aol:register()
