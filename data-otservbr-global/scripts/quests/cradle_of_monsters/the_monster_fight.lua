local bossZone = Zone("boss.the-monster")

local puddleId = 42075
local jailBarsId = 2184

local encounter = Encounter("The Monster", {
	zone = bossZone,
	timeToSpawnMonsters = "10ms",
})

local function freeMonster()
	local tile = Tile(Position(33844, 32591, 12))
	if tile then
		while true do
			local item = tile:getItemById(jailBarsId)
			if item then
				item:remove()
			else
				break
			end
		end
	end
end

function encounter:onReset(position)
	encounter:removeMonsters()
	freeMonster()
end

encounter:addRemoveMonsters():autoAdvance()
encounter
	:addStage({
		start = function()
			--Game.createItem(jailBarsId, 1, Position(33844, 32591, 12))
		end,
	})
	:autoAdvance()

encounter:addSpawnMonsters({
	{
		name = "The Monster",
		event = { "fight.the-monster.TheMonsterHealth", "fight.the-monster.TheMonsterDeath" },
		positions = {
			Position(33837, 32591, 12), --(33837, 32591, 12)
		},
		spawn = function(monster)
		--	monster:setIcon("the-monster", CreatureIconCategory_Quests, CreatureIconQuests_PurpleShield, 20)
		end,
	},
})

encounter:addStage({
	start = function()
		local monsters = encounter:getZone():getMonstersByName("Doctor Marrow")
		if not monsters or #monsters == 0 then
			return false
		end
		local doctor = monsters[1]
		doctor:removeInvulnerable()
	end,
})

encounter:addStage({
	start = function()
		freeMonster()
	end,
})

encounter:register()

local spawnContainers = GlobalEvent("fight.the-monster.containers.onThink")
function spawnContainers.onThink(interval, lastExecution)
	return true
end

spawnContainers:interval(4000)
spawnContainers:register()

local doctorHealth = CreatureEvent("fight.the-monster.DoctorMarrowHealth")
function doctorHealth.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
	if not creature then
		return primaryDamage, primaryType, secondaryDamage, secondaryType
	end
	local newHealth = creature:getHealth() - primaryDamage - secondaryDamage
	if newHealth <= creature:getMaxHealth() * 0.5 then
		creature:setHealth(creature:getMaxHealth())
		creature:remove()
		encounter:nextStage()
		return false
	end
	return primaryDamage, primaryType, secondaryDamage, secondaryType
end

doctorHealth:register()




local function getShields(creature)
	local currentIcon = creature:getIcon("the-monster")
	if not currentIcon or currentIcon.category ~= CreatureIconCategory_Quests or currentIcon.icon ~= CreatureIconQuests_PurpleShield then
		return 0
	end
	if currentIcon.count <= 0 then
		creature:removeIcon("magma-bubble")
		return 0
	end
	return currentIcon.count
end

local function setShields(creature, count)
	if count <= 0 then
		creature:removeIcon("the-monster")
		return
	end
	creature:setIcon("the-monster", CreatureIconCategory_Quests, CreatureIconQuests_PurpleShield, count)
end

local monsterHealth = CreatureEvent("fight.the-monster.TheMonsterHealth")

function monsterHealth.onHealthChange(creature, attacker, primaryDamage, primaryType, secondaryDamage, secondaryType)
    if not creature then
        return primaryDamage, primaryType, secondaryDamage, secondaryType
    end
    -- Remover o cálculo dos escudos
    return primaryDamage, primaryType, secondaryDamage, secondaryType
end


monsterHealth:register()

local monsterDeath = CreatureEvent("fight.the-monster.TheMonsterDeath")
function monsterDeath.onDeath(creature)
	encounter:nextStage()
end

monsterDeath:register()

local puddleStepIn = MoveEvent("fight.the-monster.PuddleStepIn")
function puddleStepIn.onStepIn(creature, item, position, fromPosition)
	if not creature or creature:getName() ~= "The Monster" then
		return true
	end
	item:remove()
	local current = getShields(creature)
	if current <= 0 then
		return true
	end
	setShields(creature, current - 1)
	creature:getPosition():sendMagicEffect(CONST_ME_ORANGE_ENERGY_SPARK)
	return true
end

puddleStepIn:type("stepin")
puddleStepIn:id(puddleId)
puddleStepIn:register()
