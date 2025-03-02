local config = {
    minLevel = 250,
    firstPosition = Position(32814, 32754, 9)
}

local treePass = Action();

function treePass.onUse(player, item, fromPosition, target, toPosition, isHotkey)
            player:teleportTo(config.firstPosition)
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return true
end

treePass:aid(64019)
treePass:register()