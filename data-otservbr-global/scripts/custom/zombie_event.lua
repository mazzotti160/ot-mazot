--[[
    Zombie Event
    Author: 𝓜𝓲𝓵𝓵𝓱𝓲𝓸𝓻𝓮 𝓑𝓣 - @millhiorebt
    Version: 1.0
    Engine: TFS 1.5+ / Canary

    --Source: https://discord.com/channels/1018417615888199680/shop
]] --
if ZombieEvent then ZombieEvent:stop(false) end
---
---```diff
---! If this variable is true, then some configurations necessary for Canary will be applied.
---```
local CANARY = true
---
---@alias ZombieEventState
---| '"OFF"' # The event is not running.
---| '"WAITING"' # The event is waiting for players.
---| '"STARTED"' # The event has started.
---
---@class (exact) ZombieEvent
---@field words string
---@field state ZombieEventState
---@field type string
---@field monsterDamage integer
---@field maxCount integer
---@field warningSpawn integer
---@field increaseDifficulty integer
---@field minPlayers integer
---@field maxPlayers integer
---@field gameTime integer
---@field messageType integer
---@field fromPos Position
---@field toPos Position
---@field centerPos Position
---@field tpId integer
---@field tpPos Position
---@field tpTime integer
---@field exitPos Position
---@field days table<integer, string>
---@field hours table<integer, string>
---@field currentDifficulty integer
---@field rewards table<integer, {itemId: integer, count: integer, chance: integer}>
---@field rewardBagId integer
---@field defaultDepotId integer
ZombieEvent = {
    words = "!zombie",
    state = "OFF",

    type = "Zombie Dummy", -- MonsterType
    monsterDamage = 10000000,
    maxCount = 10,
    warningSpawn = 3, -- seconds
    increaseDifficulty = 1, -- minutes

    minPlayers = 1,
    maxPlayers = 100,

    gameTime = 7, -- minutes
    messageType = MESSAGE_GAME_HIGHLIGHT,
	

    fromPos = Position(31903, 32429, 7),
    toPos = Position(31923, 32449, 7),
    centerPos = Position(31913, 32439, 7),

    tpId = 23483,
    tpPos = Position(32391, 32191, 7),
    tpTime = 2, -- minutes

    exitPos = Position(32400, 32198, 7),

    -- Calendar
    days = {"Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"},
    hours = {"12:00", "18:00", "22:00"},

    currentDifficulty = 1
}

---@type table<integer, {itemId: integer, count: integer, chance: integer}>
ZombieEvent.rewards = {
    {itemId = 2160, count = 100, chance = 100}, --crystal coin
    {itemId = 36827, count = 1, chance = 25}, --drome cube
    {itemId = 8778, count = 1, chance = 5}, --addon doll
    {itemId = 25979, count = 1, chance = 5},	--mount doll
}


---```diff
---! This is the ID of the reward container.
---```
ZombieEvent.rewardBagId = 2853

---```diff
---! In case the player cannot load the reward, it will be sent to their depot chest.
---```
ZombieEvent.defaultDepotId = 1

---```diff
---! This table will contain the event IDs.
---```
---@type {removeTp: integer, start: integer, stop: integer, createAdvertisement: integer, startSpawner: integer, checkSpawn: integer}
local cacheEventIds = {}

---```diff
---! This table will contain the GUIDs of the players who are participating in the event.
---```
---@type table<integer, integer>
local cachePlayers = {}

---```diff
---! This table will contain the IDs of the zombies who are in the event.
---```
---@type table<integer, {pos: Position, check: integer, id: integer}>
local cacheZombies = {}

function ZombieEvent:isOff() return self.state == "OFF" end
function ZombieEvent:isWaiting() return self.state == "WAITING" end
function ZombieEvent:isStarted() return self.state == "STARTED" end

function ZombieEvent:setOff() self.state = "OFF" end
function ZombieEvent:setWaiting() self.state = "WAITING" end
function ZombieEvent:setStarted() self.state = "STARTED" end

