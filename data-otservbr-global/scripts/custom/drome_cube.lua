local rewards = {
    { id = 36723, name = "kooldown-aid" },
    { id = 36724, name = "strike enhancement" },
    { id = 36725, name = "stamina extension" },
    { id = 36726, name = "charm upgrade" },
    { id = 36727, name = "wealth duplex" },
    { id = 36728, name = "bestiary betterment" },
    { id = 36729, name = "fire resilience" },
    { id = 36730, name = "ice resilience" },
    { id = 36731, name = "earth resilience" },
    { id = 36732, name = "energy resilience" },
    { id = 36733, name = "holy resilience" },
    { id = 36734, name = "death resilience" },
    { id = 36735, name = "physical resilience" },
    { id = 36736, name = "fire amplification" },
    { id = 36737, name = "ice amplification" },
    { id = 36738, name = "earth amplification" },
    { id = 36739, name = "energy amplification" },
    { id = 36740, name = "holy amplification" },
    { id = 36741, name = "death amplification" },
    { id = 36742, name = "physical amplification" },
}

local bagyouDesire = Action()
	--local message = "bag you desire aberta e foi encontrado um " .. rewardItem.name .. "."

function bagyouDesire.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if not player then
		return false
	end
	local randId = math.random(1, #rewards)
	local rewardItem = rewards[randId]

	player:addItem(rewardItem.id, 1)
	item:remove(1)

	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You received a " .. rewardItem.name .. ".")
	-- daqui p baixo teste global msg--
		local message = "o Player: " .. player:getName() .. " abriu uma bag you desire e encontrou um " .. rewardItem.name .. "."
		--Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	--
	return true
end

bagyouDesire:id(36827)
bagyouDesire:register()
