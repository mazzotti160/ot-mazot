local distanceCondition = Condition(CONDITION_ATTRIBUTES)
distanceCondition:setParameter(CONDITION_PARAM_BUFF_SPELL, 1)
distanceCondition:setParameter(CONDITION_PARAM_TICKS, 60 * 60 * 1000)
distanceCondition:setParameter(CONDITION_PARAM_SKILL_DISTANCE, 12)
distanceCondition:setParameter(CONDITION_PARAM_FORCEUPDATE, true)

local meleeCondition = Condition(CONDITION_ATTRIBUTES)
meleeCondition:setParameter(CONDITION_PARAM_BUFF_SPELL, 1)
meleeCondition:setParameter(CONDITION_PARAM_TICKS, 60 * 60 * 1000)
meleeCondition:setParameter(CONDITION_PARAM_SKILL_MELEE, 12)
meleeCondition:setParameter(CONDITION_PARAM_FORCEUPDATE, true)

local mlevelCondition = Condition(CONDITION_ATTRIBUTES)
mlevelCondition:setParameter(CONDITION_PARAM_BUFF_SPELL, 1)
mlevelCondition:setParameter(CONDITION_PARAM_TICKS, 60 * 60 * 1000)
mlevelCondition:setParameter(CONDITION_PARAM_STAT_MAGICPOINTS, 12)
mlevelCondition:setParameter(CONDITION_PARAM_FORCEUPDATE, true)

local VOCATION_BASE_ID = {
    SORCERER = 1,
    DRUID = 2,
    PALADIN = 3,
    KNIGHT = 4
}

local lemonCupcake = Action()

function lemonCupcake.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    if player:hasExhaustion("lemon-cupcake-cooldown") then
        player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to wait before using it again.")
        return true
    end

    local vocationId = player:getVocation():getBase():getId() -- Obtendo a vocação corretamente

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

    --player:say("Mmmm.", TALKTYPE_MONSTER_SAY)
    player:setExhaustion("lemon-cupcake-cooldown", 10 * 60)
    item:remove(1)

    return true
end

lemonCupcake:id(28486)
lemonCupcake:register()
