local dust = Action()

function dust.onUse(player, item, fromPosition, target, toPosition, isHotkey)
local amount = 100 -- quantidade de dusts que o item vai dar
  
	if player:isVip() then
		player:openForge()
	else	
		player:openForge()
      --  player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You need to be VIP to open exaltation forge anywhere.")
		return true
	end
end

dust:id(32226) -- ID do item a ser transformado em dusts
dust:register()
