local battlepass = Action()

function battlepass.onUse(player, item, fromPosition, target, toPosition, isHotkey)
 
--first use -- 5 /// 1 * 60 * 60 * 20 hr cd
	if player:getStorageValue(4591046545004) < 1 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 1) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 15 prey wildcards!", TALKTYPE_MONSTER_SAY) 
		player:addPreyCards(15)
	elseif player:getStorageValue(4591046545004) == 1 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 2) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a roulette coin!", TALKTYPE_MONSTER_SAY) 
		player:addItem(19082, 1) 
	elseif player:getStorageValue(4591046545004) == 2 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 3) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 250 charm points!", TALKTYPE_MONSTER_SAY) 
		player:addItem(3215, 5) 	
	elseif player:getStorageValue(4591046545004) == 3 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 4) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 10 dust tokens!", TALKTYPE_MONSTER_SAY) 
		player:addItem(22720, 10) 	
	elseif player:getStorageValue(4591046545004) == 4 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 5) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a roulette coin!", TALKTYPE_MONSTER_SAY) 
		player:addItem(19082, 1) 
	elseif player:getStorageValue(4591046545004) == 5 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 6) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 10 exalted cores!", TALKTYPE_MONSTER_SAY) 
		player:addItem(37110, 10) 
	elseif player:getStorageValue(4591046545004) == 6 and player:getStorageValue(4591046545005) <= os.time() then 
				local message6 = "BATTLEPASS: " .. player:getName() .. " wins a bag you desire today."
					Game.broadcastMessage(message6, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 7) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a bag you desire!", TALKTYPE_MONSTER_SAY) 
		player:addItem(34109, 1) 
	elseif player:getStorageValue(4591046545004) == 7 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 8) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 15 prey wildcards!", TALKTYPE_MONSTER_SAY) 
		player:addPreyCards(15)
	elseif player:getStorageValue(4591046545004) == 8 and player:getStorageValue(4591046545005) <= os.time() then 
				local message6 = "BATTLEPASS: " .. player:getName() .. " wins a primal bag today."
					Game.broadcastMessage(message6, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 9) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a primal bag!", TALKTYPE_MONSTER_SAY) 
		player:addItem(39546, 1) 
	elseif player:getStorageValue(4591046545004) == 9 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 10) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a craft token!", TALKTYPE_MONSTER_SAY) 
		player:addItem(22723, 1) 
	elseif player:getStorageValue(4591046545004) == 10 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 11) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 250 charm points!", TALKTYPE_MONSTER_SAY) 
		player:addItem(3215, 10) 
	elseif player:getStorageValue(4591046545004) == 11 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 12) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 15 prey wildcards!", TALKTYPE_MONSTER_SAY) 
		player:addPreyCards(15)
	elseif player:getStorageValue(4591046545004) == 12 and player:getStorageValue(4591046545005) <= os.time() then 
				local message13 = "BATTLEPASS: " .. player:getName() .. " wins a bag you desire today."
					Game.broadcastMessage(message13, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 13) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a bag you desire!", TALKTYPE_MONSTER_SAY) 
		player:addItem(34109, 1) 
	elseif player:getStorageValue(4591046545004) == 13 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 14) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 10 dust tokens!", TALKTYPE_MONSTER_SAY) 
		player:addItem(22720, 10) 
	elseif player:getStorageValue(4591046545004) == 14 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 15) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a roulette coin!", TALKTYPE_MONSTER_SAY) 
		player:addItem(19082, 1) 
	elseif player:getStorageValue(4591046545004) == 15 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 16) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a craft token!", TALKTYPE_MONSTER_SAY) 
		player:addItem(22723, 1) 
	elseif player:getStorageValue(4591046545004) == 16 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 17) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 15 prey wildcards!", TALKTYPE_MONSTER_SAY) 
		player:addPreyCards(15)
	elseif player:getStorageValue(4591046545004) == 17 and player:getStorageValue(4591046545005) <= os.time() then 
				local message18 = "BATTLEPASS: " .. player:getName() .. " wins a primal bag today."
					Game.broadcastMessage(message18, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 18) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a primal bag!", TALKTYPE_MONSTER_SAY) 
		player:addItem(39546, 1) 
	elseif player:getStorageValue(4591046545004) == 18 and player:getStorageValue(4591046545005) <= os.time() then 
				local message19 = "BATTLEPASS: " .. player:getName() .. " wins a tier hammer today."
					Game.broadcastMessage(message19, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 19) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a tier hammer!", TALKTYPE_MONSTER_SAY) 
		player:addItem(37171, 1) 
	elseif player:getStorageValue(4591046545004) == 19 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 20) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 10 dust tokens!", TALKTYPE_MONSTER_SAY) 
		player:addItem(22720, 10) 
	elseif player:getStorageValue(4591046545004) == 20 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 21) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 15 prey wildcards!", TALKTYPE_MONSTER_SAY) 
		player:addPreyCards(15)
	elseif player:getStorageValue(4591046545004) == 21 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 22) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned x2 roulette coins!", TALKTYPE_MONSTER_SAY) 
		player:addItem(19082, 2) 
	elseif player:getStorageValue(4591046545004) == 22 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 23) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 15 prey wildcards!", TALKTYPE_MONSTER_SAY) 
		player:addPreyCards(15)
	elseif player:getStorageValue(4591046545004) == 23 and player:getStorageValue(4591046545005) <= os.time() then 
				local message24 = "BATTLEPASS: " .. player:getName() .. " wins a bag you desire today."
					Game.broadcastMessage(message24, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 24) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a bag you desire!", TALKTYPE_MONSTER_SAY) 
		player:addItem(34109, 1) 
	elseif player:getStorageValue(4591046545004) == 24 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 25) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned 10 dust tokens!", TALKTYPE_MONSTER_SAY) 
		player:addItem(22720, 10) 
	elseif player:getStorageValue(4591046545004) == 25 and player:getStorageValue(4591046545005) <= os.time() then 
				local message26 = "BATTLEPASS: " .. player:getName() .. " wins a primal bag today."
					Game.broadcastMessage(message26, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 26) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a primal bag!", TALKTYPE_MONSTER_SAY) 
		player:addItem(39546, 1) 
	elseif player:getStorageValue(4591046545004) == 26 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 27) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a craft token!", TALKTYPE_MONSTER_SAY) 
		player:addItem(22723, 1) 
	elseif player:getStorageValue(4591046545004) == 27 and player:getStorageValue(4591046545005) <= os.time() then 
				local message28 = "BATTLEPASS: " .. player:getName() .. " wins a tier hammer today."
					Game.broadcastMessage(message28, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, 28) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned a tier hammer!", TALKTYPE_MONSTER_SAY) 
		player:addItem(37171, 1) 
	elseif player:getStorageValue(4591046545004) == 28 and player:getStorageValue(4591046545005) <= os.time() then 
		player:setStorageValue(4591046545004, 29) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You earned x2 roulette coins!", TALKTYPE_MONSTER_SAY) 
		player:addItem(19082, 2) 
	elseif player:getStorageValue(4591046545004) == 29 and player:getStorageValue(4591046545005) <= os.time() then 
				local message28 = "BATTLEPASS: " .. player:getName() .. " finished battlepass and won a bag you covet today."
					Game.broadcastMessage(message28, MESSAGE_GAME_HIGHLIGHT)	
		player:setStorageValue(4591046545004, -1) -- Atualiza o índice da recompensa 
		player:setStorageValue(4591046545005, os.time() + 72000) -- Cooldown de 20 horas 
		player:say("You finished battlepass and earned a bag you covet! Feel free to buy another one!", TALKTYPE_MONSTER_SAY) 
		player:addItem(43895, 1) 
		item:remove(1)
	else
		player:say("You have to wait until  ".. os.date('%d/%m/%Y - %H:%M:%S', player:getStorageValue(4591046545005)) .." to claim it again!", TALKTYPE_MONSTER_SAY)
	end	
	end 

battlepass:id(48578) -- ID do item
battlepass:register()