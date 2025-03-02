local rewards = {
{ id = 37341, name = "green skull" },
{ id = 37340, name = "orange skull" },
{ id = 37339, name = "yellow skull" },
{ id = 37338, name = "red skull" },
{ id = 37337, name = "white skull" },
{ id = 37335, name = "black skull" },

}

local primalBag = Action()

function primalBag.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not player then
		return false
	end
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

		local message = "o Player: " .. player:getName() .. " abriu uma skull present box e encontrou um " .. rewardItem.name .. "."
				Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	return true
end

primalBag:id(25302)
primalBag:register()
