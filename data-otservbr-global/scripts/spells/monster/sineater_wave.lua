local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_WHITE_ENERGY_SPARK)

arr = {
	{ 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0 },
	{ 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0 },
	{ 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0 },
	{ 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0 },
}

local area = createCombatArea(arr)
combat:setArea(area)

local spell = Spell("instant")

function spell.onCastSpell(creature, var)
	return combat:execute(creature, var)
end



spell:name("sineaterwave")
spell:words("###sineater_wave")
spell:needLearn(true)
spell:isSelfTarget(true)
spell:register()
