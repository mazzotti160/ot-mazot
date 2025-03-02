local VOCATION_BASE_ID = {
    SORCERER = 1,
    DRUID = 2,
    PALADIN = 3,
    KNIGHT = 4
}

local firstQuest = Action()

function firstQuest.onUse(creature, item, fromPosition, target, toPosition, isHotkey)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    local storage = 4591046545004

    if player:getStorageValue(storage) ~= 1 then
        player:setStorageValue(storage, 1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received your first items.")
        local container = player:addItem(2854) --backpack
        container:addItem(3725, 25) --mushroom
        container:addItem(3457, 1) --shovel
        container:addItem(3003, 1) --rope
        container:addItem(3272, 1) --rapier

        return true
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already received your first items.")
        return false
    end
end

firstQuest:aid(24265)
firstQuest:register()
