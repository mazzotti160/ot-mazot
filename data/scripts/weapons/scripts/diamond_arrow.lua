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

function onGetFormulaValues(player, skill, attack, factor)
    local level = player:getLevel()
    local distanceSkill = player:getEffectiveSkillLevel(SKILL_DISTANCE)

    local attackNew = attack - 37 -- Redução obrigatória de 37

    function getAttackMultiplier(attackNew)
        if attackNew < 10 then
            return 1.0 + (attackNew * 0.04)
        else
            return 1.36 + ((attackNew - 9) * 0.08)
        end
    end

    local multiplier = getAttackMultiplier(attackNew)
    local min = ((level / 7) + (5 * distanceSkill)) * factor * multiplier
    local max = ((level / 7) + (5 * distanceSkill)) * factor * multiplier

    local calculatedMin = (-min * (attackNew / 20)) * 0.4
    local calculatedMax = (-max * (attackNew / 20)) * 0.5

    -- Garante que o dano mínimo seja pelo menos 150
    if calculatedMin > -150 then
        calculatedMin = -150
    end

    -- Se o dano máximo for menor que 180, retorna -200 para ambos min e max
    if calculatedMax > -180 then
        calculatedMin = -180
        calculatedMax = -180
    end

    return calculatedMin, calculatedMax
end

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