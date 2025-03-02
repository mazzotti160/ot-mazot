local dust = Action()

function dust.onUse(player, item, fromPosition, target, toPosition, isHotkey)
		
  
	if player:getStorageValue(4591046545001) >= os.time() then  
		player:say("You already have regen until  ".. os.date('%d/%m/%Y - %H:%M:%S', player:getStorageValue(4591046545001)) .." Horario de Brasilia!", TALKTYPE_MONSTER_SAY)	
			return true
		else
	player:say("Congratulations! You have boosted your regen for 30 days.", TALKTYPE_MONSTER_SAY)
	player:setStorageValue(4591046545001, os.time() + 1 * 60 * 60 * 24 * 30)
	item:remove(1)	
	end
	end

dust:id(33893) -- ID do item a ser transformado em dusts
dust:register()