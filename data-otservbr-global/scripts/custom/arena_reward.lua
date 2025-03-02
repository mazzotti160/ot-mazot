local tinderReward = Action()

function tinderReward.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    local storageValue = player:getStorageValue(453565651409)
	local expBase = 1000000 * (storageValue - 1)
	local moneyBase = 35 * (storageValue - 1)
	local charmBase = (storageValue - 1)
    if storageValue <= 1 then
        player:setStorageValue(453565651409, -1) -- 0-60 seconds
        player:say("You have no reward here! Get out!", TALKTYPE_MONSTER_YELL)
    elseif storageValue == 2 then
        player:setStorageValue(453565651409, -1) -- 61-120 seconds
        player:say("Success! Reward collected from wave 1.", TALKTYPE_MONSTER_YELL)
        player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false) --arena badge
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
	--	player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addExperience(expBase, true)
    elseif storageValue == 3 then
        player:setStorageValue(453565651409, -1) -- 121-180 seconds
        player:say("Success! Reward collected from wave 2.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
	--	player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addExperience(expBase, true)
    elseif storageValue == 4 then
        player:setStorageValue(453565651409, -1) -- 181-240 seconds
        player:say("Success! Reward collected from wave 3.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		--player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addExperience(expBase, true)
    elseif storageValue == 5 then
        player:setStorageValue(453565651409, -1) -- 241-300 seconds
        player:say("Success! Reward collected from wave 4.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		--player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addExperience(expBase, true)
    elseif storageValue == 6 then
        player:setStorageValue(453565651409, -1) -- 301-361 seconds
        player:say("Success! Reward collected from wave 5.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 1), true, false) --forge token	
		player:addExperience(expBase, true)
    elseif storageValue == 7 then
        player:setStorageValue(453565651409, -1) -- 421-480 seconds
        player:say("Success! Reward collected from wave 6.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 1), true, false) --forge token		
		player:addExperience(expBase, true)
    elseif storageValue == 8 then
        player:setStorageValue(453565651409, -1) -- 481-540 seconds
        player:say("Success! Reward collected from wave 7.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 1), true, false) --forge token		
		player:addExperience(expBase, true)
    elseif storageValue == 9 then
        player:setStorageValue(453565651409, -1) -- 541-600 seconds
        player:say("Success! Reward collected from wave 8.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token		
		player:addExperience(expBase, true)
    elseif storageValue == 10 then
        player:setStorageValue(453565651409, -1) -- 601-660 seconds
        player:say("Success! Reward collected from wave 9.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 1), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token			
		player:addExperience(expBase, true)
    elseif storageValue == 11 then
        player:setStorageValue(453565651409, -1) -- 661-720 seconds
        player:say("Success! Reward collected from wave 10.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token			
		player:addExperience(expBase, true)
    elseif storageValue == 12 then
        player:setStorageValue(453565651409, -1) -- 721-780 seconds
        player:say("Success! Reward collected from wave 11.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token			
		player:addExperience(expBase, true)
    elseif storageValue == 13 then
        player:setStorageValue(453565651409, -1) -- 781-840 seconds
        player:say("Success! Reward collected from wave 12.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token			
		player:addExperience(expBase, true)
    elseif storageValue == 14 then
        player:setStorageValue(453565651409, -1) -- 841-900 seconds
        player:say("Success! Reward collected from wave 13.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token		
		player:addExperience(expBase, true)
    elseif storageValue == 15 then
        player:setStorageValue(453565651409, -1) -- 901-960 seconds
        player:say("Success! Reward collected from wave 14.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token	
		player:addExperience(expBase, true)
    elseif storageValue == 16 then
        player:setStorageValue(453565651409, -1) -- 1021-1080 seconds
        player:say("Success! Reward collected from wave 15.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token	
		player:addExperience(expBase, true)
    elseif storageValue == 17 then
        player:setStorageValue(453565651409, -1) -- 1081-1140 seconds
        player:say("Success! Reward collected from wave 16.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token	
		player:addExperience(expBase, true)
    elseif storageValue == 18 then
        player:setStorageValue(453565651409, -1) -- 1141-1220 seconds
        player:say("Success! Reward collected from wave 17.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token	
		player:addExperience(expBase, true)
    elseif storageValue == 19 then
        player:setStorageValue(453565651409, -1) -- 1221-1280 seconds
        player:say("Success! Reward collected from wave 18.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token	
		player:addExperience(expBase, true)
    elseif storageValue == 20 then
        player:setStorageValue(453565651409, -1) -- 1281-1240 seconds
        player:say("Success! Reward collected from wave 19.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addItemStoreInboxEx(Game.createItem(22720, 2), true, false) --forge token	
		player:addExperience(expBase, true)
    elseif storageValue >= 21 then
        player:setStorageValue(453565651409, -1) -- 1241-1300 seconds
        player:say("Success! Reward collected from wave 20 or higher.", TALKTYPE_MONSTER_YELL)
		player:addItemStoreInboxEx(Game.createItem(23487, storageValue - 1), true, false)
		player:addItemStoreInboxEx(Game.createItem(3043, moneyBase), true, false) --crystal coin
		player:addItemStoreInboxEx(Game.createItem(3215, charmBase), true, false) --charm points
		player:addItemStoreInboxEx(Game.createItem(36827, 2), true, false) --drome cube
		player:addExperience(expBase, true)
    end
end

tinderReward:aid(24263)
tinderReward:register()
