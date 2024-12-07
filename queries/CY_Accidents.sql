-- Current Year Total Accidents ---------------------------------------------------------------------------------------------------------
SELECT COUNT(DISTINCT accident_index) as CY_Total_Accidents
FROM road_accident
WHERE YEAR(accident_date)='2022'

-- Current Year Accidents for Dry Road Surfaces
SELECT COUNT(DISTINCT accident_index) AS CY_Accidents_Dry_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022' AND road_surface_conditions ='Dry'

-- Current Year Accidents for Snow Road Surfaces
SELECT COUNT(DISTINCT accident_index) AS CY_Accidents_Snow_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (road_surface_conditions ='Snow'
OR road_surface_conditions ='Frost or ice')

-- Current Year Accidents for Wet Road Surfaces
SELECT COUNT(DISTINCT accident_index) AS CY_Accidents_Wet_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (road_surface_conditions ='Wet or damp'
OR road_surface_conditions ='Flood over 3cm. deep')

-- Current Year Accidents for Fine Weather Conditions
SELECT COUNT(DISTINCT accident_index) AS CY_Accidents_Fine_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Fine + high winds'
OR weather_conditions ='Fine no high winds')

-- Current Year Accidents for Rain Weather Conditions
SELECT COUNT(DISTINCT accident_index) AS CY_Accidents_Rain_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Raining no high winds'
OR weather_conditions ='Raining + high winds')

-- Current Year Accidents for Snow/Fog Weather Conditions
SELECT COUNT(DISTINCT accident_index) AS CY_Accidents_Snow_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Snowing + high winds'
OR weather_conditions ='Snowing no high winds'
OR weather_conditions ='Fog or mist')

-- Current Year Accidents for Other Weather Conditions
SELECT COUNT(DISTINCT accident_index) AS CY_Accidents_Other_Weather_Conditions
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND (weather_conditions ='Other')

