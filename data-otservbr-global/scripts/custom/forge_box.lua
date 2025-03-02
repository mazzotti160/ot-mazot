local rewards = {
    { id = 37110, minCount = 1, maxCount = 5, name = "exalted core" },
    { id = 37160, minCount = 1, maxCount = 5, name = "dust container" },
    { id = 37160, minCount = 1, maxCount = 5, name = "dust container" },	
    { id = 37109, minCount = 5, maxCount = 30, name = "sliver" },
}

local bagyouDesire = Action()

function bagyouDesire.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not player then
        return false
    end
    
    local randId = math.random(1, #rewards)
    local rewardItem = rewards[randId]
    local count = math.random(rewardItem.minCount, rewardItem.maxCount)

    player:addItem(rewardItem.id, count)
    item:remove(1)

    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received " .. count .. " " .. rewardItem.name .. (count > 1 and "s" or "") .. ".")
    
    local message = "O Player: " .. player:getName() .. " abriu uma bag you desire e encontrou " .. count .. " " .. rewardItem.name .. (count > 1 and "s" or "") .. "."
    return true
end

bagyouDesire:id(22720)
bagyouDesire:register()