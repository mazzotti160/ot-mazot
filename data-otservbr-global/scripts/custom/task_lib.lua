taskOptions = {
	bonusReward = 65001, -- storage bonus reward
	bonusRate = 2, -- rate bonus reward
	taskBoardPositions = {
        {x = 32398, y = 32228, z = 7}, --(32398, 32228, 7)
        {x = 32343, y = 32219, z = 7}, --(32343, 32219, 7)
    },
	selectLanguage = 1, -- options: 1 = pt_br or 2 = english
	uniqueTask = true, -- do one task at a time
	uniqueTaskStorage = 65002
}

task_pt_br = {
	exitButton = "Fechar",
	confirmButton = "Validar",
	cancelButton = "Anular",
	returnButton = "Voltar",
	title = "Quadro De Missões",
	missionError = "Missão esta em andamento ou ela já foi concluida.",
	uniqueMissionError = "Você só pode fazer uma missão por vez.",
	missionErrorTwo = "Você concluiu a missão",
	missionErrorTwoo = "\nAqui estão suas recompensas:",
	choiceText = "- Experiência: ",
	messageAcceptedText = "Você aceitou essa missão!",
	messageDetailsText = "Detalhes da missão:",
	choiceMonsterName = "Missão: ",
	choiceMonsterRace = "Raças: ",
	choiceMonsterKill = "Abates: ",
	choiceEveryDay = "Repetição: Todos os dias",
	choiceRepeatable = "Repetição: Sempre",
	choiceOnce = "Repetição: Apenas uma vez",
	choiceReward = "Recompensas:",
	messageAlreadyCompleteTask = "Você já concluiu essa missão.",
	choiceCancelTask = "Você cancelou essa missão",
	choiceCancelTaskError = "Você não pode cancelar essa missão, porque ela já foi concluída ou não foi iniciada.",
	choiceBoardText = "Escolha uma missão e use os botões abaixo:",
	choiceRewardOnHold = "Resgatar Prêmio",
	choiceDailyConclued = "Diária Concluída",
	choiceConclued = "Concluída",
	messageTaskBoardError = "O quadro de missões esta muito longe ou esse não é o quadro de missões correto.",
	messageCompleteTask = "Você terminou essa missão! \nRetorne para o quadro de missões e pegue sua recompensa.",
}

taskConfiguration = {
{name = "Stonerefiners", color = 40, total = 250, type = "daily", storage = 190000, storagecount = 190001, 
	rewards = {
	{3043, 20},	
	{22722, 1}, --exercise reward token
	{"exp", 100000},
	},
	races = {
		"Stonerefiner",
	},
},

{name = "Oramond", color = 40, total = 450, type = "daily", storage = 190002, storagecount = 190003, 
	rewards = {
	{3043, 20},	
	{22722, 1}, --exercise reward token
	{"exp", 100000},
	},
	races = {
		"Minotaur Hunter",
		"Mooh'Tah Warrior",
		"Worm Priestess",
		"Minotaur Amazon",
		"Execowtioner",
		"Moohtant",
		"Blood Beast",
		"Devourer",
		"Glooth Golem",	
		"Rot Elemental",
		"Rustheap Golem",		
		"Walker",
		"Rot Elemental",		
	},
},

{name = "Feyrist", color = 40, total = 450, type = "daily", storage = 190004, storagecount = 190005, 
	rewards = {
	{3043, 20},	
	{22722, 1}, --exercise reward token
	{"exp", 100000},
	},
	races = {
		"Boogy",
		"Dark Faun",
		"Enfeebled Silencer",
		"Faun",
		"Nymph",
		"Pixie",
		"Pooka",
		"Swan Maiden",
		"Twisted Pooka",
		"Weakened Frazzlemaw",
		"Wisp",
	},
},

{name = "Glooths", color = 40, total = 600, type = "daily", storage = 190006, storagecount = 190007, 
	rewards = {
	{3043, 20},	
	{22722, 1}, --exercise reward token
	{"exp", 100000},
	},
	races = {
		"Glooth Bandit",
		"Glooth Brigand",
	},
},

{name = "Banuta", color = 40, total = 400, type = "daily", storage = 190008, storagecount = 190009, 
	rewards = { 
	{3043, 20},	
	{22722, 1}, --exercise reward token
	{"exp", 100000},
	},
	races = {
		"Hydra",
		"Serpent Spawn",
		"Medusa",
	},
},

{name = "Hyaena Lairs", color = 40, total = 500, type = "daily", storage = 190010, storagecount = 190011, 
	rewards = { 
	{3043, 30},	
	{22722, 1}, --exercise reward token
	{"exp", 250000},
	},
	races = {
		"Werehyaena Shaman",
		"Werehyaena",
	},
},

{name = "Hero Fortress", color = 40, total = 600, type = "daily", storage = 190012, storagecount = 190013, 
	rewards = { 
	{3043, 30},	
	{22722, 1}, --exercise reward token
	{"exp", 250000},
	},
	races = {
		"Blood Priest",
		"Bonebeast",
		"Hero",
		"Necromancer",
		"Renegade Knight",
		"Undead Gladiator",
		"Vicious Squire",
		"Vile Grandmaster",
	},
},

{name = "Winter e Summercourt", color = 40, total = 1000, type = "daily", storage = 190014, storagecount = 190015, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
		"Soul-Broken Harbinger",
		"Arachnophobica",
		"Crazed Summer Rearguard",
		"Crazed Summer Vanguard",
		"Crazed Winter Rearguard",
		"Crazed Winter Vanguard",
		"Insane Siren",
		"Thanatursus",
	},
},

