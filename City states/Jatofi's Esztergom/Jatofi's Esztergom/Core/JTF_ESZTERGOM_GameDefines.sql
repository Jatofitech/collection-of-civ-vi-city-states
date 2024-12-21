
--------------------------------------------------------------

--=====
--TYPES
--=====
INSERT INTO Types (Type, Kind)
	VALUES
		('JTF_CIVILIZATION_ESZTERGOM',				'KIND_CIVILIZATION'),
		('JTF_LEADER_MINOR_CIV_ESZTERGOM',			'KIND_LEADER'),
		('JTF_MINOR_CIV_ESZTERGOM_TRAIT',			'KIND_TRAIT');

--===============
--TYPE PROPERTIES
--===============
INSERT INTO TypeProperties (Type, Name, Value)
	VALUES
		('JTF_CIVILIZATION_ESZTERGOM', 'CityStateCategory', 'RELIGIOUS');

--=============
--CIVILIZATIONS
--=============
INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
	VALUES
		('JTF_CIVILIZATION_ESZTERGOM', 'LOC_JTF_CIVILIZATION_ESZTERGOM_NAME', 'LOC_JTF_CIVILIZATION_ESZTERGOM_DESCRIPTION', 'LOC_JTF_CIVILIZATION_ESZTERGOM_ADJECTIVE', 'CIVILIZATION_LEVEL_CITY_STATE', 1, 'ETHNICITY_EURO'); 

--=======
--LEADERS
--=======
INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
	VALUES
		('JTF_CIVILIZATION_ESZTERGOM', 'JTF_LEADER_MINOR_CIV_ESZTERGOM', 'LOC_JTF_CITY_NAME_ESZTERGOM');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
	VALUES
		('JTF_LEADER_MINOR_CIV_ESZTERGOM', 'LOC_JTF_CIVILIZATION_ESZTERGOM_NAME', 'LEADER_MINOR_CIV_RELIGIOUS');

--======
--TRAITS
--======
INSERT INTO LeaderTraits (LeaderType, TraitType)
	VALUES
		('JTF_LEADER_MINOR_CIV_ESZTERGOM', 'JTF_MINOR_CIV_ESZTERGOM_TRAIT');

INSERT INTO Traits (TraitType, Name, Description)
	VALUES
		('JTF_MINOR_CIV_ESZTERGOM_TRAIT', 'LOC_JTF_LEADER_TRAIT_ESZTERGOM_NAME', 'LOC_JTF_LEADER_TRAIT_ESZTERGOM_DESCRIPTION');

--===============
--TRAIT MODIFIERS
--===============
INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES
		('JTF_MINOR_CIV_ESZTERGOM_TRAIT', 'MINOR_CIV_ESZTERGOM_UNIQUE_SUZERAIN_BONUS');

--=========
--MODIFIERS
--=========
INSERT INTO Modifiers (ModifierId,						ModifierType,										SubjectRequirementSetId,			SubjectStackLimit)	
	VALUES
		('MINOR_CIV_ESZTERGOM_UNIQUE_SUZERAIN_BONUS',	'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN',				NULL),
		('MINOR_CIV_ESZTERGOM_COM_HUB_FAITH_BONUS',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',	'REQSET_JTF_IS_COMMERCIAL_HUB',		1);

		--MODIFIER_PLAYER_DISTRICT_ADJUST_YIELD_CHANGE
--==================
--MODIFIER ARGUMENTS
--==================
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES
		('MINOR_CIV_ESZTERGOM_UNIQUE_SUZERAIN_BONUS',			'ModifierId',		'MINOR_CIV_ESZTERGOM_COM_HUB_FAITH_BONUS'),
		('MINOR_CIV_ESZTERGOM_COM_HUB_FAITH_BONUS',             'YieldType',		'YIELD_FAITH'),
		('MINOR_CIV_ESZTERGOM_COM_HUB_FAITH_BONUS',             'Amount',			 3);

--==================
--REQUIREMENTS 
--==================
INSERT INTO RequirementSets (RequirementSetId, RequirementSetType)	
	VALUES
		('REQSET_JTF_IS_COMMERCIAL_HUB', 'REQUIREMENTSET_TEST_ALL');
		
INSERT INTO RequirementSetRequirements (RequirementSetId, RequirementId)	
	VALUES
		('REQSET_JTF_IS_COMMERCIAL_HUB', 'REQUIRES_DISTRICT_IS_COMMERCIAL_HUB');

--==========
--CITY NAMES
--==========		
INSERT INTO CityNames (CivilizationType, CityName)
	VALUES
		('JTF_CIVILIZATION_ESZTERGOM', 'LOC_JTF_CITY_NAME_ESZTERGOM');

--=============
--PLAYER COLORS
--=============
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
	VALUES
		('JTF_CIVILIZATION_ESZTERGOM', 'Minor', 'COLOR_PLAYER_CITY_STATE_PRIMARY', 'COLOR_PLAYER_CITY_STATE_RELIGIOUS_SECONDARY', 'COLOR_PLAYER_CITY_STATE_RELIGIOUS_SECONDARY');

--============
--START BIASES
--============

		
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
	VALUES
		('JTF_CIVILIZATION_ESZTERGOM', 'TERRAIN_PLAINS', 1),
		('JTF_CIVILIZATION_ESZTERGOM', 'TERRAIN_GRASS', 2);



--==========================================================================================================================
-- GEDEMON HISTORICAL START DATES
--==========================================================================================================================
-- HistoricalSpawnDates 
----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS HistoricalSpawnDates	(Civilization TEXT NOT NULL UNIQUE,	StartYear INTEGER DEFAULT -10000);
INSERT OR REPLACE INTO HistoricalSpawnDates
		(Civilization,				StartYear) 
VALUES	('JTF_CIVILIZATION_ESZTERGOM',	972);

--======================
--YNAMP
--======================
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(MapName,		Civilization,						  X,  Y)
VALUES	('GiantEarth',			'JTF_CIVILIZATION_ESZTERGOM', 25, 65),
		('LargeEurope',			'JTF_CIVILIZATION_ESZTERGOM', 43, 40),
		('PlayEuropeAgain',		'JTF_CIVILIZATION_ESZTERGOM', 54, 45),
		('LargestEarthCustom',	'JTF_CIVILIZATION_ESZTERGOM', 32, 81),
		('GreatestEarthMap',	'JTF_CIVILIZATION_ESZTERGOM', 54, 49);