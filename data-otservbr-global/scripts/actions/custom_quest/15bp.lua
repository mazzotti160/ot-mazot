local firstQuest = Action()

function firstQuest.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local storage = 4891046545001

    if player:getStorageValue(storage) ~= 1 then
        player:setStorageValue(storage, 1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received a 15 year anniversary backpack.")
        player:addItem(14674) -- jewelled backpack

        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already received your reward.")
        return false
    end
end

--firstQuest:aid(24258)
firstQuest:position({ x = 2250, y = 2237, z = 7 }) --(2250, 2237, 7)
firstQuest:register()


local firstQuest = Action()

function firstQuest.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local storage = 4891046545002

    if player:getStorageValue(storage) ~= 1 then
        player:setStorageValue(storage, 1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received a 20 year anniversary backpack.")
        player:addItem(24395) -- jewelled backpack

        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already received your reward.")
        return false
    end
end

--firstQuest:aid(24258)
firstQuest:position({ x = 2380, y = 2237, z = 7 }) --(2380, 2237, 7)
firstQuest:register()

local firstQuest = Action()

function firstQuest.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local storage = 4891046545003

    if player:getStorageValue(storage) ~= 1 then
        player:setStorageValue(storage, 1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received a 25 year anniversary backpack.")
        player:addItem(39693) -- jewelled backpack

        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already received your reward.")
        return false
    end
end

--firstQuest:aid(24258)
firstQuest:position({ x = 2506, y = 2237, z = 7 }) --(2506, 2237, 7)
firstQuest:register()