local rewards = {
	{ id = 39147, name = "spiritthorn armor" },
	{ id = 39148, name = "spiritthorn helmet" },
	{ id = 39177, name = "charged spiritthorn ring" },
	{ id = 39149, name = "alicorn headguard" },
	{ id = 39150, name = "alicorn quiver" },
	{ id = 39180, name = "charged alicorn ring" },
	{ id = 39151, name = "arcanomancer regalia" },
	{ id = 39152, name = "arcanomancer folio" },
	{ id = 39183, name = "charged arcanomancer sigil" },
	{ id = 39153, name = "arboreal crown" },
	{ id = 39154, name = "arboreal tome" },
	{ id = 39186, name = "charged arboreal ring" },
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

		local message = "o Player: " .. player:getName() .. " abriu uma primal bag e encontrou um " .. rewardItem.name .. "."
				Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	return true
end

primalBag:id(39546)
primalBag:register()
