local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_HITAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setParameter(COMBAT_PARAM_USECHARGES, 1)

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	local min = (level / 6) + ((10 * skill) + attack) * 0.9
	local max = (level / 6) + ((10 * skill) + attack) * 1.1
	return -min * 0.2 * factor, -max * 0.2 * factor -- TODO : Use New Real Formula instead of an %
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(61)
spell:name("Brutal Strike")
spell:words("exori ico")
spell:castSound(SOUND_EFFECT_TYPE_SPELL_BRUTAL_STRIKE)
spell:level(16)
spell:mana(30)
spell:isPremium(false)
spell:range(1)
spell:needTarget(true)
spell:blockWalls(true)
spell:needWeapon(true)
spell:cooldown(2 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(false)
spell:vocation("knight;true", "elite knight;true")
spell:register()
