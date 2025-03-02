local configGlobal = {
    time = 20 * 60,
    testmode = true,
    maxTime = 23 * 60,
    exitPos = Position(32216, 32209, 7),
    level = 100,
    Storagetime = 4535656514001,
    Timer = 20 * 60 * 60 * 1000,
    needPos = {
        [1] = Position(32218, 32207, 7),
        [2] = Position(32218, 32208, 7),
        [3] = Position(32218, 32209, 7),
        [4] = Position(32218, 32210, 7),
        [5] = Position(32218, 32211, 7)
    }
}

local function createDungeonConfig(z)
    return {
        dungeonPos = Position(31865, 32279, z),
        fromPos = {x = 31854, y = 32271, z = z},
        toPos = {x = 31875, y = 32287, z = z},
        bossPos = {x = 31860, y = 32276, z = z},
        centerPosition = Position(31865, 32279, z),
        spawnArea = {x = 10, y = 10},
    }
end

local configs = {}
for z = 0, 15 do
    table.insert(configs, createDungeonConfig(z))
end

local function removeMonsters(config)
    local spectators = Game.getSpectators(config.centerPosition, false, false, config.spawnArea.x, config.spawnArea.x, config.spawnArea.y, config.spawnArea.y)
    for _, spectator in pairs(spectators) do
        if spectator:isMonster() then
            spectator:remove()
        end
    end
end

local guildDungeonLever = Action()

