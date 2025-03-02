local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_EXPLOSIONAREA)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EXPLOSION)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, 1)
combat:setArea(createCombatArea(AREA_CIRCLE3X3))

function onGetFormulaValues(player, level, maglevel)
	local min = (level / 6) + ((10 * maglevel)) * 1.4
	local max = (level / 6) + ((10 * maglevel)) * 1.7
	return -min * 0.28, -max * 0.42
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

local rune = Spell("rune")

function rune.onCastSpell(creature, var, isHotkey)
	return combat:execute(creature, var)
end

rune:id(18)
rune:group("attack")
rune:name("explosion rune")
rune:castSound(SOUND_EFFECT_TYPE_SPELL_OR_RUNE)
rune:impactSound(SOUND_EFFECT_TYPE_SPELL_EXPLOSION_RUNE)
rune:runeId(3200)
rune:allowFarUse(true)
rune:charges(6)
rune:level(31)
rune:magicLevel(6)
rune:cooldown(2 * 1000)
rune:groupCooldown(2 * 1000)
rune:isBlocking(true) -- True = Solid / False = Creature
rune:register()
