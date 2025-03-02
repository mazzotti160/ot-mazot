local config = {
    presentId = 2856,
    leftFromPos1 = {x = 31821, y = 32443, z = 7},
    leftToPos2 = {x = 31826, y = 32452, z = 7},
    midFromPos1 = {x = 31827, y = 32443, z = 7},
    midToPos2 = {x = 31829, y = 32445, z = 7},
    rightFromPos1 = {x = 31830, y = 32443, z = 7},
    rightToPos2 = {x = 31835, y = 32452, z = 7}
}

local teleportPosition = nil

local function createTeleport(tpPos, tpDestination, tpId)
    local teleport = Game.createItem(tpId, 1, tpPos)
    if teleport then
        teleport:setDestination(tpDestination)
        teleportPosition = tpPos
        Game.broadcastMessage("[ EVENT ] : Backpack event opened! Teleport located in events room.", MESSAGE_GAME_HIGHLIGHT)
        return true, teleport
    end
    return false, nil
end

local function removeTeleport()
    if teleportPosition then
        local tile = Tile(teleportPosition)
        if tile then
            local teleport = tile:getItemById(23483) -- Certifique-se de usar o ID do item correto
            if teleport then
                teleport:remove()
                teleportPosition = nil
                Game.broadcastMessage("[ EVENT ] : Backpack event teleport has closed. The event is now inaccessible.", MESSAGE_GAME_HIGHLIGHT)
            else
                print("[ ERRO ] : Teleporte não encontrado no local especificado.")
            end
        else
            print("[ ERRO ] : Tile não encontrado no local especificado.")
        end
    else
        print("[ ERRO ] : Não há teleporte ativo para remover.")
    end
end

local function addPresents(fromPos, toPos, itemId)
    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local pos = Position(x, y, fromPos.z)
            Game.createItem(itemId, 1, pos)
        end
    end
end

local function removePresents(fromPos, toPos, itemId)
    for x = fromPos.x, toPos.x do
        for y = fromPos.y, toPos.y do
            local pos = Position(x, y, fromPos.z)
            local tile = Tile(pos)
            if tile then
                local item = tile:getItemById(itemId)
                while item do
                    item:remove()
                    item = tile:getItemById(itemId)
                end
            end
        end
    end
end

local function initiateBackpackEvent()
    local tpPos = Position(32394, 32191, 7)
    local tpDestination = Position(31813, 32459, 7)
    local tpId = 23483

    local teleportCreated, teleport = createTeleport(tpPos, tpDestination, tpId)
    if teleportCreated then
        print("[ EVENT ] : BP evento começou. Teleporte criado.")

        -- Adicionar presentes nas áreas definidas
        addPresents(config.leftFromPos1, config.leftToPos2, config.presentId)
        addPresents(config.midFromPos1, config.midToPos2, config.presentId)
        addPresents(config.rightFromPos1, config.rightToPos2, config.presentId)
    end
end

local function resetPresents()
    -- Remover presentes
    removePresents(config.leftFromPos1, config.leftToPos2, config.presentId)
    removePresents(config.midFromPos1, config.midToPos2, config.presentId)
    removePresents(config.rightFromPos1, config.rightToPos2, config.presentId)
    
    -- Atraso de 1 segundo
    local delay = 1000
    addEvent(function()
        -- Re-adicionar presentes
        addPresents(config.leftFromPos1, config.leftToPos2, config.presentId)
        addPresents(config.midFromPos1, config.midToPos2, config.presentId)
        addPresents(config.rightFromPos1, config.rightToPos2, config.presentId)

        print("Presentes removidos e readicionados.")
    end, delay)
end

local function stopBackpackEvent()
    removeTeleport()

    -- Remover presentes
    removePresents(config.leftFromPos1, config.leftToPos2, config.presentId)
    removePresents(config.midFromPos1, config.midToPos2, config.presentId)
    removePresents(config.rightFromPos1, config.rightToPos2, config.presentId)
end

local talk = TalkAction("/bpevent")

function talk.onSay(player, words, param)
    if not player:getGroup():getAccess() or player:getAccountType() < ACCOUNT_TYPE_GAMEMASTER then
        return false
    end

    if param == "on" then
        initiateBackpackEvent()
    elseif param == "off" then
        stopBackpackEvent()
    elseif param == "reset" then
        resetPresents()
    end
    return false
end

talk:separator(" ")
talk:groupType("god")
talk:register()
