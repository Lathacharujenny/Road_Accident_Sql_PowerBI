USE Road_Accident

SELECT urban_or_rural_area, 
       SUM(number_of_casualties) AS Total_Casualties,
       (SUM(number_of_casualties) * 100.0 / 
        (SELECT SUM(number_of_casualties) 
         FROM road_accident 
         WHERE YEAR(accident_date) = 2022)) AS Percentage
FROM road_accident
WHERE YEAR(accident_date) = 2022
GROUP BY urban_or_rural_area

SELECT DISTINCT light_conditions
FROM road_accident

SELECT
    CASE
	   WHEN light_conditions IN ('Daylight') THEN 'Day'
	   Else 'Dark'
	END AS light_condition,
	SUM(number_of_casualties) AS Total_Casualties,
	ROUND((SUM(number_of_casualties)*100.0/
	(SELECT SUM(number_of_casualties)
	FROM road_accident
	WHERE YEAR(accident_date) = 2022)),2) AS Percentage
FROM road_accident
WHERE YEAR(accident_date) = 2022
GROUP BY 
       CASE
	   WHEN light_conditions IN ('Daylight') THEN 'Day'
	   Else 'Dark'
	END


