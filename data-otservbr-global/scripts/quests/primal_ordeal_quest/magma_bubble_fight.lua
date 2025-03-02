local config = {
    bossPos = Position(33654, 32909, 15),
    timeToLeftAfterKill = 60,
}

local bossZone = Zone("boss.magma-bubble")
local spawnZone = Zone("fight.magma-bubble.spawn")

-- central area where the boss spawns
spawnZone:addArea({ x = 33647, y = 32900, z = 15 }, { x = 33659, y = 32913, z = 15 })

local encounter = Encounter("Magma Bubble", {
    zone = bossZone,
    spawnZone = spawnZone,
    timeToSpawnMonsters = "1s",
})

--function encounter:onReset(position)
    --encounter:removeMonsters()
    --bossZone:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("The Magma Bubble has been defeated. You have %i seconds to leave the room.", config.timeToLeftAfterKill))
    --self:addEvent(function(zn)
    --    zn:refresh()
    --    zn:removePlayers()
    --end, config.timeToLeftAfterKill * 1000, bossZone)
--end

encounter:addRemoveMonsters():autoAdvance()
encounter:addBroadcast("You've entered the volcano. Prepare yourself!"):autoAdvance("3s")

encounter
    :addSpawnMonsters({
        {
            name = "Magma Bubble",
            event = "fight.magma-bubble.MagmaBubbleDeath",
            positions = { config.bossPos },
        },
    })
    :autoAdvance("10s")

encounter:register()

local magmaBubbleDeath = CreatureEvent("fight.magma-bubble.MagmaBubbleDeath")
function magmaBubbleDeath.onDeath()
    encounter:reset()
end

magmaBubbleDeath:register()

local zoneEvent = ZoneEvent(bossZone)
function zoneEvent.afterEnter(_zone, creature)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    player:setIcon("magma-bubble", CreatureIconCategory_Quests, CreatureIconQuests_GreenShield, 0)
end

function zoneEvent.afterLeave(_zone, creature)
    local player = creature:getPlayer()
    if not player then
        return false
    end

    player:removeIcon("magma-bubble")
end

zoneEvent:register()