{name = "Carnivors", color = 40, total = 1000, type = "daily", storage = 190016, storagecount = 190017, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
		"Lumbering Carnivor",
		"Menacing Carnivor",
		"Spiky Carnivor",
	},
},

{name = "Spectres", color = 40, total = 1000, type = "daily", storage = 190018, storagecount = 190019, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
		"Burster Spectre",
		"Gazer Spectre",
		"Ripper Spectre",		
	},
},

{name = "Lion Sanctum", color = 40, total = 1000, type = "daily", storage = 190020, storagecount = 190021, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
		"Werelion",
		"Werelioness",
		"White Lion",
	},
},

{name = "Roshamuul", color = 40, total = 1250, type = "daily", storage = 190022, storagecount = 190023, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
		"Frazzlemaw",
		"Guzzlemaw",
		"Silencer",
		"Shock Head",
		"Retching Horror",
		"Choking Fear",
		"Demon Outcast",
		"Sight of Surrender",		
	},
},

{name = "Falcon Bastion", color = 40, total = 1250, type = "daily", storage = 190024, storagecount = 190025, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
		"Falcon Knight",
		"Falcon Paladin",		
	},
},

{name = "Cobra Bastion", color = 40, total = 1250, type = "daily", storage = 190026, storagecount = 190027, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
		"Cobra Vizier",
		"Cobra Assassin",
		"Cobra Scout",		
	},
},

{name = "Issavi", color = 40, total = 1500, type = "daily", storage = 190028, storagecount = 190029, 
	rewards = { 
	{3043, 75},	
	{22722, 3}, --exercise reward token
	{"exp", 750000},
	},
	races = {
"Bashmu",
"Juvenile Bashmu",	
"Adult Goanna",
"Black Sphinx Acolyte",
"Burning Gladiator",
"Crypt Warden",
"Feral Sphinx",
"Lamassu",
"Manticore",
"Priestess of the Wild Sun",
"Sphinx",
"Young Goanna",
"Venerable Girtablilu",
"Girtablilu Warrior",
	},
},

{name = "DT Inq", color = 40, total = 1500, type = "daily", storage = 190030, storagecount = 190031, 
	rewards = { 
	{3043, 50},	
	{22722, 2}, --exercise reward token
	{"exp", 500000},
	},
	races = {
"Betrayed Wraith",
"Dark Torturer",
"Hand of Cursed Fate",
"Lost Soul",
	},
},

{name = "Warzones 4,5,6", color = 40, total = 1000, type = "daily", storage = 190032, storagecount = 190033, 
	rewards = { 
	{3043, 75},	
	{22722, 3}, --exercise reward token
	{"exp", 750000},
	},
	races = {
		"Ravenous Lava Lurker",
		"Lava Lurker",
		"Chasm Spawn",
		"Drillworm",
		"Elder Wyrm",
		"Diremaw",
		"Deepworm",
		"Tunnel Tyrant",
		"Cave Devourer",		
		"High Voltage Elemental",		
	},
},

