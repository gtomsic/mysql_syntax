-- Window Functions Examples
SELECT * FROM country;

SELECT 	Name,
		Continent,
        LifeExpectancy,
        RANK() OVER (ORDER BY LifeExpectancy DESC) AS LE_Rank,
		DENSE_RANK() OVER (ORDER BY LifeExpectancy DESC) AS LE_Dense_Rank,
        PERCENT_RANK() OVER(PARTITION BY Continent
							ORDER BY LifeExpectancy) AS LE_Percent_Rank,
		ROW_NUMBER() OVER(ORDER BY LifeExpectancy DESC) AS Row_Num,
        FIRST_VALUE(LifeExpectancy) OVER(PARTITION BY Continent
										ORDER BY LifeExpectancy DESC) AS first_val,
		LAST_VALUE(Name) OVER(PARTITION BY Continent
										ORDER BY LifeExpectancy DESC
										RANGE BETWEEN
													UNBOUNDED PRECEDING AND
                                                    UNBOUNDED FOLLOWING) AS last_val
FROM country
ORDER BY Continent, LifeExpectancy DESC;