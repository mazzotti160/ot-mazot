local area = createCombatArea({
	{ 0, 1, 1, 1, 0 },
	{ 1, 1, 1, 1, 1 },
	{ 1, 1, 3, 1, 1 },
	{ 1, 1, 1, 1, 1 },
	{ 0, 1, 1, 1, 0 },
})

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_DIAMONDARROW)
combat:setParameter(COMBAT_PARAM_IMPACTSOUND, SOUND_EFFECT_TYPE_DIAMOND_ARROW_EFFECT)
combat:setParameter(COMBAT_PARAM_CASTSOUND, SOUND_EFFECT_TYPE_DIST_ATK_BOW)
combat:setParameter(COMBAT_PARAM_BLOCKARMOR, true)
--factor = 1 full attack, 0.75 balanced, 0.5 full defense
function onGetFormulaValues(player, skill, attack, factor)
	local level = player:getLevel()
	local distanceSkill = player:getEffectiveSkillLevel(SKILL_DISTANCE)	
	local min = (level / 7) + ((5 * distanceSkill) + (attack - 37))
	local max = (level / 7) + ((5 * distanceSkill) + (attack - 37))
--	return (-min * ((attack - 37) / 10) * factor) * 0.5,  (-max * ((attack - 37) / 10) * factor) * 0.7
return (-min * ((attack - 37) / 10) * factor) * 0.6,  (-max * ((attack - 37) / 10) * factor) * 0.6
end

----

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
combat:setArea(area)

local diamondArrow = Weapon(WEAPON_AMMO)

function diamondArrow.onUseWeapon(player, variant)
	return combat:execute(player, variant)
end

diamondArrow:id(25757)
diamondArrow:id(35901)
diamondArrow:level(150)
diamondArrow:attack(37)
diamondArrow:action("removecount")
diamondArrow:ammoType("arrow")
diamondArrow:shootType(CONST_ANI_DIAMONDARROW)
diamondArrow:maxHitChance(100)
diamondArrow:wieldUnproperly(true)
diamondArrow:register()
