--farmine sand --> falcon bastion
local config = {
    minLevel = 1,
    firstPosition = Position(33345, 31347, 7) --(33345, 31347, 7)
}

local treePass = Action();

function treePass.onUse(player, item, fromPosition, target, toPosition, isHotkey)
            player:teleportTo(config.firstPosition)
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return true
end

treePass:position({ x = 33328, y = 31351, z = 7 }) --(33328, 31351, 7)
treePass:register()

--falcon bastion --> farmine sand
local config = {
    minLevel = 1,
    firstPosition = Position(33327, 31351, 7) --(33327, 31351, 7)
}

local treePass = Action();

function treePass.onUse(player, item, fromPosition, target, toPosition, isHotkey)
            player:teleportTo(config.firstPosition)
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return true
end

treePass:position({ x = 33344, y = 31348, z = 7 }) --(33344, 31348, 7)
treePass:register()

--falcon bastion --> miniboss ilha
local config = {
    minLevel = 1,
    firstPosition = Position(33382, 31293, 7) --(33374, 31309, 7)
}

local treePass = Action();

function treePass.onUse(player, item, fromPosition, target, toPosition, isHotkey)
            player:teleportTo(config.firstPosition)
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return true
end

treePass:position({ x = 33374, y = 31309, z = 7 }) --(33374, 31309, 7)
treePass:register()

--miniboss ilha --> falcon bastion
local config = {
    minLevel = 1,
    firstPosition = Position(33374, 31310, 7) --(33374, 31309, 7)
}

local treePass = Action();

function treePass.onUse(player, item, fromPosition, target, toPosition, isHotkey)
            player:teleportTo(config.firstPosition)
            player:getPosition():sendMagicEffect(CONST_ME_MAGIC_GREEN)
return true
end

treePass:position({ x = 33381, y = 31294, z = 7 }) --(33381, 31294, 7)
treePass:register()