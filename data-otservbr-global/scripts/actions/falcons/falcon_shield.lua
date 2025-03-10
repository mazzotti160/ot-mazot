local falconShield = Action()

function falconShield.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not target or type(target) ~= "userdata" or not target:isItem() then
		return false
	end

	if player:getItemCount(28824) < 1 or player:getItemCount(28821) < 1 then
		return false
	end

	if target:getId() ~= 7843 or target:getPosition() ~= Position(33363, 31342, 7) then
		return false
	end

	local mould = Position(33361, 31341, 7)
	toPosition:sendMagicEffect(CONST_ME_POFF)
	toPosition:sendMagicEffect(CONST_ME_HITAREA)
	mould:sendMagicEffect(CONST_ME_SMOKE)
	player:removeItem(28821, 1)
	player:removeItem(28824, 1)
	player:addItem(28722, 1)
	item:remove(1)
	return true
end

falconShield:id(28721)
falconShield:register()
