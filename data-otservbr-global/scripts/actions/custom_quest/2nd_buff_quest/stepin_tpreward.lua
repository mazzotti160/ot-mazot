local checkPremium = MoveEvent()
function checkPremium.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
    -- Check requirements
    if player:getStorageValue(35656514) >= 2 then
        player:say("GZ!.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
	else
	    player:say("Kill boss first!.", TALKTYPE_MONSTER_SAY, false, player, fromPosition)
        player:teleportTo(fromPosition)
	   -- player:teleportTo({ x = 2152, y = 1990, z = 7 })	--(2152, 1990, 7)	
        fromPosition:sendMagicEffect(CONST_ME_TELEPORT)
        return true
    end
    return true
end


checkPremium:position({ x = 2152, y = 2097, z = 7 }) -- (2152, 2097, 7)
checkPremium:register()