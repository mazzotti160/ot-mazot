-- soulhexer
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 0.7
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.7
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(34091)
dawnportWeapon:mana(20)
dawnportWeapon:range(5)
dawnportWeapon:register()


-- sanguine rod
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 0.9
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.9
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(43885)
dawnportWeapon:mana(20)
dawnportWeapon:range(5)
dawnportWeapon:register()

-- grand sanguine rod
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.1
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.1
	return -min , -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(43886)
dawnportWeapon:mana(20)
dawnportWeapon:range(5)
dawnportWeapon:register()


-- soultainter
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_DEATHDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_SUDDENDEATH)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 0.7
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.7
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(34090)
dawnportWeapon:mana(20)
dawnportWeapon:range(5)
dawnportWeapon:register()


-- sanguine coil
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 0.9
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.9
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(43882)
dawnportWeapon:mana(21)
dawnportWeapon:range(5)
dawnportWeapon:register()

-- grand sanguine coil
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.1
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.1
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(43883)
dawnportWeapon:mana(21)
dawnportWeapon:range(5)
dawnportWeapon:register()



-- amber rod
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 0.7
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.7
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(47373)
dawnportWeapon:mana(20)
dawnportWeapon:range(5)
dawnportWeapon:register()

-- amber wand
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ENERGY)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 0.7
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.7
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(47372)
dawnportWeapon:mana(20)
dawnportWeapon:range(5)
dawnportWeapon:register()

-- inferniarch wand
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.25
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.25
	return -min, -max
end

combat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues")

dawnportWeapon.onUseWeapon = function(player, variant)
	return combat:execute(player, variant)
end

dawnportWeapon:id(49528)
dawnportWeapon:mana(21)
dawnportWeapon:range(5)
dawnportWeapon:register()

-- Modified Inferniarch Wand
local modifiedInferniarchWeapon = Weapon(WEAPON_WAND)

local modifiedCombat = Combat()
modifiedCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
modifiedCombat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValuesModified(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.45
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.45
	return -min, -max
end

modifiedCombat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValuesModified")

modifiedInferniarchWeapon.onUseWeapon = function(player, variant)
	return modifiedCombat:execute(player, variant)
end

modifiedInferniarchWeapon:id(49882)
modifiedInferniarchWeapon:mana(21)
modifiedInferniarchWeapon:range(5)
modifiedInferniarchWeapon:register()

-- Enhanced Inferniarch Wand
local enhancedInferniarchWeapon = Weapon(WEAPON_WAND)

local enhancedCombat = Combat()
enhancedCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
enhancedCombat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValuesEnhanced(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.65
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.65
	return -min, -max
end

enhancedCombat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValuesEnhanced")

enhancedInferniarchWeapon.onUseWeapon = function(player, variant)
	return enhancedCombat:execute(player, variant)
end

enhancedInferniarchWeapon:id(49883)
enhancedInferniarchWeapon:mana(21)
enhancedInferniarchWeapon:range(5)
enhancedInferniarchWeapon:register()

-- Supreme Inferniarch Wand
local supremeInferniarchWeapon = Weapon(WEAPON_WAND)

local supremeCombat = Combat()
supremeCombat:setParameter(COMBAT_PARAM_TYPE, COMBAT_FIREDAMAGE)
supremeCombat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_FIRE)

function onGetFormulaValuesSupreme(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.90
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.90
	return -min, -max
end

supremeCombat:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValuesSupreme")

supremeInferniarchWeapon.onUseWeapon = function(player, variant)
	return supremeCombat:execute(player, variant)
end

supremeInferniarchWeapon:id(49884)
supremeInferniarchWeapon:mana(21)
supremeInferniarchWeapon:range(5)
supremeInferniarchWeapon:register()


-- Inferniarch Rod
local inferniarchRod = Weapon(WEAPON_WAND)

local combat49529 = Combat()
combat49529:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat49529:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

function onGetFormulaValues49529(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.25
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.25
	return -min, -max
end

combat49529:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues49529")

inferniarchRod.onUseWeapon = function(player, variant)
	return combat49529:execute(player, variant)
end

inferniarchRod:id(49529)
inferniarchRod:mana(21)
inferniarchRod:range(5)
inferniarchRod:register()

-- Modified Inferniarch Rod
local modifiedInferniarchRod = Weapon(WEAPON_WAND)

local combat49885 = Combat()
combat49885:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat49885:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

function onGetFormulaValues49885(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.45
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.45
	return -min, -max
end

combat49885:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues49885")

modifiedInferniarchRod.onUseWeapon = function(player, variant)
	return combat49885:execute(player, variant)
end

modifiedInferniarchRod:id(49885)
modifiedInferniarchRod:mana(21)
modifiedInferniarchRod:range(5)
modifiedInferniarchRod:register()

-- Enhanced Inferniarch Rod
local enhancedInferniarchRod = Weapon(WEAPON_WAND)

local combat49886 = Combat()
combat49886:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat49886:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

function onGetFormulaValues49886(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.65
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.65
	return -min, -max
end

combat49886:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues49886")

enhancedInferniarchRod.onUseWeapon = function(player, variant)
	return combat49886:execute(player, variant)
end

enhancedInferniarchRod:id(49886)
enhancedInferniarchRod:mana(21)
enhancedInferniarchRod:range(5)
enhancedInferniarchRod:register()

-- Supreme Inferniarch Rod
local supremeInferniarchRod = Weapon(WEAPON_WAND)

local combat49887 = Combat()
combat49887:setParameter(COMBAT_PARAM_TYPE, COMBAT_EARTHDAMAGE)
combat49887:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_EARTH)

function onGetFormulaValues49887(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.90
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.90
	return -min, -max
end

combat49887:setCallback(CALLBACK_PARAM_LEVELMAGICVALUE, "onGetFormulaValues49887")

supremeInferniarchRod.onUseWeapon = function(player, variant)
	return combat49887:execute(player, variant)
end

supremeInferniarchRod:id(49887)
supremeInferniarchRod:mana(21)
supremeInferniarchRod:range(5)
supremeInferniarchRod:register()