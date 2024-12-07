USE Road_Accident;

SELECT * FROM road_accident;

SELECT DISTINCT road_surface_conditions
FROM road_accident;

SELECT DISTINCT weather_conditions
FROM road_accident;

-- Current Year Casualties -------------------------------------------------------------------------------------------------------
SELECT SUM(number_of_casualties) AS CY_Casualties
FROM road_accident
WHERE YEAR(accident_date) = '2022'

-- Current Year Casualties for Dry Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Casualties_Dry
FROM road_accident
WHERE YEAR(accident_date)='2022' AND road_surface_conditions ='Dry'

-- Current Year Casualties for Snow Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Casualties_Snow
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (road_surface_conditions ='Snow'
OR road_surface_conditions ='Frost or ice')

-- Current Year Casualties for Wet Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Casualties_Snow
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (road_surface_conditions ='Wet or damp'
OR road_surface_conditions ='Flood over 3cm. deep')

-- Current Year Casualties for Wet Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Casualties_Snow
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (road_surface_conditions ='Wet or damp'
OR road_surface_conditions ='Flood over 3cm. deep')

-- Current Year Casualties for Fine Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Casualties_Fine_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Fine + high winds'
OR weather_conditions ='Fine no high winds')

-- Current Year Casualties for Rain Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Casualties_Rain_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Raining no high winds'
OR weather_conditions ='Raining + high winds')

-- Current Year Casualties for Snow/Fog Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Casualties_Snow_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Snowing + high winds'
OR weather_conditions ='Snowing no high winds'
OR weather_conditions ='Fog or mist')

-- Current Year Casualties for Other Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Casualties_Other_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Other')
	
