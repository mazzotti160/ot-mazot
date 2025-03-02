local checkPremium = MoveEvent()
function checkPremium.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
    -- Check requirements
    if player:getStorageValue(35656514) >= 1 then
        player:say("GZ!.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
	else
	    player:say("Kill boss first!.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
       player:teleportTo(fromPosition)
	   -- player:teleportTo({ x = 2110, y = 2096, z = 7 })		
        fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
        return true
    end
    return true
end


checkPremium:position({ x = 2110, y = 2097, z = 7 }) -- essa será a posição que você vai colocar uma uniqueId no RME.
checkPremium:register()