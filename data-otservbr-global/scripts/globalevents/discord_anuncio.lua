local hourlyMessageEvent = GlobalEvent("Hourly Message Event")

function hourlyMessageEvent.onTime(interval)
    Game.broadcastMessage("[DISCORD] : https://discord.gg/KSCdjjZ9", MESSAGE_GAME_HIGHLIGHT)
    return true
end

-- Define o intervalo para 60 minutos
hourlyMessageEvent:interval(60 * 60 * 1000)
hourlyMessageEvent:register()