local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ICEATTACK)
combat:setArea(createCombatArea(AREA_CIRCLE5X5V2))

function onGetFormulaValues(player, level, maglevel)
local min = (level / 6) + ((10 * maglevel)) * 1.71
local max = (level / 6) + ((10 * maglevel)) * 2.07
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	local grade = creature:revelationStageWOD("Twin Burst")
	if grade == 0 then
		creature:sendCancelMessage("You need to learn this spell first")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	return combat:execute(creature, var)
end

spell:group("attack", "burstsofnature")
spell:id(262)
spell:name("Ice Burst")
spell:words("exevo ulus frigo")
spell:castSound(SOUND_EFFECT_TYPE_SPELL_ETERNAL_WINTER)
spell:level(300)
spell:mana(230)
spell:isPremium(true)
spell:isSelfTarget(true)
spell:cooldown(22 * 1000) --
spell:groupCooldown(2 * 1000, 2 * 1000) --22
spell:needLearn(true)
spell:vocation("druid;true", "elder druid;true")
spell:register()
