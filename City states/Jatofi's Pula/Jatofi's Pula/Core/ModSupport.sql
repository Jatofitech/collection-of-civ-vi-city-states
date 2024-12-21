-- JTF_PULA_ModSupport
-- Author: jakub
-- DateCreated: 7/3/2022 4:03:41 PM
--------------------------------------------------------------
--==========================================================================================================================
-- JTFN HISTORICAL START DATES
--==========================================================================================================================
-- HistoricalSpawnDates 
----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS HistoricalSpawnDates	(Civilization TEXT NOT NULL UNIQUE,	StartYear INTEGER DEFAULT -10000);
INSERT OR REPLACE INTO HistoricalSpawnDates
		(Civilization,				StartYear) 
VALUES	('JTF_CIVILIZATION_PULA',	-177);

--======================
--YNAMP
--======================
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(MapName,		Civilization,						  X,  Y)
VALUES	('GiantEarth',			'JTF_CIVILIZATION_PULA', 22, 61),
		('GreatestEarthMap',	'JTF_CIVILIZATION_PULA', 53, 46),
		('LargeEurope',			'JTF_CIVILIZATION_PULA', 39, 36),
		('LargestEarthCustom',	'JTF_CIVILIZATION_PULA', 29, 77),
		('PlayEuropeAgain',		'JTF_CIVILIZATION_PULA', 48, 40),
		('SkylarSaphyr_SilkRoad_Map',		'JTF_CIVILIZATION_PULA', 18, 36);
		