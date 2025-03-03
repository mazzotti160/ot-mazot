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
    local attack2 = attack * 12

   -- print("Level do jogador: " .. level)
   -- print("Skill de distância do jogador: " .. distanceSkill)
   -- print("Ataque da arma (attack): " .. attack)
   -- print("Ataque da arma multiplicado por 10 (attack2): " .. attack2)

    local min = ((level / 8) + (2 * distanceSkill)) * factor + attack2
    local max = ((level / 8) + (2 * distanceSkill)) * factor + attack2

  --  print("Dano mínimo calculado (antes dos limites): " .. min)
   -- print("Dano máximo calculado (antes dos limites): " .. max)

    local calculatedMin = -min * 0.81
    local calculatedMax = -max * 1.01

    if calculatedMin > -150 then
        calculatedMin = -150
    end

    if calculatedMax > -180 then
        calculatedMin = -180
        calculatedMax = -180
    end

   -- print("Dano mínimo final: " .. calculatedMin)
   -- print("Dano máximo final: " .. calculatedMax)

    return calculatedMin, calculatedMax
end

combat:setCallback(CALLBACK_PARAM_SKILLVALUE, "onGetFormulaValues")
combat:setArea(area)

local diamondArrow = Weapon(WEAPON_AMMO)

function diamondArrow.onUseWeapon(player, variant)
  --  print("Flecha de diamante usada pelo jogador: " .. player:getName())
    return combat:execute(player, variant)
end

diamondArrow:id(25757)
diamondArrow:id(35901)
diamondArrow:level(150)
diamondArrow:action("removecount")
diamondArrow:ammoType("arrow")
diamondArrow:shootType(CONST_ANI_DIAMONDARROW)
diamondArrow:maxHitChance(100)
diamondArrow:wieldUnproperly(true)
diamondArrow:register()