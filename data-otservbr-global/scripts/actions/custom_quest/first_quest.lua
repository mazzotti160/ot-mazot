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

    local vocation = player:getVocation()
    local vocationId = vocation:getId()
    local storage = 4591046545003

    if player:getStorageValue(storage) ~= 1 and player:getFreeCapacity() > 33300 then
        player:setStorageValue(storage, 1)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have received fresh new equipments.")
        local container = player:addItem(5801) -- jewelled backpack
        container:addItem(3725, 25) -- mushroom
        container:addItem(5710, 1) -- light shovel
        container:addItem(3003, 1) -- rope
        container:addItem(3434, 1) -- amp shield
        container:addItem(3079, 1) -- boh
        container:addItem(3385, 1) -- crown helmet
        container:addItem(645, 1) -- blue legs
        container:addItem(3567, 1) -- blue robe
        
        if vocationId == VOCATION_BASE_ID.KNIGHT then
            container:addItem(3305, 1) -- battle hammer
            container:addItem(3316, 1) -- orcish axe
            container:addItem(3271, 1) -- spike sword
        elseif vocationId == VOCATION_BASE_ID.PALADIN then
            container:addItem(3350, 1) -- bow
            container:addItem(35562, 1) -- quiver
            container:addItem(3447, 100) -- 100 arrows
            container:addItem(3277, 1) -- spear
        elseif vocationId == VOCATION_BASE_ID.SORCERER then
            container:addItem(3074, 1) -- wand vortex
        elseif vocationId == VOCATION_BASE_ID.DRUID then
            container:addItem(3066, 1) -- snakebite rod
        end

        return true
	elseif player:getStorageValue(storage) ~= 1 and player:getFreeCapacity() < 33300 then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You should have 333 oz free capacity.")	
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You already received your first items.")
        return false
    end
end

firstQuest:aid(24258)
firstQuest:register()
