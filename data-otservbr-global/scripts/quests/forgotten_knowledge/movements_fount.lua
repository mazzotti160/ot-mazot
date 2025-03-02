local fount = MoveEvent()

function fount.onStepIn(creature, item, position, fromPosition)
	local player = creature:getPlayer()
	if not player then
		return
	end
		player:teleportTo(Position(32722, 32242, 8))
		player:getPosition():sendMagicEffect(CONST_ME_WATERSPLASH)

	return true
end

fount:type("stepin")
fount:id(25135, 25136, 25137, 25138)
fount:register()
