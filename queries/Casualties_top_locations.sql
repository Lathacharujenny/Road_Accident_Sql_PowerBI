USE Road_Accident

SELECT TOP 10
       local_authority,
       SUM(number_of_casualties) AS Total_Casualties
FROM road_accident
WHERE YEAR(accident_date)='2022'
GROUP BY local_authority
ORDER BY Total_Casualties DESC 