local function isDungeonOccupied(config)
    local players = {}
    for x = config.fromPos.x, config.toPos.x do
        for y = config.fromPos.y, config.toPos.y do
            for z = config.fromPos.z, config.toPos.z do
                local tile = Tile(x, y, z)
                local creature = tile:getTopCreature()
                if creature and creature:isPlayer() then
                    players[#players + 1] = creature
                end
            end
        end
    end
    return #players > 0
end

local function summonBoss(name, centerPosition, z)
    local bossPosX = math.random(centerPosition.x - 4, centerPosition.x + 4)
    local bossPosY = math.random(centerPosition.y - 4, centerPosition.y + 4)
    local bossPos = Position(bossPosX, bossPosY, z)
    
    Game.createMonster(name, bossPos)
    bossPos:sendMagicEffect(CONST_ME_TELEPORT)
end

local function getMonstersForWave(wave)
    local hellflayers, vexclaws, grimeleechs = 4, 4, 4
    local monsters = {}

    for i = 1, hellflayers do
        table.insert(monsters, "hellflayer" .. wave)
    end

    for i = 1, vexclaws do
        table.insert(monsters, "vexclaw" .. wave)
    end

    for i = 1, grimeleechs do
        table.insert(monsters, "grimeleech" .. wave)
    end

    return monsters
end

local function checkForNonPlayerCreatures(config, z)
    local creatures = Game.getSpectators(Position(config.centerPosition.x, config.centerPosition.y, z), false, false, config.spawnArea.x, config.spawnArea.y, config.spawnArea.x, config.spawnArea.y)
    local creatureCount = 0
    local creatureNames = ""

    for _, creature in ipairs(creatures) do
        if not creature:isPlayer() then
            creatureCount = creatureCount + 1
            creatureNames = creatureNames .. creature:getName() .. ", "
        end
    end

    return creatureCount, creatureNames
end

local function updatePlayerStorage(config, z)
    local players = Game.getSpectators(config.centerPosition, false, true, config.spawnArea.x, config.spawnArea.x, config.spawnArea.y, config.spawnArea.y)
    for _, player in pairs(players) do
        local storageValue = player:getStorageValue(453565651409)
        player:setStorageValue(453565651409, storageValue + 1)
    end
end

local function waitAndCheckWaveCompletion(wave, config, z, eventId)
    addEvent(function() checkWaveCompletion(wave, config, z, eventId) end, 2000)
end

function checkWaveCompletion(wave, config, z, eventId)
    local creatureCount, creatureNames = checkForNonPlayerCreatures(config, z)
    local players = Game.getSpectators(config.centerPosition, false, true, config.spawnArea.x, config.spawnArea.x, config.spawnArea.y, config.spawnArea.y)

    if #players == 0 then
        --print("Nenhum jogador na sala. Cancelando evento e removendo monstros.")
        removeMonsters(config)
        stopEvent(eventId)
        return
    end

    if creatureCount == 0 then
        updatePlayerStorage(config, z)  -- Aqui é onde a atualização do storage ocorre

        -- Adicionando a mensagem para os jogadores
        for _, player in pairs(players) do
            local storageValue = player:getStorageValue(453565651409)
            player:say("Wave " .. wave .. " finished, starting wave " .. (wave + 1) .. ".", TALKTYPE_MONSTER_YELL)
            player:setStorageValue(4535656514002, os.time() + 60)
        end

        --print("Todos os monstros da Wave " .. wave .. " foram mortos. Iniciando próxima wave em 3 segundos.")
        addEvent(function()
            local nextWave = wave + 1
            local monsters = getMonstersForWave(nextWave)
            print("Wave " .. nextWave .. " iniciada: " .. os.date("%X", os.time()))
            for _, monster in ipairs(monsters) do
                summonBoss(monster, config.centerPosition, z)
            end
            waitAndCheckWaveCompletion(nextWave, config, z, eventId)
        end, 3000)
    else
      --  print("Criaturas encontradas: " .. creatureNames .. " Total: " .. creatureCount)
        waitAndCheckWaveCompletion(wave, config, z, eventId)
    end
end

function guildDungeonLever.onUse(player, item, fromPosition, itemEx, toPosition, isHotkey)
    local selectedConfig = nil

    for _, config in ipairs(configs) do
        if not isDungeonOccupied(config) then
            selectedConfig = config
            break
        end
    end

    if not selectedConfig then
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "All dungeons are currently occupied.")
        return true
    end

    if player:getLevel() < configGlobal.level then
        player:getPosition():sendMagicEffect(CONST_ME_POFF)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to be level " .. configGlobal.level .. " or higher.")
        return true
    end

    if not configGlobal.testmode then
        local cooldownEndTime = player:getStorageValue(configGlobal.Storagetime)
        local timeRemaining = cooldownEndTime - os.time()

        if timeRemaining > 0 then
            local hours = math.floor(timeRemaining / 3600)
            local minutes = math.floor((timeRemaining % 3600) / 60)
            local seconds = timeRemaining % 60
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, string.format("You're in cooldown to enter in a dungeon again. Cooldown: %02d hours, %02d minutes, and %02d seconds.", hours, minutes, seconds))
            return true
        end
    end

    removeMonsters(selectedConfig)

    for _, pos in ipairs(configGlobal.needPos) do
        local tile = Tile(pos)
        if tile then
            local creature = tile:getTopCreature()
            if creature and creature:isPlayer() then
                creature:setStorageValue(453565651409, 1)
                creature:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have 30  minutes inside, stay alive!")
                creature:teleportTo(selectedConfig.dungeonPos)
                creature:getPosition():sendMagicEffect(CONST_ME_MAGIC_BLUE)
                creature:setStorageValue(configGlobal.Storagetime, os.time() + (configGlobal.Timer / 1000))
				player:say("Wave 1 started, you have 30 minutes inside, good luck! ", TALKTYPE_MONSTER_YELL)
            end
        end
    end

    print("Wave 1 iniciada: " .. os.date("%X", os.time()))
    local monsters = getMonstersForWave(1)
    local eventId = addEvent(function()
        for _, monster in ipairs(monsters) do
            summonBoss(monster, selectedConfig.centerPosition, selectedConfig.dungeonPos.z)
        end
        waitAndCheckWaveCompletion(1, selectedConfig, selectedConfig.dungeonPos.z, eventId)
    end, 3000)
    
    addEvent(function()
        local playerPos = player:getPosition()
        if playerPos.x >= selectedConfig.fromPos.x and playerPos.x <= selectedConfig.toPos.x and
           playerPos.y >= selectedConfig.fromPos.y and playerPos.y <= selectedConfig.toPos.y and
           playerPos.z == selectedConfig.fromPos.z then
            player:teleportTo(configGlobal.exitPos)
            player:getPosition():sendMagicEffect(CONST_ME_POFF)
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your time inside the dungeon has expired. You have been teleported out!")
        end
    end, configGlobal.maxTime * 1000)

    return true
end

guildDungeonLever:aid(29305)
guildDungeonLever:register()