local promotion = TalkAction("!promotion")

function promotion.onSay(player, words, param)
    local vocationId = player:getVocation():getId()
    local promotedVocationId = getPromotedVocation(vocationId)
    
    if promotedVocationId == 0 then
        player:sendCancelMessage("You are already promoted!")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        return
    end

    if player:getVocation():getId() == promotedVocationId then
        player:sendCancelMessage("You are already promoted!")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
    elseif player:getLevel() < 20 then
        player:sendCancelMessage("I am sorry, but I can only promote you once you have reached level 20.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
    elseif not player:removeMoneyBank(20000) then
        player:sendCancelMessage("You do not have enough money.")
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received a promotion!")
        player:setVocation(Vocation(promotedVocationId))
        player:getPosition():sendMagicEffect(CONST_ME_HOLYDAMAGE)
    end
end

promotion:groupType("normal")
promotion:register()
