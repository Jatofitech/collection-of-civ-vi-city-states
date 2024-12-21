-- JTF_TRIESTE_ModSupport
-- Author: jakub
-- DateCreated: 7/3/2022 4:03:41 PM
--------------------------------------------------------------
--==========================================================================================================================
-- GEDEMON HISTORICAL START DATES
--==========================================================================================================================
-- HistoricalSpawnDates 
----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS HistoricalSpawnDates	(Civilization TEXT NOT NULL UNIQUE,	StartYear INTEGER DEFAULT -10000);
INSERT OR REPLACE INTO HistoricalSpawnDates
		(Civilization,				StartYear) 
VALUES	('JTF_CIVILIZATION_TRIESTE',	-900);

--======================
--YNAMP
--======================
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(MapName,		Civilization,						  X,  Y)
VALUES	('GiantEarth',			'JTF_CIVILIZATION_TRIESTE', 23, 62),
		('GreatestEarthMap',	'JTF_CIVILIZATION_TRIESTE', 53, 47),
		('LargeEurope',			'JTF_CIVILIZATION_TRIESTE', 38, 37),
		('LargestEarthCustom',	'JTF_CIVILIZATION_TRIESTE', 30, 78),
		('PlayEuropeAgain',		'JTF_CIVILIZATION_TRIESTE', 47, 41),
		('SkylarSaphyr_SilkRoad_Map',		'JTF_CIVILIZATION_TRIESTE', 18, 38);
