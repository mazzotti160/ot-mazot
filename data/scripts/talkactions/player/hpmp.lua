local aol = TalkAction("!hpmp")

function aol.onSay(player, words, param)
	if player:getStorageValue(4591046545002) >= os.time() then  
		player:say("ACTIVE UNTIL ".. os.date('%d/%m/%Y - %H:%M:%S', player:getStorageValue(4591046545002)) .." Horario de Brasilia!", TALKTYPE_MONSTER_SAY)	
	else
		player:say("INACTIVE.", TALKTYPE_MONSTER_SAY)	
	end
	return true
end

aol:groupType("normal")
aol:register()