{name = "Ingol, Marapur", color = 40, total = 1250, type = "daily", storage = 190034, storagecount = 190035, 
	rewards = { 
	{3043, 75},	
	{22722, 3}, --exercise reward token
	{"exp", 750000},
	},
	races = {
		"Liodile",
		"Carnivostrich",
		"Boar Man",
		"Harpy",
		"Rhindeer",
		"Crape Man",
		"Foam Stalker",
		"Two-Headed Turtle",
		"Makara",
		"Naga Warrior",
		"Naga Archer",
		
	},
},

{name = "Bulltaurs, Megadragons", color = 40, total = 1250, type = "daily", storage = 190036, storagecount = 190037, 
	rewards = { 
	{3043, 75},	
	{22722, 3}, --exercise reward token
	{"exp", 750000},
	},
	races = {
		"Mega Dragon",
		"Wardragon",
		"Dragolisk",
		"Bulltaur Alchemist",
		"Bulltaur Brute",
		"Bulltaur Forgepriest",
	},
},

{name = "Ferumbras Ascendant", color = 40, total = 1000, type = "daily", storage = 190046, storagecount = 190047, 
	rewards = { 
	{3043, 75},	
	{22722, 3}, --exercise reward token
	{"exp", 750000},
	},
	races = {
		"Grimeleech",
		"Vexclaw",
		"Hellflayer",
		"Juggernaut",
		"Undead Dragon",
		"Plaguesmith",
		"Defiler",
		"Demon",
	},
},

{name = "The Secret Library", color = 40, total = 1250, type = "daily", storage = 190048, storagecount = 190049, 
	rewards = { 
	{3043, 100},	
	{22722, 4}, --exercise reward token
	{"exp", 1000000},
	},
	races = {
		"Icecold Book",
		"Animated Feather",
		"Squid Warden",
		"Cursed Book",
		"Biting Book",
		"Ink Blob",
		"Burning Book",
		"Rage Squid",
		"Guardian of Tales",
		"Flying Book",
		"Brain Squid",
		"Energuardian of Tales",
		"Energetic Book",
		"Knowledge Elemental",		
		
	},
},

{name = "Warzone 7,8,9", color = 40, total = 1250, type = "daily", storage = 190050, storagecount = 190051, 
	rewards = { 
	{3043, 100},	
	{22722, 4}, --exercise reward token
	{"exp", 1000000},
	},
	races = {
"Afflicted Strider", 
"Blemished Spawn", 
"Cave Chimera", 
"Eyeless Devourer", 
"Lavafungus", 
"Lavaworm", 
"Streaked Devourer", 
"Tremendous Tyrant", 
"Varnished Diremaw",	
	},
},

{name = "Zarganash Lost Souls", color = 40, total = 1250, type = "daily", storage = 190038, storagecount = 190039, 
	rewards = { 
	{3043, 100},	
	{22722, 4}, --exercise reward token
	{"exp", 1000000},
	},
	races = {
		"Freakish Lost Soul",
		"Mean Lost Soul",
		"Flimsy Lost Soul",		
	},
},

{name = "Gnomprona", color = 40, total = 15000, type = "daily", storage = 190040, storagecount = 190041, 
	rewards = { 
	{3043, 200},
	{"exp", 2000000},
	{39546, 1}, --bag
	},
	races = {
		"Stalking Stalk",
		"Nighthunter",
		"Undertaker",
		"Sulphider",
"Gorerilla",
"Sulphur Spouter",
"Gore Horn",
"Hulking Prehemoth",
"Emerald Tortoise",
"Sabretooth",
"Mercurial Menace",
"Shrieking Cry-Stal",
"Mantosaurus",
"Headpecker",
"Noxious Ripptor",
	},
},

