local config = {
    spectatorCenter = Position(32368, 32235, 2),
    spectatorRadius = {
        x = 6,
        y = 6,
    },
}

local function checkForNonPlayerCreatures()
    local creatures = Game.getSpectators(config.spectatorCenter, false, false, config.spectatorRadius.x, config.spectatorRadius.y, config.spectatorRadius.x, config.spectatorRadius.y)
    local creatureCount = 0

    for _, creature in ipairs(creatures) do
        if not creature:isPlayer() then
            creatureCount = creatureCount + 1
        end
    end

    if creatureCount > 0 then
        print("Existem " .. creatureCount .. " criaturas presentes na área (excluindo jogadores).")
    else
        print("Não existem criaturas presentes na área (excluindo jogadores).")
    end
end

local checkMonstersAction = Action()
function checkMonstersAction.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    checkForNonPlayerCreatures()
    return true
end

checkMonstersAction:aid(30302)
checkMonstersAction:register()
