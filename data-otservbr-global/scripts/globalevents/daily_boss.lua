local config = {
	monsterName = "Daily Demonlord",
	bossPos = {x = 32258, y = 31957, z = 7},
    time = "19:20:00",
    time2 = "19:26:00",
    time3 = "19:27:00",
    time4 = "19:28:00",
    time5 = "19:29:00",
    time6 = "19:30:00",
    time7 = "20:00:00",
    portalPosition = {x = 32353, y = 32220, z = 7},
    goToPosition = {x = 32258, y = 31958, z = 6},
    broadcast = true,
    text = "Boss diario comecando as 19:30, o teleport foi aberto no depot de Thais e ficara aberto ate as 20:00.",
    text2 = "Boss diario iniciando em 4 minutos, o teleport esta aberto no depot de Thais.",
    text3 = "Boss diario iniciando em 3 minutos, o teleport esta aberto no depot de Thais.",
    text4 = "Boss diario iniciando em 2 minutos, o teleport esta aberto no depot de Thais.",
    text5 = "Boss diario iniciando em 1 minuto, o teleport esta aberto no depot de Thais.",
    text6 = "Boss diario nasceu, FIGHT! ",
    text7 = "O teleport foi fechado.",
}

-- Função para criar o teleport
local portal = GlobalEvent("Portal")
function portal.onTime(interval)
    local item = Game.createItem(44027, 1, config.portalPosition)
    item:setDestination(config.goToPosition)
    if config.broadcast then
        Game.broadcastMessage(config.text, MESSAGE_GAME_HIGHLIGHT)
    end
end
portal:time(config.time)
portal:register()

-- Função para 06:01:00
local portal2 = GlobalEvent("Portal2")
function portal2.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text2, MESSAGE_GAME_HIGHLIGHT)
    end
end
portal2:time(config.time2)
portal2:register()

-- Função para 06:02:00
local portal3 = GlobalEvent("Portal3")
function portal3.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text3, MESSAGE_GAME_HIGHLIGHT)
    end
end
portal3:time(config.time3)
portal3:register()

-- Função para 06:03:00
local portal4 = GlobalEvent("Portal4")
function portal4.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text4, MESSAGE_GAME_HIGHLIGHT)
    end
end
portal4:time(config.time4)
portal4:register()

-- Função para 06:04:00
local portal5 = GlobalEvent("Portal5")
function portal5.onTime(interval)
    if config.broadcast then
        Game.broadcastMessage(config.text5, MESSAGE_GAME_HIGHLIGHT)
    end
end
portal5:time(config.time5)
portal5:register()

-- Função para 06:05:00
-- function spawnar boss
local portal6 = GlobalEvent("Portal6")
function portal6.onTime(interval)
    if config.broadcast then
		Game.createMonster(config.monsterName, config.bossPos)
        Game.broadcastMessage(config.text6, MESSAGE_GAME_HIGHLIGHT)
    end
end
portal6:time(config.time6)
portal6:register()

-- Função para fechar o teleport em 06:08:00
--function remove tp
local portal7 = GlobalEvent("Portal7")
function portal7.onTime(interval)
    local tile = Tile(config.portalPosition)
    if tile then
        local portal = tile:getItemById(44027)
        if portal then
            portal:remove()
        end
    end
    if config.broadcast then
        Game.broadcastMessage(config.text7, MESSAGE_GAME_HIGHLIGHT)
    end
end
portal7:time(config.time7)
portal7:register()
