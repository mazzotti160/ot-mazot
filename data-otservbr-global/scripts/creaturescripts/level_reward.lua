local table = 
{
	-- [level] = type = "item", id = {ITEM_ID, QUANTITY}, msg = "MESSAGE"},
	-- [level] = type = "bank", id = {QUANTITY, 0}, msg = "MESSAGE"},
	-- [level] = type = "addon", id = {ID_ADDON_FEMALE, ID_ADDON_MALE}, msg = "MESSAGE"},
	-- [level] = type = "coin", id = {QUANTITY, 0}, msg = "MESSAGE"},
	-- [level] = type = "mount", id = {ID_MOUNT, 0}, msg = "MESSAGE"},

	--[20] = {type = "item", id = {2160, 2}, msg = "You win 2 crystal coins for reach the level 20!"},
	[30] = {type = "bank", id = {100000, 0}, msg = "You win 75.000 gold coins in your bank account for reaching level 30."},
	[50] = {type = "bank", id = {500000, 0}, msg = "You win the mount donkey for reaching level 50."},	
	[150] = {type = "bank", id = {1000000, 0}, msg = "You win the addon citizen full for reach the level 75!"},
	--[100] = {type = "coin", id = {5, 0}, msg = "You win 5 coins for reach the level 50!"},

}

local storage = 15000

local levelReward = CreatureEvent("Level Reward")
function levelReward.onAdvance(player, skill, oldLevel, newLevel)

	if skill ~= SKILL_LEVEL or newLevel <= oldLevel then
		return true
	end

	for level, _ in pairs(table) do
		if newLevel >= level and player:getStorageValue(storage) < level then
			if table[level].type == "item" then	
				player:addItem(table[level].id[1], table[level].id[2])
			elseif table[level].type == "bank" then
				player:setBankBalance(player:getBankBalance() + table[level].id[1])
			elseif table[level].type == "addon" then
				player:addOutfitAddon(table[level].id[1], 3)
				player:addOutfitAddon(table[level].id[2], 3)
			elseif table[level].type == "coin" then
				player:addTibiaCoins(table[level].id[1])
			elseif table[level].type == "mount" then
				player:addMount(table[level].id[1])
			else
				return false
			end

			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, table[level].msg)
			player:setStorageValue(storage, level)
		end
	end

	player:save()

	return true
end

levelReward:register()