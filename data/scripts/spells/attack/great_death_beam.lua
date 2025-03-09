function onGetFormulaValues(player, level, maglevel)
	local min = (level / 6) + ((10 * maglevel)) * 1.1
	local max = (level / 6) + ((10 * maglevel)) * 1.3
	return -min, -max
end

local initCombat = Combat()
initCombat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local function createCombat(combat, area)
	combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
	combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_MORTAREA)
	combat:setArea(createCombatArea(area))
	return combat
end
local combat1 = createCombat(initCombat, AREA_WAVE5)
local combat2 = createCombat(initCombat, AREA_WAVE6)
local combat3 = createCombat(initCombat, AREA_WAVE7)
local combat = { combat1, combat2, combat3 }

local spell = Spell("instant")

local exhaust = {}
function spell.onCastSpell(creature, var)
	if not creature or not creature:isPlayer() then
		return false
	end

	local grade = creature:upgradeSpellsWOD("Great Death Beam")
	if grade == WHEEL_GRADE_NONE then
		creature:sendCancelMessage("You need to learn this spell first")
		creature:getPosition():sendMagicEffect(CONST_ME_POFF)
		return false
	end

	return combat[grade]:execute(creature, var)
end

spell:group("attack", "greatbeams")
spell:id(260)
spell:name("Great Death Beam")
spell:words("exevo max mort")
spell:level(300)
spell:mana(140)
spell:isPremium(false)
spell:needDirection(true)
spell:blockWalls(true)
spell:cooldown(10 * 1000)
spell:groupCooldown(2 * 1000, 6 * 1000)
spell:needLearn(true)
spell:vocation("sorcerer;true", "master sorcerer;true")
spell:register()
