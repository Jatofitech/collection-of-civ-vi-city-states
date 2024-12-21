-- JTF_OLOMOUC_ModSupport
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
VALUES	('JTF_CIVILIZATION_OLOMOUC',	1078);

--======================
--YNAMP
--======================
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(MapName,		Civilization,						  X,  Y)
VALUES	('GiantEarth',			'JTF_CIVILIZATION_OLOMOUC', 24, 66),
		('GreatestEarthMap',	'JTF_CIVILIZATION_OLOMOUC', 52, 51),
		('LargeEurope',			'JTF_CIVILIZATION_OLOMOUC', 39, 44),
		('LargestEarthCustom',	'JTF_CIVILIZATION_OLOMOUC', 29, 86),
		('PlayEuropeAgain',		'JTF_CIVILIZATION_OLOMOUC', 50, 51),
		('SkylarSaphyr_Mediterranean_Map',		'JTF_CIVILIZATION_OLOMOUC', 46, 54);