local craftGrandSanguineCrossbow = Action()

function craftGrandSanguineCrossbow.onUse(player, item, fromPosition, target, toPosition, isHotkey)
    -- Reward
    local reward = {
        itemId = 43865 -- Replace with the ID of the item you want to give as a reward
    }

    -- Required items table
    local requiredItems = {
		{id = 37341, count = 1},
	{id = 37340, count = 1},
	{id = 37339, count = 1},
	{id = 37338, count = 1},
	{id = 37337, count = 1},
	{id = 37335, count = 1},
	--itens conforme a arma
		{id = 47374, count = 1}, -- amber sabre
        {id = 43864, count = 1}, -- sanguine blade
        {id = 34155, count = 1}, -- lion longsword
        {id = 39155, count = 1}, -- naga sword
        {id = 34083, count = 1}, -- soulshredder
        {id = 28723, count = 1}, -- falcon longsword
        {id = 36658, count = 1}, -- gilded eldritch claymore
        {id = 31614, count = 1}, -- tagralt blade
        {id = 27651, count = 1}, -- gnome sword
        {id = 30398, count = 1}, -- cobra sword
        {id = 20066, count = 1}, -- umbral master blade
        {id = 27449, count = 1}, -- blade of destruction
        {id = 36657, count = 1}, -- eldritch claymore	
	--abaixo 3 catalisadores da vocaçao
        {id = 39759, count = 1},  -- golden gods twilight doll
        {id = 22889, count = 1},  -- shield of destiny
        {id = 25982, count = 1},  -- mathmaster shield
	--abaixo é fixo independente da voc e do item
        {id = 3423, count = 1}, -- blessed shield
		{id = 3246, count = 1}, -- boots of waterwalking
		{id = 3363, count = 1}, -- dragon scale legs
		{id = 3402, count = 1}, -- native armor
		{id = 3365, count = 1}, -- golden helmet	
        {id = 16206, count = 250}, -- abyssador lash
        {id = 16136, count = 250}, -- deathstrike snippet
        {id = 16205, count = 250}, -- gnomevil hat
        {id = 27621, count = 125}, -- huge shell
        {id = 27627, count = 125}, -- huge spiky snail shell
        {id = 27619, count = 125}, -- giant tentacle
        {id = 36796, count = 100}, -- brainstealer brainwave
        {id = 36795, count = 100}, -- brainstealer brain
        {id = 36794, count = 100}, -- brainstealer tissue
        {id = 39040, count = 75},  -- fiery tear
        {id = 39543, count = 75},  -- smoldering eye
        {id = 33928, count = 50},  -- megalomania essence
        {id = 33925, count = 50},  -- megalomania skull
        {id = 43968, count = 25}   -- bakragore amalgamation
    }

    -- Check if the player has all the required items
    local missingItems = {}
    for _, requiredItem in ipairs(requiredItems) do
        local itemCount = player:getItemCount(requiredItem.id)
        if itemCount < requiredItem.count then
            local missingCount = requiredItem.count - itemCount
            table.insert(missingItems, missingCount .. " " .. ItemType(requiredItem.id):getName())
        end
    end

    -- If there are missing items, send a message and return
    if #missingItems > 0 then
        player:sendTextMessage(MESSAGE_ADMINISTRATOR, "Missing items: " .. table.concat(missingItems, ", ") .. ".")
        return false
    end

    -- Remove the required items
    for _, requiredItem in ipairs(requiredItems) do
        player:removeItem(requiredItem.id, requiredItem.count)
    end

    -- Add the reward
    player:addItem(reward.itemId, 1)
    player:sendTextMessage(MESSAGE_ADMINISTRATOR, "You successfully crafted a " .. ItemType(reward.itemId):getName() .. ".")
	
			local message = "o Player: " .. player:getName() .. " craftou com sucesso um " .. ItemType(reward.itemId):getName() .. "."
				Game.broadcastMessage(message, MESSAGE_GAME_HIGHLIGHT)
	
    return true
end

craftGrandSanguineCrossbow:position({ x = 32342, y = 32183, z = 5 }) --(32342, 32183, 5)
craftGrandSanguineCrossbow:register()