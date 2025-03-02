-- soulhexer
local dawnportWeapon = Weapon(WEAPON_WAND)

local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ICEDAMAGE)
combat:setParameter(COMBAT_PARAM_DISTANCEEFFECT, CONST_ANI_ICE)

function onGetFormulaValues(player, level, maglevel)
	local min = ((level / 6) + (maglevel * 2) + 1) * 0.7
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.75
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
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.0
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.0
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
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.4
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.4
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
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.75
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
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.0
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.0
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
	local min = ((level / 6) + (maglevel * 2) + 1) * 1.4
	local max = ((level / 6) + (maglevel * 2) + 100) * 1.4
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
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.75
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
	local max = ((level / 6) + (maglevel * 2) + 100) * 0.75
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