{name = "Soul War", color = 40, total = 15000, type = "daily", storage = 190042, storagecount = 190043, 
	rewards = {   
	{3043, 200},
	{"exp", 2000000},
	{34109, 1}, --bag
	},
	races = {
"Turbulent Elemental",
"Infernal Demon",
"Infernal Phantom",
"Brachiodemon",
"Cloak of Terror",
"Mould Phantom",
"Rotten Golem",
"Branchy Crawler",
"Many Faces",
"Capricious Phantom",
"Bony Sea Devil",
"Courage Leech",
"Vibrant Phantom",
"Mirror Image",
"Distorted Phantom"

	},
},

{name = "Rotten Blood", color = 40, total = 30000, type = "daily", storage = 190044, storagecount = 190045, 
	rewards = { 
	{3043, 200},
	{"exp", 4000000},
	{43895, 1}, --bag
	},
	races = {
"Oozing Corpus",
"Mycobiontic Beetle",
"Bloated Man-Maggot",
"Rotten Man-Maggot",
"Sopping Corpus",
"Oozing Carcass",
"Meandering Mushroom",
"Sopping Carcass",
"Converter",
"Wandering Pillar",
"Darklight Emitter",
"Darklight Construct",
"Darklight Striker",
"Darklight Matter",
"Walking Pillar",
"Darklight Source"

	},
},
}

squareWaitTime = 5000
taskQuestLog = 65000 -- A storage so you get the quest log
dailyTaskWaitTime = 20 * 60 * 60 

function Player.getCustomActiveTasksName(self)
local player = self
	if not player then
		return false
	end
local tasks = {}
	for i, data in pairs(taskConfiguration) do
		if player:getStorageValue(data.storagecount) ~= -1 then
		tasks[#tasks + 1] = data.name
		end
	end
	return #tasks > 0 and tasks or false
end


function getTaskByStorage(storage)
	for i, data in pairs(taskConfiguration) do
		if data.storage == tonumber(storage) then
			return data
		end
	end
	return false
end

function getTaskByMonsterName(name)
	for i, data in pairs(taskConfiguration) do
		for _, dataList in ipairs(data.races) do
		if dataList:lower() == name:lower() then
			return data
		end
		end
	end
	return false
end

function Player.startTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if player:getStorageValue(taskQuestLog) == -1 then
		player:setStorageValue(taskQuestLog, 1)
	end
	player:setStorageValue(storage, player:getStorageValue(storage) + 1)
	player:setStorageValue(data.storagecount, 0)
	return true
end

function Player.canStartCustomTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	if data.type == "daily" then
		return os.time() >= player:getStorageValue(storage)
	elseif data.type == "daily" then
		return player:getStorageValue(storage) == -1
	elseif data.type[1] == "daily" and data.type[2] ~= -1 then
		return player:getStorageValue(storage) < (data.type[2] - 1)
	else
		return true
	end
end

function Player.endTask(self, storage, prematurely)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
end
	if prematurely then
		if data.type == "daily" then
			player:setStorageValue(storage, -1)
		else
			player:setStorageValue(storage, player:getStorageValue(storage) - 1)
	end
	else
		if data.type == "daily" then
			player:setStorageValue(storage, os.time() + dailyTaskWaitTime)
		end
	end
	player:setStorageValue(data.storagecount, -1)
	return true
end

function Player.hasStartedTask(self, storage)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	return player:getStorageValue(data.storagecount) ~= -1
end


function Player.getTaskKills(self, storage)
local player = self
	if not player then
		return false
	end
	return player:getStorageValue(storage)
end

function Player.addTaskKill(self, storage, count)
local player = self
	if not player then
		return false
	end
local data = getTaskByStorage(storage)
	if data == false then
		return false
	end
	local kills = player:getTaskKills(data.storagecount)
	if kills >= data.total then
		return false
	end
	if kills + count >= data.total then
		if taskOptions.selectLanguage == 1 then
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, task_pt_br.messageCompleteTask)
		else
		player:sendTextMessage(MESSAGE_EVENT_ADVANCE, "[Task System] You have finished this task! To claim your rewards, return to the quest board and claim your reward.")
		end
		return player:setStorageValue(data.storagecount, data.total)
	end
		player:say('Task: '..data.name ..' - ['.. kills + count .. '/'.. data.total ..']', TALKTYPE_MONSTER_SAY)
		return player:setStorageValue(data.storagecount, kills + count)
end