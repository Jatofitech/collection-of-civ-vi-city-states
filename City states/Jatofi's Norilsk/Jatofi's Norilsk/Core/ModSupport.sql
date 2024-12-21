--==========================================================================================================================
-- GEDEMON HISTORICAL START DATES
--==========================================================================================================================
-- HistoricalSpawnDates 
----------------------------------------------------------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS HistoricalSpawnDates	(Civilization TEXT NOT NULL UNIQUE,	StartYear INTEGER DEFAULT -10000);
INSERT OR REPLACE INTO HistoricalSpawnDates
		(Civilization,				StartYear) 
VALUES	('JTF_CIVILIZATION_NORILSK',	1935);

--======================
--YNAMP
--======================
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);


INSERT INTO StartPosition
				(MapName,		Civilization,				X,	Y)
VALUES	('GiantEarth',			'JTF_CIVILIZATION_NORILSK', 65, 83),
		('LargestEarthCustom',	'JTF_CIVILIZATION_NORILSK', 86, 106),
		('GreatestEarthMap',	'JTF_CIVILIZATION_NORILSK', 77, 62);
