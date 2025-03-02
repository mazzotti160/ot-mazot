local rewards = {
    { id = 36793, count = math.random(2, 10) }, -- abomination tongue
    { id = 25979, name = "Mount Doll" }, -- mount doll
    { id = 8778, name = "Addon Doll" }, -- addon doll
    { id = 25302, name = "Skull Present" }, -- skull present
    { id = 36827, name = "Drome Cube" }, -- drome cube          
}

local graveDangerRoll = Action()

function graveDangerRoll.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    if player:getStorageValue(5548996370265) == 1 then
        local rand = math.random()
        if rand <= 0.05 then
            player:addItem(rewards[4].id, 1) -- Skull Present with 5% chance
            player:say("You have found a " .. rewards[4].name .. ".", TALKTYPE_MONSTER_SAY)
        elseif rand <= 0.25 then
            player:addItem(rewards[5].id, 1) -- Drome Cube with 20% chance
            player:say("You have found a " .. rewards[5].name .. ".", TALKTYPE_MONSTER_SAY)
        else
            if math.random() <= 0.1 then
                local addonMountDoll = math.random(2, 3)
                player:addItem(rewards[addonMountDoll].id, 1) -- Addon Doll or Mount Doll with 10% chance
                player:say("You have found a " .. rewards[addonMountDoll].name .. ".", TALKTYPE_MONSTER_SAY)
            end
        end

        local abominationTongueCount = math.random(5, 50)
        player:addItem(rewards[1].id, abominationTongueCount) -- Abomination Tongue count between 5 and 50
        player:say("You have found " .. abominationTongueCount .. " Abomination Tongues.", TALKTYPE_MONSTER_SAY)

        player:setStorageValue(5548996370265, -1)
        return true
    else
        player:say("You need to kill a boss raid before claiming it.", TALKTYPE_MONSTER_SAY)
        return false
    end
end

graveDangerRoll:position({ x = 33521, y = 32376, z = 11 }) --(33521, 32376, 11)
graveDangerRoll:register()
