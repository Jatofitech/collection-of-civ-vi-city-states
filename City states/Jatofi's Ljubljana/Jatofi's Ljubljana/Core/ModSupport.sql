-- JTF_LJUBLJANA_ModSupport
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
VALUES	('JTF_CIVILIZATION_LJUBLJANA',	1112);

--======================
--YNAMP
--======================
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(MapName,		Civilization,						  X,  Y)
VALUES	('GiantEarth',			'JTF_CIVILIZATION_LJUBLJANA', 22, 63),
		('GreatestEarthMap',	'JTF_CIVILIZATION_LJUBLJANA', 53, 48),
		('LargeEurope',			'JTF_CIVILIZATION_LJUBLJANA', 38, 39),
		('LargestEarthCustom',	'JTF_CIVILIZATION_LJUBLJANA', 30, 80),
		('PlayEuropeAgain',		'JTF_CIVILIZATION_LJUBLJANA', 47, 43),
		('SkylarSaphyr_Mediterranean_Map',		'JTF_CIVILIZATION_LJUBLJANA', 45, 42);
