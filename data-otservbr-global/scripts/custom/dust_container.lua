local dust = Action()

function dust.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local amount = 100 -- quantidade de dusts que o item vai dar
local totalDusts = player:getForgeDusts()
local limitDusts = player:getForgeDustLevel() + 100 -- quantidade maxima de dusts
  
	if (totalDusts + amount) < limitDusts then
		player:addForgeDusts(amount)
	  
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You earned "..amount.." dusts")
		item:remove(1)
		return true
	else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You can't accumulate dusts anymore!")
	end
end

dust:id(37160) -- ID do item a ser transformado em dustsaa
dust:register()