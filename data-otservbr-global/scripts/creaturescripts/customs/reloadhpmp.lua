local reloadhpmp = TalkAction("!reloadhpmp")
local storagecooldown = 554591046545002

local condition = Condition(CONDITION_ATTRIBUTES)
condition:setParameter(CONDITION_PARAM_TICKS, -1)
condition:setParameter(CONDITION_PARAM_STAT_MAXMANAPOINTSPERCENT, 200)
condition:setParameter(CONDITION_PARAM_STAT_MAXHITPOINTSPERCENT, 200)

function reloadhpmp.onSay(player, words, param)
	if player:getStorageValue(storagecooldown) <= os.time() then
		if player:getStorageValue(4591046545002) >= os.time() then  
			player:removeCondition(condition)	
			player:addCondition(condition)	
			player:setStorageValue(storagecooldown, os.time() + 120)
		else
			player:sendCancelMessage("You do not have active hpmp boost.")
		end
	else
	player:sendCancelMessage("Wait 2 mins cooldown to use this command again.")
	return true
	end
end

reloadhpmp:groupType("normal")
reloadhpmp:register()
