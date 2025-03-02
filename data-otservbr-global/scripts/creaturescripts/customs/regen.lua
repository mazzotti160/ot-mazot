local storeregen = CreatureEvent("storeregen")

local condition = Condition(CONDITION_REGENERATION)
condition:setParameter(CONDITION_PARAM_TICKS, -1)
condition:setParameter(CONDITION_PARAM_HEALTHGAIN, 50)
condition:setParameter(CONDITION_PARAM_HEALTHTICKS, 2000) -- 3 segundos
condition:setParameter(CONDITION_PARAM_MANAGAIN, 100)
condition:setParameter(CONDITION_PARAM_MANATICKS, 2000) -- 3 segundos

function storeregen.onLogin(player)
	if player:getStorageValue(4591046545001) >= os.time() then  
		print('Buff Regen Ativo')	
        player:addCondition(condition)
	else
		print('Buff Regen Inativo')
    end
    return true
end

storeregen:register()