do
	---@type table<integer, table<integer, integer>>
	local storageMap = {}

	---@param creature Creature
	---@param key integer
	---@return integer?
	function ZombieEvent:getStorageValue(creature, key)
		local storage = storageMap[creature:getId()]
		if not storage then return end
		return storage[key]
	end

	---@param creature Creature
	---@param key integer
	---@param value integer
	function ZombieEvent:setStorageValue(creature, key, value)
		local creatureId = creature:getId()
		local storage = storageMap[creatureId]
		if storage then
			storage[key] = value
			return true
		end

		storageMap[creatureId] = {[key] = value}
		return true
	end

	function ZombieEvent:clearStorages()
		storageMap = {}
		return true
	end
end

---@type function
local mtime = nil
---@type function
local error = nil
local time = os.time

if CANARY then
	---@diagnostic disable-next-line: undefined-global
	mtime = systemTime
	---@diagnostic disable-next-line: undefined-global
	error = logger.error
else
	mtime = os.mtime
	error = error
end

local max = math.max
local ceil = math.ceil
local floor = math.floor
local format = string.format
local minToSec = function(min) return min * 60 end
local minToMillis = function(min) return floor(min * 60 * 1000) end
local random = math.random
local insert = table.insert
local remove = table.remove

function ZombieEvent:createTp()
	local tile = Tile(self.tpPos)
	if not tile then error("[ZombieEvent] Invalid position.") end

	local tp = tile:getItemById(self.tpId)
	if not tp then tp = Game.createItem(self.tpId, 1, self.tpPos) end

	stopEvent(cacheEventIds.removeTp)
	cacheEventIds.removeTp = addEvent(self.removeTp, minToMillis(self.tpTime), self, true)
end

---@param start boolean
function ZombieEvent:removeTp(start)
	local tile = Tile(self.tpPos)
	if not tile then error("[ZombieEvent] Invalid position.") end

	local tp = tile:getItemById(self.tpId)
	if tp then
		tp:remove()
		if start then self:start() end
	end
end

---```diff
---! Example:
---+ Zombie Event: <has been opened.> <-- (message)
---```
---@param message string
---@param ... any
function ZombieEvent:broadcast(message, ...)
	local formattedMessage = format("Zombie Event: %s", format(message, ...))
	for _, player in ipairs(Game.getPlayers()) do
		--player:sendTextMessage(self.messageType, formattedMessage)
		Game.broadcastMessage(formattedMessage, MESSAGE_GAME_HIGHLIGHT)
	end
	return true
end

function ZombieEvent:clear()
	cachePlayers = {}
	cacheZombies = {}
	cacheEventIds = {}
	self.currentDifficulty = 1
	self:clearStorages()
	return true
end

---@param seconds integer
---@nodiscard
function ZombieEvent:getTimeFormatted(seconds)
    local minutes = math.floor(seconds / 60)
    seconds = seconds - (minutes * 60)
    if minutes < 1 then return string.format("%d seconds", seconds) end
    if seconds < 1 then return string.format("%d minutes", minutes) end
    return string.format("%d minutes and %d seconds", minutes, seconds)
end

---@param seconds integer
function ZombieEvent:createAdvertisement(seconds)
    if not self:isWaiting() then return false end
    if seconds <= 0 then return self:start() end
    if not self:isStarted() then
        local timeFormatted = self:getTimeFormatted(seconds)
        self:broadcast(
            string.format(
                "has been opened.\nYou can join the event by entering event tp room.\nEvent will start in %s.",
                timeFormatted
            ),
            self.words)
    else
        self:broadcast("We are about to begin...")
    end

    local discount = math.ceil(math.max(5, seconds / 5))
    cacheEventIds.createAdvertisement = addEvent(function() 
        self:createAdvertisement(seconds - discount)
    end, discount * 1000)
end


function ZombieEvent:init()
	self:clear()
	self:setWaiting()
	self:createTp()
	self:createAdvertisement(minToSec(self.tpTime))
	cacheEventIds.start = addEvent(self.start, minToMillis(self.tpTime), self)
	return true
end

