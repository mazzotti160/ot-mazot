local statusTime = TalkAction("!attackspeed")

function statusTime.onSay(player, words, param)
    local fist = player:getSkillLevel(skillFist)
    local formula = 2000 - (fist * 5)
    local hitsPerSecond

    if formula <= 200 then
        hitsPerSecond = 1000 / 200
        hitsPerSecond = string.format("%.2f", hitsPerSecond)
        player:say("AtkSpeed: " .. hitsPerSecond .. " hits per second. Congratulations, you reached maximum attackspeed.", TALKTYPE_MONSTER_SAY)
    else
        hitsPerSecond = 1000 / formula
        hitsPerSecond = string.format("%.2f", hitsPerSecond)
        player:say("AtkSpeed: " .. hitsPerSecond .. " hits per second", TALKTYPE_MONSTER_SAY)
    end

    player:getPosition():sendMagicEffect(CONST_ME_REDSMOKE)
    return true
end

statusTime:groupType("normal")
statusTime:register()
