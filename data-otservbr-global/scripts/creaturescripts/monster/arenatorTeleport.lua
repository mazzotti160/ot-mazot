local position = {
    [1] = { pos = { x = 31860, y = 32276 } },
    [2] = { pos = { x = 31870, y = 32276 } },
    [3] = { pos = { x = 31870, y = 32282 } },
    [4] = { pos = { x = 31860, y = 32282 } },
    [5] = { pos = { x = 31865, y = 32279 } },
    [6] = { pos = { x = 31872, y = 32279 } },
    [7] = { pos = { x = 31858, y = 32279 } },
}

local arenatorTeleport = CreatureEvent("arenatorTeleport")
function arenatorTeleport.onThink(creature)
    local chance = math.random(1, 100)
    if chance < 7 then
        for _, spec in pairs(Game.getSpectators(creature:getPosition(), false, true, 20, 20, 20, 20)) do
            if spec:isPlayer() then
                local spawn = position[math.random(#position)]
                spawn.pos.z = spec:getPosition().z
                spec:teleportTo(spawn.pos)
                spec:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
            end
        end
        return true
    end
end

arenatorTeleport:register()