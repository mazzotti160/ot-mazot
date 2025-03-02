local rewards = {
	[3148] = {
		storage = Storage.Quest.U9_60.BigfootsBurden.Warzone1Reward,
		bossName = "Deathstrike",
		items = {
			{ itemId = 30060, count = 3 },--giant emerald
			{ itemId = 3043, count = 50 },--crystal coin
			{ itemId = 16129, count = 3 },--major
		},
		achievement = { "Final Strike", "Death on Strike" },
	},
	[3149] = {
		storage = Storage.Quest.U9_60.BigfootsBurden.Warzone2Reward,
		bossName = "Gnomevil",
		items = {
			{ itemId = 30059, count = 3 },--giant ruby
			{ itemId = 3043, count = 75 },--crystal coin
			{ itemId = 16129, count = 3 },--major
		},
		miniatureHouse = true,
		achievement = { "Gnomebane's Bane", "Fall of the Fallen" },
	},
	[3150] = {
		storage = Storage.Quest.U9_60.BigfootsBurden.Warzone3Reward,
		bossName = "Abyssador",
		items = {
			{ itemId = 30061, count = 3 },--giant sapphire
			{ itemId = 3043, count = 100 },--crystal coin
			{ itemId = 16129, count = 3 },--major
		},
		achievement = { "Death from Below", "Diplomatic Immunity" },
	},
}

local bigfootRewards = Action()
function bigfootRewards.onUse(player, item, fromPosition, target, toPosition, isHotkey)
	if item.uid == 3147 then
		if player:getStorageValue(Storage.Quest.U9_60.BigfootsBurden.WarzoneStatus) == 4 then
			player:setStorageValue(Storage.Quest.U9_60.BigfootsBurden.WarzoneStatus, 5)
			player:addItem(3020, 1)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have found some golden fruits.")
		else
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "The chest is empty.")
		end
	elseif item.uid > 3147 and item.uid < 3151 then
		local reward = rewards[item.uid]
		if not reward then
			return false
		end

		if player:getStorageValue(reward.storage) ~= 1 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, reward.bossName .. " defends his belongings and will not let you open his chest.")
			return true
		end

		local backpack = player:getSlotItem(CONST_SLOT_BACKPACK)
		if backpack and backpack:getEmptySlots(false) < 5 or player:getFreeCapacity() < 100 then
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "Please make sure that you have at least 5 free inventory slots and that you can carry on additional 100 oz.")
			return true
		end

		for i = 1, #reward.items do
			local items = reward.items[i]
			if items.rand then
				if math.random(10) == 1 then
					player:addItem(items.itemId[math.random(#items.itemId)], 1)
				end
			else
				player:addItem(items.itemId, items.count or 1)
			end
		end

		if reward.miniatureHouse then
			if math.random(25) == 1 then
				player:addItem(15276, 1)
			end
		end

		player:setStorageValue(reward.storage, 0)
		player:addAchievement(reward.achievement[1])
		player:addAchievementProgress(reward.achievement[2], 50)
	end
	return true
end

bigfootRewards:uid(3147, 3148, 3149, 3150)
bigfootRewards:register()
