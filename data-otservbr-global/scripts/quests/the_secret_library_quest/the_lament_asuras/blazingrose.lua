local config = {
    [49661] = {
        bossName = "The Blazing Rose", -- boss name
        bossPos = Position(32860, 32774, 11), -- Boss Position
        centerPos = Position(32860, 32774, 11), -- Boss Position
        newPos = Position(32860, 32771, 11), -- Where to teleport player when entering the room
        exitPos = Position(32854, 32738, 10), -- Exit outside Position
        rangeX = 6, -- Range in X
        rangeY = 6, -- Range in Y
        time = 10, -- time in minutes to remove the player
    },
    playerPos = Position(32860, 32769, 11), -- Player Position
    bossCooldown = 10 * 3600, -- Boss Cooldown Time
}

local kroazurRoom = MoveEvent()

function kroazurRoom.onStepIn(creature, item, position, fromPosition)
    local player = creature:getPlayer()
    if not player then
        return
    end

    local room = config[item.actionid]
    if not room then
        return
    end

    if player:getPosition() == config.playerPos then
        position:sendMagicEffect(CONST_ME_TELEPORT)
        player:teleportTo(room.exitPos)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        return true
    end
    if not player:canFightBoss(room.bossName) then
        position:sendMagicEffect(CONST_ME_TELEPORT)
        player:teleportTo(fromPosition, true)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        player:say("You have to wait to challenge this enemy again!", TALKTYPE_MONSTER_SAY)
        return true
    end

    if roomIsOccupied(room.bossPos, false, room.rangeX, room.rangeY) then
        position:sendMagicEffect(CONST_ME_TELEPORT)
        player:teleportTo(fromPosition, true)
        player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
        player:say("Someone is fighting against the boss! You need wait awhile.", TALKTYPE_MONSTER_SAY)
        return true
    end

    clearRoom(room.bossPos, room.rangeX, room.rangeY)
    local monster = Game.createMonster(room.bossName, room.bossPos, true, true)
    if not monster then
        return true
    end

    position:sendMagicEffect(CONST_ME_TELEPORT)
    player:teleportTo(room.newPos)
    player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
    player:say("You have ten minutes to kill and loot this boss, else you will lose that chance and will be kicked out.", TALKTYPE_MONSTER_SAY)
    addEvent(clearBossRoom, 60 * room.time * 1000, player.uid, room.centerPos, false, room.rangeX, room.rangeY, room.exitPos)
    player:setBossCooldown(room.bossName, os.time() + config.bossCooldown)
    return true
end

kroazurRoom:type("stepin")
kroazurRoom:aid(49661)
kroazurRoom:register()
