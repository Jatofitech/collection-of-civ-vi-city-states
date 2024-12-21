
--------------------------------------------------------------

--=====
--TYPES
--=====
INSERT INTO Types (Type, Kind)
	VALUES
		('JTF_CIVILIZATION_PULA',				'KIND_CIVILIZATION'),
		('JTF_LEADER_MINOR_CIV_PULA',			'KIND_LEADER'),
		('JTF_MINOR_CIV_PULA_TRAIT',			'KIND_TRAIT');

--===============
--TYPE PROPERTIES
--===============
INSERT INTO TypeProperties (Type, Name, Value)
	VALUES
		('JTF_CIVILIZATION_PULA', 'CityStateCategory', 'MILITARISTIC');

--=============
--CIVILIZATIONS
--=============
INSERT INTO Civilizations (CivilizationType, Name, Description, Adjective, StartingCivilizationLevelType, RandomCityNameDepth, Ethnicity)
	VALUES
		('JTF_CIVILIZATION_PULA', 'LOC_JTF_CIVILIZATION_PULA_NAME', 'LOC_JTF_CIVILIZATION_PULA_DESCRIPTION', 'LOC_JTF_CIVILIZATION_PULA_ADJECTIVE', 'CIVILIZATION_LEVEL_CITY_STATE', 1, 'ETHNICITY_EURO'); 

--=======
--LEADERS
--=======
INSERT INTO CivilizationLeaders (CivilizationType, LeaderType, CapitalName)
	VALUES
		('JTF_CIVILIZATION_PULA', 'JTF_LEADER_MINOR_CIV_PULA', 'LOC_JTF_CITY_NAME_PULA');

INSERT INTO Leaders (LeaderType, Name, InheritFrom)
	VALUES
		('JTF_LEADER_MINOR_CIV_PULA', 'LOC_JTF_CIVILIZATION_PULA_NAME', 'LEADER_MINOR_CIV_MILITARISTIC');

--======
--TRAITS
--======
INSERT INTO LeaderTraits (LeaderType, TraitType)
	VALUES
		('JTF_LEADER_MINOR_CIV_PULA', 'JTF_MINOR_CIV_PULA_TRAIT');

INSERT INTO Traits (TraitType, Name, Description)
	VALUES
		('JTF_MINOR_CIV_PULA_TRAIT', 'LOC_JTF_LEADER_TRAIT_PULA_NAME', 'LOC_JTF_LEADER_TRAIT_PULA_DESCRIPTION');

--===============
--TRAIT MODIFIERS
--===============
INSERT INTO TraitModifiers (TraitType, ModifierId)
	VALUES
		('JTF_MINOR_CIV_PULA_TRAIT', 'MINOR_CIV_PULA_INFLUENCE_BONUS');

--=========
--MODIFIERS
--=========
INSERT INTO Modifiers (ModifierId,						ModifierType,											SubjectRequirementSetId)	
	VALUES
		('MINOR_CIV_PULA_INFLUENCE_BONUS',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',					'PLAYER_IS_SUZERAIN'),
		('MINOR_CIV_PULA_INFLUENCE_BONUS_MODIFIER',		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	NULL);



--==================
--MODIFIER ARGUMENTS
--==================
INSERT INTO ModifierArguments (ModifierId, Name, Value)
	VALUES
		('MINOR_CIV_PULA_INFLUENCE_BONUS',					'ModifierId',	'MINOR_CIV_PULA_INFLUENCE_BONUS_MODIFIER'),
		('MINOR_CIV_PULA_INFLUENCE_BONUS_MODIFIER',			'Amount',		50),
		('MINOR_CIV_PULA_INFLUENCE_BONUS_MODIFIER',			'DistrictType', 'DISTRICT_ARSENAL');
--==========
--CITY NAMES
--==========		
INSERT INTO CityNames (CivilizationType, CityName)
	VALUES
		('JTF_CIVILIZATION_PULA', 'LOC_JTF_CITY_NAME_PULA');

--=============
--PLAYER COLORS
--=============
INSERT INTO PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, TextColor)
	VALUES
		('JTF_CIVILIZATION_PULA', 'Minor', 'COLOR_PLAYER_CITY_STATE_PRIMARY', 'COLOR_PLAYER_CITY_STATE_MILITARISTIC_SECONDARY', 'COLOR_PLAYER_CITY_STATE_MILITARISTIC_SECONDARY');

--============
--START BIASES
--============

		
INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier)
	VALUES
		('JTF_CIVILIZATION_PULA', 'TERRAIN_COAST', 1),
		('JTF_CIVILIZATION_PULA', 'TERRAIN_PLAINS_HILLS', 2);
