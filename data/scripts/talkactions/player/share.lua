local statusTime = TalkAction("!share")

function statusTime.onSay(player, words, param)
    local level = player:getLevel()
    local levelmin = math.floor(level * 0.67)
    local levelmax = math.floor(level * 1.5)
    
    player:say("Min level: " .. levelmin .. ", max level:  " .. levelmax .. "., ", TALKTYPE_MONSTER_SAY)	
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    
    return true
end

statusTime:groupType("normal")
statusTime:register()

local statusTime = TalkAction("!shared")

function statusTime.onSay(player, words, param)
    local level = player:getLevel()
    local levelmin = math.floor(level * 0.67)
    local levelmax = math.floor(level * 1.5)
    
    player:say("Min level: " .. levelmin .. ", max level:  " .. levelmax .. "., ", TALKTYPE_MONSTER_SAY)	
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    
    return true
end

statusTime:groupType("normal")
statusTime:register()

local statusTime = TalkAction("!expparty")

function statusTime.onSay(player, words, param)
    local level = player:getLevel()
    local levelmin = math.floor(level * 0.67)
    local levelmax = math.floor(level * 1.5)
    
    player:say("Min level: " .. levelmin .. ", max level:  " .. levelmax .. "., ", TALKTYPE_MONSTER_SAY)	
    player:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
    
    return true
end

statusTime:groupType("normal")
statusTime:register()