function ZombieEvent:start()
	stopEvent(cacheEventIds.start)
	stopEvent(cacheEventIds.removeTp)
	stopEvent(cacheEventIds.createAdvertisement)
	self:removeTp(false)

	if #cachePlayers < self.minPlayers then
		self:broadcast("The event has been canceled due to lack of players.")
		self:stop(false)
		return false
	end

	self:setStarted()
	self:broadcast("The event has started.")
	self:startSpawner()

	cacheEventIds.stop = addEvent(self.stop, minToMillis(self.gameTime), self, true)
	return true
end

function ZombieEvent:kickPlayers()
	for _, playerGuid in ipairs(cachePlayers) do
		local player = Player(playerGuid)
		if player then
			player:teleportTo(self.exitPos)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have been kicked from the event.")
		end
	end
end

function ZombieEvent:killZombies()
	for _, zombie in ipairs(cacheZombies) do
		local monster = Monster(zombie.id)
		if monster then monster:remove() end
	end
end

function ZombieEvent:winners()
	for _, playerGuid in ipairs(cachePlayers) do
		local player = Player(playerGuid)
		if player then self:win(player) end
	end
	return true
end

---@param winner Player
---@param winner Player
function ZombieEvent:win(winner)
    local bag = Game.createItem(self.rewardBagId, 1) --[[@as Container]]
    if not bag then error("[ZombieEvent] Could not create reward bag.") end
    for _, reward in ipairs(self.rewards) do
        if random(100) <= reward.chance then
            local count = reward.count
            if reward.itemId == 2160 then
                count = random(20, 100)
            end
            bag:addItem(reward.itemId, count)
        end
    end

    if bag:getSize() == 0 then
        bag:remove()
        winner:sendCancelMessage("Unfortunately you haven't won anything.")
        return false
    end

    local returnValue = winner:addItemEx(bag)
    if returnValue ~= RETURNVALUE_NOERROR then
        local depotChest = winner:getDepotChest(self.defaultDepotId, true)
        if not depotChest then error("[ZombieEvent] Could not find depot chest.") end
        depotChest:addItemEx(bag, INDEX_WHEREEVER, FLAG_NOLIMIT)
        winner:sendTextMessage(MESSAGE_INFO_DESCR,
                               "Congratulations, you won a reward bag, but your backpack is full, so it was sent to your depot chest.")
        return true
    end

    winner:sendTextMessage(MESSAGE_INFO_DESCR, "Congratulations, you won a reward bag.")
    return true
end


---@param win boolean
function ZombieEvent:stop(win)
	for _, eventId in pairs(cacheEventIds) do stopEvent(eventId) end

	self:removeTp(false)

	if win then self:winners() end

	self:killZombies()
	self:kickPlayers()

	self:setOff()
	self:clear()
	return true
end

local function getRandomTile()
	local from, to = ZombieEvent.fromPos, ZombieEvent.toPos
	local tile = Tile(random(from.x, to.x), random(from.y, to.y), from.z)
	local timeNow = mtime()
	while not tile or not tile:isWalkable() do
		if mtime() - timeNow > 100 then return end
		tile = Tile(random(from.x, to.x), random(from.y, to.y), from.z)
	end
	return tile
end

function ZombieEvent:startSpawner()
	if not self:isStarted() then return false end

	stopEvent(cacheEventIds.startSpawner)

	if #cacheZombies >= self.maxCount then return end
	cacheEventIds.startSpawner =
		addEvent(self.startSpawner, minToMillis(self.increaseDifficulty), self)

	local tile = getRandomTile()
	if not tile then return false end

	local pos = tile:getPosition()
	insert(cacheZombies, {pos = pos, check = os.time()})
	self:checkSpawn()
	return true
end

