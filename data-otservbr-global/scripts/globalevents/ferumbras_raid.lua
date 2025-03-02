local bossConfigurations = {
    [1] = { bossName = "Ferumbras", customSpawnPos = Position(32121, 32689, 4) }
}

local config = {
    testMode = false -- Defina como false para o modo normal
}

local teleportPosition = nil
local function getTimeMultiplier()
    return config.testMode and 1000 or 60 * 1000
end

local function createTeleport(tpPos, tpDestination, tpId)
    local teleport = Game.createItem(tpId, 1, tpPos)
    if teleport then
        teleport:setDestination(tpDestination)
        teleportPosition = tpPos
        return true, teleport
    end
    return false, nil
end

local function removeTeleport(teleport)
    if teleport then
        teleport:remove()
        teleportPosition = nil
        Game.broadcastMessage("[ SPECIAL RAID ] : The portal has closed. Ferumbras' citadel is now inaccessible.", MESSAGE_GAME_HIGHLIGHT)
    end
end

local function startBossRoom(selectedBoss)
    if selectedBoss.bossName then
        local spawnPos = selectedBoss.customSpawnPos
        local spawnedBoss = Game.createMonster(selectedBoss.bossName, spawnPos, true, true)
        if spawnedBoss then
            Game.broadcastMessage("[ SPECIAL RAID ] : Ferumbras has returned to his citadel once more. Stop him before it's too late!", MESSAGE_GAME_HIGHLIGHT)
        end
    end
end

local function startCountdownMessages(boss)
    local timeMultiplier = getTimeMultiplier()

    -- Mensagens específicas
    Game.broadcastMessage("[ SPECIAL RAID ] : The seals on Ferumbras' old citadel are glowing. Prepare for HIS return mortals. A portal is opened in Thais Temple. 20 mins left until invasion.", MESSAGE_GAME_HIGHLIGHT)
    
    addEvent(function()
        Game.broadcastMessage("[ SPECIAL RAID ] : Ferumbras' return is at hand. The Edron Academy calls for Heroes to fight that evil. A portal remains opened in Thais Temple. 10 mins left until invasion.", MESSAGE_GAME_HIGHLIGHT)
    end, 10 * timeMultiplier)

    addEvent(function()
        Game.broadcastMessage("[ SPECIAL RAID ] : Prepare yourself, Ferumbras returns in 5 minutes! A portal remains opened in Thais Temple. 5 minutes left until invasion.", MESSAGE_GAME_HIGHLIGHT)
    end, 15 * timeMultiplier)
    
    -- Mensagens de contagem regressiva a cada minuto
    addEvent(function() Game.broadcastMessage("[ SPECIAL RAID ] : 4 minutes left until " .. boss.bossName .. " special raid! Teleport opened in Thais Temple!", MESSAGE_GAME_HIGHLIGHT) end, 16 * timeMultiplier)
    addEvent(function() Game.broadcastMessage("[ SPECIAL RAID ] : 3 minutes left until " .. boss.bossName .. " special raid! Teleport opened in Thais Temple!", MESSAGE_GAME_HIGHLIGHT) end, 17 * timeMultiplier)
    addEvent(function() Game.broadcastMessage("[ SPECIAL RAID ] : 2 minutes left until " .. boss.bossName .. " special raid! Teleport opened in Thais Temple!", MESSAGE_GAME_HIGHLIGHT) end, 18 * timeMultiplier)
    addEvent(function() Game.broadcastMessage("[ SPECIAL RAID ] : 1 minute left until " .. boss.bossName .. " special raid! Teleport opened in Thais Temple!", MESSAGE_GAME_HIGHLIGHT) end, 19 * timeMultiplier)
end

local function initiateSpecialRaid()
    local tpPos = Position(32369, 32234, 7)
    local tpDestination = Position(32116, 32709, 7)
    local tpId = 44027
    local timeMultiplier = getTimeMultiplier()

    local teleportCreated, teleport = createTeleport(tpPos, tpDestination, tpId)
    if teleportCreated then
        local boss = bossConfigurations[1]
        startCountdownMessages(boss)

        addEvent(function()
            startBossRoom(boss)
            print("[ SPECIAL RAID ] : O evento começou. O boss " .. boss.bossName .. " foi gerado.")
        end, 20 * timeMultiplier) -- Atraso de 20 minutos ou 20 segundos dependendo do modo (em milissegundos)

        addEvent(function()
            removeTeleport(teleport)
        end, (140 - 20) * timeMultiplier) -- 2 horas e 20 minutos após a primeira mensagem (em milissegundos)
    end
end

local function FerumbrasRaidOnThink(interval)
    if teleportPosition then
        local spectators = Game.getSpectators(teleportPosition, false, true, 5, 5, 5, 5)
        if #spectators > 0 then
            for i = 1, #spectators do
                spectators[i]:say("Ferumbras Tower", TALKTYPE_MONSTER_SAY, false, spectators[i], teleportPosition)
            end
            teleportPosition:sendMagicEffect(CONST_ME_MAGIC_BLUE)
        end
    end
    return true
end

local talk = TalkAction("/startferumbras")

function talk.onSay(player, words, param)
    if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GAMEMASTER then
        return false
    end

    initiateSpecialRaid()
    return false
end

talk:groupType("god")
talk:register()

textFloat = GlobalEvent("FerumbrasRaid")
textFloat.onThink = FerumbrasRaidOnThink
textFloat:interval(4000) -- Intervalo para a execução da função (em milissegundos)
textFloat:register()
