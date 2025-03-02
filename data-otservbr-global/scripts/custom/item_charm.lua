local dust = Action()

function dust.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local count = item:getCount()
    if player:getItemCount(3215) >= 1 then
        player:addCharmPoints(count)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have earned " .. count .. " charm points!")
        player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
        player:removeItem(3215, count)
        -- logger.warn("[DustScript - 3215] The player {} used the item to gain charm points.", player:getName())
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Put this item in your backpack.")  
    end
    return true
end

dust:id(3215) -- ID do item a ser transformado em dusts
dust:register()