do
	Game.createMonsterType(ZombieEvent.type):register({
		description = format("a %s", ZombieEvent.type:lower()),
		experience = 0,
		outfit = {lookType = 1278},
		health = 1000000,
		maxHealth = 1000000,
		race = "undead",
		corpse = 0,
		speed = 180,
		maxSummons = 0,
		flags = {
			healthHidden = false,
			summonable = false,
			attackable = true,
			hostile = true,
			convinceable = false,
			illusionable = false,
			canPushItems = true,
			pushable = false,
			canPushCreatures = true,
			isBlockable = false,
			canWalkOnEnergy = true,
			canWalkOnFire = false,
			canWalkOnPoison = true,			
		},
		attacks = {
			{
				name = "melee",
				minDamage = ZombieEvent.monsterDamage,
				maxDamage = ZombieEvent.monsterDamage,
				effect = CONST_ME_DRAWBLOOD,
				interval = 1000
			}
		},
		voices = {
			interval = 1000,
			chance = 10,
			{text = "Mst.... klll...."},
			{text = "Whrrrr... ssss.... mmm.... grrrrl"},
			{text = "Dnnnt... cmmm... clsrrr...."},
			{text = "Httt.... hmnnsss..."}
		},
		immunities = {
	{ type = "paralyze", condition = true },
	{ type = "outfit", condition = true },
	{ type = "invisible", condition = true },
	{ type = "bleed", condition = true },
}		
	})
end

---@param index integer
---@param zombie {pos: Position, check: integer, id: integer}
function ZombieEvent:createZombie(index, zombie)
	local monster = Game.createMonster(self.type, zombie.pos)
	if not monster then return end

	zombie.id = monster:getId()
	self:setStorageValue(monster, 1, index)
	monster:registerEvent("ZombieEventDeath")
end

function ZombieEvent:checkSpawn()
	if #cacheZombies == 0 then return end

	local nextCheck = false
	local timeNow = os.time()
	for index, zombie in ipairs(cacheZombies) do
		repeat
			if zombie.id then break end
			if timeNow - zombie.check < self.warningSpawn then
				zombie.pos:sendMagicEffect(CONST_ME_TELEPORT)
				nextCheck = true
				break
			end

			self:createZombie(index, zombie)
		until true
	end

	if nextCheck then
		stopEvent(cacheEventIds.checkSpawn)
		cacheEventIds.checkSpawn = addEvent(self.checkSpawn, 1000, self)
	end
end

---@param player Player
function ZombieEvent:kickPlayer(player)
	local playerGuid = player:getGuid()
	for index, guid in ipairs(cachePlayers) do
		if guid == playerGuid then
			remove(cachePlayers, index)
			player:teleportTo(self.exitPos)
			player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
			player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You have been eliminated from the event.")
			break
		end
	end

	player:setHealth(player:getMaxHealth())

	if not self:isStarted() then return end
	if #cachePlayers <= 1 then self:stop(true) end
end

function ZombieEvent:join(player)
	if not self:isWaiting() then
		player:sendCancelMessage("The event is not waiting to start.")
		return false
	end

	local playerGuid = player:getGuid()
	if table.contains(cachePlayers, playerGuid) then
		player:sendCancelMessage("You are already participating in the event.")
		return false
	end

	if #cachePlayers >= self.maxPlayers then
		player:sendCancelMessage("The event is full.")
		return false
	end

	player:teleportTo(self.centerPos)
	player:getPosition():sendMagicEffect(CONST_ME_TELEPORT)
	player:registerEvent("ZombieEventPrepareDeath")
	insert(cachePlayers, playerGuid)
	player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "You joined zombie arena!")

	if #cachePlayers >= self.maxPlayers then self:start() end
	return true
end

local tpEnter = MoveEvent()

function tpEnter.onStepIn(creature, item, pos, fromPosition)
	local player = creature:getPlayer()
	if not player then return true end

	if ZombieEvent:isStarted() then
		player:sendCancelMessage("The event has already started.")
		return true
	elseif ZombieEvent:isOff() then
		return true
	end

	if not ZombieEvent:join(player) then return true end
	return true
end

tpEnter:position(ZombieEvent.tpPos)
tpEnter:register()

local zombieDeath = CreatureEvent("ZombieEventDeath")

function zombieDeath.onDeath(monster)
	if not ZombieEvent:isStarted() then return true end

	local index = ZombieEvent:getStorageValue(monster, 1)
	if not index then error("[ZombieEvent] Invalid storage value.") end

	local zombie = cacheZombies[index]
	if not zombie then error("[ZombieEvent] Invalid zombie.") end

	zombie.id = nil
	zombie.check = time()

	local tile = getRandomTile()
	if tile then zombie.pos = tile:getPosition() end

	ZombieEvent:checkSpawn()
	return true
