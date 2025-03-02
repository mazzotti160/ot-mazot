local arenaDeath = CreatureEvent("arenaDeath")

-- Definição da posição de saída da dungeon
local exitDungeonPos = Position(32218, 32213, 7)

function arenaDeath.onPrepareDeath(player)
	player:unregisterEvent("arenaDeath")

	local pos = player:getPosition()
	for z = 0, 15 do
		local fromPos = Position(31854, 32271, z)
		local toPos = Position(31875, 32287, z)
		
		if pos:isInRange(fromPos, toPos) then
			player:teleportTo(exitDungeonPos) -- Teleporta o jogador para fora da arena
			player:addHealth(100000000)
			player:addMana(100000000)			
			return false -- Cancela a morte dentro da arena
		end
	end

	return true -- Permite a morte fora da arena
end

arenaDeath:register()
