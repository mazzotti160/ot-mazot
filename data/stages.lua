-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 20,
	},
	{
		minlevel = 9,
		maxlevel = 200,
		multiplier = 600,
	},
	{
		minlevel = 201,
		maxlevel = 500,
		multiplier = 450,
	},
	{
		minlevel = 501,
		maxlevel = 750,
		multiplier = 300,
	},	
	{
		minlevel = 751,
		maxlevel = 1000,
		multiplier = 100,
	},
	{
		minlevel = 1001,
		maxlevel = 1400,
		multiplier = 30,
	},	
	{
		minlevel = 1401,
		maxlevel = 1800,
		multiplier = 10,
	},	
	{
		minlevel = 1801,
		maxlevel = 3000,
		multiplier = 3,
	},		
	{
		minlevel = 3001,
		multiplier = 1,
	},
}

skillsStages = {
	{
		minlevel = 10,
		maxlevel = 100,
		multiplier = 100,  -- 50 * 100
	},
	{
		minlevel = 101,
		maxlevel = 130,
		multiplier = 30,  -- 20 * 100
	},
	{
		minlevel = 131,
		maxlevel = 140,		
		multiplier = 5,   -- 4 * 100
	},
	{
		minlevel = 141,
		maxlevel = 150,		
		multiplier = 2,   -- 4 * 100
	},	
	{
		minlevel = 151,
		maxlevel = 180,		
		multiplier = 1,   -- 2 * 100
	},	
	{
		minlevel = 181,
		maxlevel = 200,		
		multiplier = 4,   -- 4 * 100
	},
	{
		minlevel = 200,
		multiplier = 6,    -- 6 * 100
	},	
}

magicLevelStages = {
	{
		minlevel = 10,
		maxlevel = 100,
		multiplier = 100,  -- 50 * 100
	},
	{
		minlevel = 101,
		maxlevel = 130,
		multiplier = 30,  -- 20 * 100
	},
	{
		minlevel = 131,
		maxlevel = 140,		
		multiplier = 5,   -- 4 * 100
	},
	{
		minlevel = 141,
		maxlevel = 150,		
		multiplier = 2,   -- 4 * 100
	},	
	{
		minlevel = 151,
		maxlevel = 180,		
		multiplier = 1,   -- 2 * 100
	},	
	{
		minlevel = 181,
		maxlevel = 200,		
		multiplier = 4,   -- 4 * 100
	},
	{
		minlevel = 200,
		multiplier = 6,    -- 6 * 100
	},	
}