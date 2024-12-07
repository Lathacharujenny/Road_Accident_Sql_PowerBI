USE Road_Accident

-- Current Year Total Fatal Casualties
SELECT SUM(number_of_casualties) AS Total_CY_Fatal_Casualties
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Fatal'

-- Current Year Fatal Casaulties for Dry Road Surface
SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties_Dry_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Fatal'
AND road_surface_conditions ='Dry'

-- Current Year Fatal Casaulties for Snow Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties_Snow_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND accident_severity='Fatal'
AND (road_surface_conditions ='Snow'
OR road_surface_conditions ='Frost or ice')

-- Current Year Fatal Casaulties for Wet Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties_Wet_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND accident_severity='Fatal'
AND (road_surface_conditions ='Wet or damp'
OR road_surface_conditions ='Flood over 3cm. deep')

-- Current Year Fatal Casaulties for Fine Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties_Fine_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND accident_severity='Fatal'
AND (weather_conditions ='Fine + high winds'
OR weather_conditions ='Fine no high winds')

-- Current Year Fatal Casaulties for Rain Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties_Rain_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Fatal'
AND (weather_conditions ='Raining no high winds'
OR weather_conditions ='Raining + high winds')

-- Current Year Fatal Casaulties for Snow Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties_Snow_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Fatal'
AND (weather_conditions ='Snowing + high winds'
OR weather_conditions ='Snowing no high winds'
OR weather_conditions ='Fog or mist')

-- Current Year Fatal Casaulties for Other Weather 
SELECT SUM(number_of_casualties) AS CY_Fatal_Casualties_Other_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Fatal'
AND (weather_conditions ='Other')




