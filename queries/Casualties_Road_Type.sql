USE Road_Accident

SELECT DISTINCT road_type
FROM road_accident

SELECT road_type, SUM(number_of_casualties) AS Total_Casualties
FROM road_accident
WHERE YEAR(accident_date)='2022'
GROUP BY road_type
ORDER BY Total_Casualties DESC

