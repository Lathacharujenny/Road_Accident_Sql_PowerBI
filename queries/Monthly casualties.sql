USE Road_Accident

SELECT DATENAME(MONTH, accident_date) As Month_Name, 
       SUM(number_of_casualties) AS Casualties_2021
FROM road_accident
WHERE YEAR(accident_date)='2021'
GROUP BY DATENAME(MONTH, accident_date), DATEPART(MONTH, accident_date)
ORDER BY DATEPART(MONTH, accident_date)

SELECT DATENAME(MONTH, accident_date) As Month_Name, 
       SUM(number_of_casualties) AS Casualties_2022
FROM road_accident
WHERE YEAR(accident_date)='2022'
GROUP BY DATENAME(MONTH, accident_date), DATEPART(MONTH, accident_date)
ORDER BY DATEPART(MONTH, accident_date)

