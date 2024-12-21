
--------------------------------------------------------------

--=====
--TYPES
--=====
INSERT INTO Types (Type, Kind)
	VALUES
		('JTF_CIVILIZATION_KREMNICA',				'KIND_CIVILIZATION'),
		('JTF_LEADER_MINOR_CIV_KREMNICA',			'KIND_LEADER'),
		('JTF_MINOR_CIV_KREMNICA_TRAIT',			'KIND_TRAIT');

--===============
--TYPE PROPERTIES
--===============
INSERT INTO TypeProperties (Type, Name, Value)
	VALUES
		('JTF_CIVILIZATION_KREMNICA', 'CityStateCategory', 'TRADE');

--=============
--CIVILIZATIONS
--=============
INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
	VALUES
		('JTF_CIVILIZATION_KREMNICA', 'LOC_JTF_CIVILIZATION_KREMNICA_NAME', 'LOC_JTF_CIVILIZATION_KREMNICA_DESCRIPTION', 'LOC_JTF_CIVILIZATION_KREMNICA_ADJECTIVE', 'CIVILIZATION_LEVEL_CITY_STATE', 1, 'ETHNICITY_EURO'); 

--=======
--LEADERS
--=======
INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
	VALUES
		('JTF_CIVILIZATION_KREMNICA', 'JTF_LEADER_MINOR_CIV_KREMNICA', 'LOC_JTF_CITY_NAME_KREMNICA');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
	VALUES
		('JTF_LEADER_MINOR_CIV_KREMNICA', 'LOC_JTF_CIVILIZATION_KREMNICA_NAME', 'LEADER_MINOR_CIV_TRADE');

--======
--TRAITS
--======
INSERT INTO LeaderTraits (LeaderType, TraitType)
	VALUES
		('JTF_LEADER_MINOR_CIV_KREMNICA', 'JTF_MINOR_CIV_KREMNICA_TRAIT');

INSERT INTO Traits (TraitType, Name, Description)
	VALUES
		('JTF_MINOR_CIV_KREMNICA_TRAIT', 'LOC_JTF_LEADER_TRAIT_KREMNICA_NAME', 'LOC_JTF_LEADER_TRAIT_KREMNICA_DESCRIPTION');

--===============
--TRAIT MODIFIERS
--===============
INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES
		('JTF_MINOR_CIV_KREMNICA_TRAIT', 'MINOR_CIV_KREMNICA_SUZERAIN_LUXURY_MINE'),
		('JTF_MINOR_CIV_KREMNICA_TRAIT', 'MINOR_CIV_KREMNICA_SUZERAIN_BONUS_MINE');

--=========
--MODIFIERS
--=========
INSERT INTO Modifiers (ModifierId,						ModifierType,										SubjectRequirementSetId)	
	VALUES
		('MINOR_CIV_KREMNICA_SUZERAIN_LUXURY_MINE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'),
		('MINOR_CIV_KREMNICA_SUZERAIN_BONUS_MINE',		'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',				'PLAYER_IS_SUZERAIN'),

		('MINOR_CIV_KREMNICA_LUXURY_MINE_MODIFIER',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'REQSET_JTF_LUXURY_AND_MINE'),
		('MINOR_CIV_KREMNICA_BONUS_MINE_MODIFIER',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'REQSET_JTF_BONUS_AND_MINE');

--==================
--MODIFIER ARGUMENTS
--==================
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES
		('MINOR_CIV_KREMNICA_SUZERAIN_LUXURY_MINE',				'ModifierId',		'MINOR_CIV_KREMNICA_LUXURY_MINE_MODIFIER'),
		('MINOR_CIV_KREMNICA_LUXURY_MINE_MODIFIER',             'YieldType',		'YIELD_GOLD'),
		('MINOR_CIV_KREMNICA_LUXURY_MINE_MODIFIER',             'Amount',			 3),

		('MINOR_CIV_KREMNICA_SUZERAIN_BONUS_MINE',				'ModifierId',		'MINOR_CIV_KREMNICA_BONUS_MINE_MODIFIER'),
		('MINOR_CIV_KREMNICA_BONUS_MINE_MODIFIER',				'YieldType',		'YIELD_GOLD'),
		('MINOR_CIV_KREMNICA_BONUS_MINE_MODIFIER',				'Amount',			 3);

--==================
--?EQUIREMENTS
--==================
INSERT INTO RequirementSets
        (RequirementSetId,                         RequirementSetType)
VALUES  ('REQSET_JTF_LUXURY_AND_MINE',				'REQUIREMENTSET_TEST_ALL'),
		('REQSET_JTF_BONUS_AND_MINE',				'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSetRequirements
        (RequirementSetId,							RequirementId)
VALUES  ('REQSET_JTF_LUXURY_AND_MINE',				'REQ_JTF_KREMNICA_REQUIRES_IMPROVEMENT_IS_MINE'),
		('REQSET_JTF_LUXURY_AND_MINE',				'REQUIRES_PLOT_HAS_LUXURY'),
		
		('REQSET_JTF_BONUS_AND_MINE',				'REQ_JTF_KREMNICA_REQUIRES_IMPROVEMENT_IS_MINE'),
		('REQSET_JTF_BONUS_AND_MINE',				'REQUIRES_PLOT_HAS_BONUS');		

INSERT INTO Requirements
        (RequirementId,											RequirementType)
VALUES  ('REQ_JTF_KREMNICA_REQUIRES_IMPROVEMENT_IS_MINE',		'REQUIREMENT_PLOT_IMPROVEMENT_TYPE_MATCHES');

INSERT INTO RequirementArguments
        (RequirementId,											 Name,					Value)
VALUES  ('REQ_JTF_KREMNICA_REQUIRES_IMPROVEMENT_IS_MINE',		'ImprovementType',		'IMPROVEMENT_MINE');


--==========
--CITY NAMES
--==========		
INSERT INTO CityNames (CivilizationType, CityName)
	VALUES
		('JTF_CIVILIZATION_KREMNICA', 'LOC_JTF_CITY_NAME_KREMNICA');

--=============
--PLAYER COLORS
--=============
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
	VALUES
		('JTF_CIVILIZATION_KREMNICA', 'Minor', 'COLOR_PLAYER_CITY_STATE_PRIMARY', 'COLOR_PLAYER_CITY_STATE_TRADE_SECONDARY', 'COLOR_PLAYER_CITY_STATE_TRADE_SECONDARY');

--============
--START BIASES
--============

		
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
	VALUES
		('JTF_CIVILIZATION_KREMNICA', 'TERRAIN_GRASS_HILLS', 1);