end

zombieDeath:register()

local playerPrepareDeath = CreatureEvent("ZombieEventPrepareDeath")

function playerPrepareDeath.onPrepareDeath(player)
	player:unregisterEvent("ZombieEventPrepareDeath")
	if not ZombieEvent:isStarted() then return true end
	---@cast player Player
	ZombieEvent:kickPlayer(player)
	return false
end

playerPrepareDeath:register()

local RETURN_TALK = CANARY

local zombieTalk = TalkAction(ZombieEvent.words)

function zombieTalk.onSay(player, words, param, type)
	local splitTrimmed = param:splitTrimmed(",")
	if not splitTrimmed or #splitTrimmed == 0 then
		player:sendCancelMessage("Invalid param specified.")
		return RETURN_TALK
	end

	local cmd = splitTrimmed[1]:lower()
	--if cmd == "join" then
	--	if not ZombieEvent:join(player) then return RETURN_TALK end
	--	return RETURN_TALK
	--end

	if cmd == "leave" then
		if not ZombieEvent:isWaiting() then
			player:sendCancelMessage("The event is not waiting to start.")
			return RETURN_TALK
		end

		local playerGuid = player:getGuid()
		if not table.contains(cachePlayers, playerGuid) then
			player:sendCancelMessage("You are not participating in the event.")
			return RETURN_TALK
		end

		ZombieEvent:kickPlayer(player)
		return RETURN_TALK
	end

	if not player:getGroup():getAccess() or not player:getAccountType() == ACCOUNT_TYPE_GOD then
		player:sendCancelMessage("The following commands are available: leave.")
		return RETURN_TALK
	end

	if cmd == "init" then
		if not ZombieEvent:isOff() then
			player:sendCancelMessage("The event is already initialized.")
			return RETURN_TALK
		end

		ZombieEvent:init()
		player:sendCancelMessage("Zombie Event initialized.")
		return RETURN_TALK
	end

	if cmd == "start" then
		if not ZombieEvent:isWaiting() then
			player:sendCancelMessage("The event is not waiting to start.")
			return RETURN_TALK
		end

		ZombieEvent:start()
		player:sendCancelMessage("Zombie Event started.")
		return RETURN_TALK
	end

	if cmd == "stop" then
		if ZombieEvent:isOff() then
			player:sendCancelMessage("The event is not active.")
			return RETURN_TALK
		end

		ZombieEvent:stop(tobool(splitTrimmed[2]))
		player:sendCancelMessage("Zombie Event stopped.")
		return RETURN_TALK
	end

	if cmd == "kick" then
		if ZombieEvent:isOff() then
			player:sendCancelMessage("The event is not active.")
			return RETURN_TALK
		end

		if #splitTrimmed < 2 then
			player:sendCancelMessage("Invalid param specified.")
			return RETURN_TALK
		end

		local name = splitTrimmed[2]
		local target = Player(name)
		if not target then
			player:sendCancelMessage(format("Player %s not found.", name))
			return RETURN_TALK
		end

		ZombieEvent:kickPlayer(target)
		player:sendCancelMessage(format("Player %s kicked.", name))
		return RETURN_TALK
	end

	player:sendCancelMessage("The following commands are available: init, start, stop, kick.")
	return RETURN_TALK
end

zombieTalk:separator(" ")
if CANARY then
	---@diagnostic disable-next-line: undefined-field
	zombieTalk:groupType("normal")
end
zombieTalk:register()

for _, hour in ipairs(ZombieEvent.hours) do
	local initEvent = GlobalEvent(format("ZombieEventInit%s", hour))

	function initEvent.onTime(interval)
		if not ZombieEvent:isOff() then return true end
		local day = os.date("%A")
		if not table.contains(ZombieEvent.days, day) then return true end
		ZombieEvent:init()
		return true
	end

	initEvent:time(hour)
	initEvent:register()
end
