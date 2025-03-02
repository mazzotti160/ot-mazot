local checkPremium = MoveEvent()
function checkPremium.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return true
    end
    -- Check requirements
    if player:getStorageValue(35656514) >= 3 then
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


checkPremium:position({ x = 2192, y = 2095, z = 7 }) -- (2192, 2095, 7)
checkPremium:register()