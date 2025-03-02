local doublehpmp = CreatureEvent("doublehpmp")

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, -1)
condition:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, 200)
condition:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, 200)


function doublehpmp.onLogin(player)
	if player:getStorageValue(4591046545002) >= os.time() then  
		print('Double Status Ativo')	
        player:addCondition(condition)	
		player:addHealth(10000000)
		player:addMana(10000000)	
	else
		print('Double Status Inativo')
    end
    return true
end

doublehpmp:register()