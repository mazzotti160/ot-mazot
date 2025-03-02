local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_WEAPONTYPE)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)

function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	local min = (level / 6) + ((10 * skill) + attack) * 0.9
	local max = (level / 6) + ((10 * skill) + attack) * 1.1
	return -min * 2.0 * factor, -max * 2.0 * factor -- TODO : Use New Real Formula instead of an %
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")

function getChainValue(creature)
	local grade = creature:revelationStageWOD("Executioner's Throw")
	if grade == 0 then
		return false
	end

	local bounces = 0
	if grade >= 3 then
		bounces = 4
	elseif grade >= 2 then
		bounces = 3
	elseif grade >= 1 then
		bounces = 2
	end

	return bounces + 1, 3, false
end

combat:setCallback(CALLBACK_PARAM_CHAINVALUE, "getChainValue")

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	if not creature or not creature:isPlayer() then
		return false
	end

	local grade = creature:revelationStageWOD("Executioner's Throw")
	if grade == 0 then
		creature:sendCancelMessage("You need to learn this spell first")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end
	return combat:execute(creature, var)
end

spell:group("attack")
spell:id(261)
spell:name("Executioner's Throw")
spell:words("exori amp kor")
spell:level(300)
spell:mana(225)
spell:isPremium(true)
spell:range(5)
spell:needTarget(true)
spell:blockWalls(true)
spell:needWeapon(true)
spell:cooldown(18 * 1000)
spell:groupCooldown(2 * 1000)
spell:needLearn(true)
spell:vocation("knight;true", "elite knight;true")
spell:register()
