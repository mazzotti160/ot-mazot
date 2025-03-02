local potionsModal = CreatureEvent("FerumbrasHat")

function potionsModal.onModalWindow(player, modalWindowId, buttonId, choiceId)
    if modalWindowId == 1000 then
        if buttonId == 101 then -- Botão de compra de 1 item (potion)
            local addondoll_id = 5903
            
            if player:getItemCount(addondoll_id) >= 1 and not player:hasOutfit(130, 2) then
                -- Adiciona addons de mage
                player:addOutfitAddon(141, 1) -- Outfit fem
                player:addOutfitAddon(141, 2) -- Outfit fem
                player:addOutfitAddon(130, 1) -- Outfit m
                player:addOutfitAddon(130, 2) -- Outfit m				
                player:removeItem(addondoll_id, 1)
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You earned mage outfits.")
                player:getPosition():sendMagicEffect(CONST_ME_GIFT_WRAPS)
            elseif player:hasOutfit(130, 2) then
                player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already have this outfit.")
                player:getPosition():sendMagicEffect(CONST_ME_POFF) -- Efeito de erro
            end
        end
    end
    player:unregisterEvent("FerumbrasHat") -- Corrigido o nome do evento
end

potionsModal:register()