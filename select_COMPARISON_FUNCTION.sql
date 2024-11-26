SELECT * FROM country;

SELECT 	GNP,
		GNPOld,
        GREATEST(GNP, GNPOld) AS `Highest`,
        LEAST(GNP, GNPOld) AS `Least`,
        COALESCE(GNPOld, 100),
        ISNULL(GNPOld)
FROM country;