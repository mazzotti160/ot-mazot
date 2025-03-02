local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ETHEREALSPEAR)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	local min = (level / 6) + ((10 * skill) + (attack - 78) * 0.9)
	local max = (level / 6) + ((10 * skill) + (attack - 78) * 1.1)
	return -min * 0.61 * factor + (2 * attack - 78), -max * 0.71 * factor + (3 * attack - 78) -- TODO : Use New Real Formula instead of an %
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(57)
spell:name("Strong Ethereal Spear")
spell:words("exori gran con")
spell:castSound(SOUND_EFFECT_TYPE_SPELL_OR_RUNE)
spell:impactSound(SOUND_EFFECT_TYPE_SPELL_STRONG_ETHEREAL_SPEAR)
spell:level(90)
spell:mana(55)
spell:isPremium(true)
spell:range(7)
spell:needTarget(true)
spell:blockWalls(true)
spell:cooldown(8 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("paladin;true", "royal paladin;true")
spell:register()
