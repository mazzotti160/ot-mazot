local rouletteLever = Action()

local function handleWave(spec)
    local storageValue = spec:getStorageValue(453565651409)
    spec:setStorageValue(453565651409, storageValue + 1)
    spec:say("Wave " .. storageValue .. " finished, starting wave " .. (storageValue + 1) .. ".", TALKTYPE_MONSTER_YELL)
    spec:setStorageValue(4535656514002, os.time() + 60)
end

function rouletteLever.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    for _, spec in pairs(Game.getSpectators(player:getPosition(), false, true, 20, 20, 20, 20)) do
        if spec:isPlayer() then
            if spec:getStorageValue(4535656514002) <= os.time() then
                handleWave(spec)
            else
                local remainingTime = spec:getStorageValue(4535656514002) - os.time()
                spec:say("You have to wait " .. remainingTime .. " seconds to pull the lever again!", TALKTYPE_MONSTER_SAY)
            end
        end
    end
    return false
end

rouletteLever:aid(29306)
rouletteLever:register()
