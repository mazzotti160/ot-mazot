local testModeCD = false -- Defina como true para ignorar cooldowns
local testModeRmv = false -- Defina como true para não remover o item

local distanceCondition = Condition(CONDITION_ATTRIBUTES)
distanceCondition:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
distanceCondition:setParameter(CONDITION_PARAM_SUBID, AttrSubId_JeanPierreDistance)
distanceCondition:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 12)
distanceCondition:setParameter(CONDITION_PARAM_SKILL_FIST, 24)
distanceCondition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local meleeCondition = Condition(CONDITION_ATTRIBUTES)
meleeCondition:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
meleeCondition:setParameter(CONDITION_PARAM_SUBID, AttrSubId_JeanPierreMelee)
meleeCondition:setParameter(CONDITION_PARAM_SKILL_MELEE, 12)
meleeCondition:setParameter(CONDITION_PARAM_SKILL_FIST, 24)
meleeCondition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local mlevelCondition = Condition(CONDITION_ATTRIBUTES)
mlevelCondition:setParameter(CONDITION_PARAM_TICKS, 10 * 60 * 1000)
mlevelCondition:setParameter(CONDITION_PARAM_SUBID, AttrSubId_JeanPierreMagic)
mlevelCondition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 12)
mlevelCondition:setParameter(CONDITION_PARAM_SKILL_FIST, 24)
mlevelCondition:setParameter(CONDITION_PARAM_BUFF_SPELL, true)

local VOCATION_BASE_ID = {
    SORCERER = 1,
    DRUID = 2,
    PALADIN = 3,
    KNIGHT = 4
}

local lemonCupcake = Action()

function lemonCupcake.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if not testModeCD then
        local remainingTime = player:getExhaustion("lemon-cupcake-cooldown")
        if remainingTime > 0 then
            local minutes = math.floor(remainingTime / 60)
            local seconds = remainingTime % 60
            player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to wait " .. minutes .. " minutes, " .. seconds .. " seconds before using it again.")
            return true
        end
    end

    local vocationId = player:getVocation():getBase():getId()

    if vocationId == VOCATION_BASE_ID.PALADIN then
        player:addCondition(distanceCondition)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your distance skills have been improved by 12 for one hour.")
        player:say("Your distance skills have been improved by 12 for one hour.", TALKTYPE_MONSTER_SAY)
    elseif vocationId == VOCATION_BASE_ID.SORCERER or vocationId == VOCATION_BASE_ID.DRUID then
        player:addCondition(mlevelCondition)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your magic level has been improved by 12 for one hour.")
        player:say("Your magic level has been improved by 12 for one hour.", TALKTYPE_MONSTER_SAY)
    elseif vocationId == VOCATION_BASE_ID.KNIGHT then
        player:addCondition(meleeCondition)
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your melee skills have been improved by 12 for one hour.")
        player:say("Your melee skills have been improved by 12 for one hour.", TALKTYPE_MONSTER_SAY)
    else
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Your vocation cannot use this item.")
        return true
    end

    if not testModeCD then
        player:setExhaustion("lemon-cupcake-cooldown", 10 * 60)
    end
    
    if not testModeRmv then
        item:remove(1)
    end

    return true
end

lemonCupcake:id(28486)
lemonCupcake:register()
