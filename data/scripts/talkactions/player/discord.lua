local vip = TalkAction("!discord", "!dc", "!disc")

function vip.onSay(player, words, param)
    local message = "https://discord.gg/Urx2SHvn"
    player:sendTextMessage(MESSAGE_EVENT_ADVANCE, message)
    return true
end

vip:groupType("normal")
vip:register()