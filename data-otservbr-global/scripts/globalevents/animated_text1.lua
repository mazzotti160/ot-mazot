local textFloat = GlobalEvent("textFloat")

local effects = {
--rookgaard
    {position = Position(32094, 32218, 7), text = 'Trainers', effect = 176}, --(32094, 32218, 7)
    {position = Position(32100, 32218, 7), text = 'The Oracle', effect = 176},
--tp q leva pro templo
    {position = Position(32342, 32245, 7), text = 'Templo', effect = 176},
    {position = Position(32352, 32245, 7), text = 'Templo', effect = 176},
    {position = Position(32347, 32241, 6), text = 'Templo', effect = 176},
    {position = Position(32165, 32275, 7), text = 'Templo', effect = 176},
    {position = Position(32200, 32292, 5), text = 'Templo', effect = 176},	
    {position = Position(32201, 32292, 5), text = 'Templo', effect = 176},	
    {position = Position(32200, 32292, 4), text = 'Templo', effect = 176},	
    {position = Position(32201, 32292, 4), text = 'Templo', effect = 176},	
    {position = Position(32200, 32292, 3), text = 'Templo', effect = 176},	
    {position = Position(32201, 32292, 3), text = 'Templo', effect = 176},	
    {position = Position(1114, 1096, 7), text = 'Templo', effect = 176},	
    {position = Position(1116, 1092, 7), text = 'Training', effect = 176},	
    {position = Position(32258, 32232, 6), text = 'Templo', effect = 176},		
    {position = Position(32258, 32236, 5), text = 'Templo', effect = 176},	
    {position = Position(32258, 32233, 4), text = 'Templo', effect = 176},	
    {position = Position(32258, 32236, 3), text = 'Templo', effect = 176},	
    {position = Position(33514, 32374, 11), text = 'Templo', effect = 176},	
    {position = Position(32369, 32237, 5), text = 'Templo', effect = 176},	
    {position = Position(32369, 32237, 4), text = 'Templo', effect = 176},	
    {position = Position(32346, 32177, 7), text = 'Templo', effect = 176},		
    --{position = Position, text = 'Templo', effect = 176},		
--end tp q leva pro templo
--teleport dentro do templo
	{position = Position(32369, 32238, 7), text = 'LEIA-ME', effect = 176},
    {position = Position(32360, 32239, 7), text = 'Tasks', effect = 176},	
	{position = Position(32343, 32219, 7), text = 'Tasks', effect = 176},
	{position = Position(32398, 32228, 6), text = 'Task Board', effect = 176},	
    {position = Position(32373, 32243, 7), text = 'Forja e Reward', effect = 176},
    {position = Position(32365, 32243, 7), text = 'Npcs', effect = 176},	
    {position = Position(32373, 32236, 7), text = 'Roleta', effect = 176},	
    {position = Position(32373, 32234, 7), text = 'Raids', effect = 176},	
    {position = Position(32373, 32232, 7), text = 'Daily Bosses', effect = 176},	
    {position = Position(32365, 32232, 7), text = 'Trainers', effect = 176},		
    {position = Position(32365, 32234, 7), text = 'Hunts', effect = 176},	
    {position = Position(32365, 32236, 7), text = 'Quests', effect = 176},	
	{position = Position(32365, 32238, 7), text = 'Depot', effect = 176},	
    {position = Position(32161, 32271, 7), text = 'Easy', effect = 176},	
    {position = Position(32165, 32270, 7), text = 'Medium', effect = 176},	
    {position = Position(32169, 32271, 7), text = 'Hard', effect = 176},	
    {position = Position(32353, 32220, 7), text = 'Daily Boss', effect = 176},	
    {position = Position(32366, 32233, 4), text = 'Heal Pot 1', effect = 176},	
    {position = Position(32369, 32233, 4), text = 'Heal Pot 2', effect = 176},	
    {position = Position(32372, 32233, 4), text = 'Heal Pot 3', effect = 176},	
    {position = Position(32378, 32240, 4), text = 'Addons', effect = 176},	
    {position = Position(32378, 32242, 4), text = 'Mounts', effect = 176},		
	{position = Position(32373, 32238, 7), text = 'Events', effect, 176},	
	{position = Position(32342, 32220, 7), text = 'Daily Arena', effect, 176},		
	{position = Position(32369, 32237, 7), text = 'Craft Castle', effect, 176},
--end quests

    
}

function textFloat.onThink(interval)
    for i = 1, #effects do
        local settings = effects[i]
        local spectators = Game.getSpectators(settings.position, false, true, 5, 5, 5, 5)
        if #spectators > 0 then
            if settings.text then
                for i = 1, #spectators do
                    spectators[i]:say(settings.text, TALKTYPE_MONSTER_SAY, false, spectators[i], settings.position)
                end
            end
            if settings.effect then
                settings.position:sendMagicEffect(settings.effect)
            end
        end
    end
   return true
end

textFloat:interval(8000)
textFloat:register()