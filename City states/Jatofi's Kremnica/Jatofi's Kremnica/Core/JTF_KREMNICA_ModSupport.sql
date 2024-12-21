-- JTF_KREMNICA_ModSupport
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
VALUES	('JTF_CIVILIZATION_KREMNICA',	1328);

--======================
--YNAMP
--======================
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);

INSERT INTO StartPosition
		(MapName,		Civilization,						  X,  Y)
VALUES	('GiantEarth',			'JTF_CIVILIZATION_KREMNICA', 26, 66),
		('LargeEurope',			'JTF_CIVILIZATION_KREMNICA', 43, 41),
		('PlayEuropeAgain',		'JTF_CIVILIZATION_KREMNICA', 54, 47),
		('LargestEarthCustom',	'JTF_CIVILIZATION_KREMNICA', 33, 82),
		('GreatestEarthMap',	'JTF_CIVILIZATION_KREMNICA', 55, 50);
