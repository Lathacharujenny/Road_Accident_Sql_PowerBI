USE Road_Accident

-- Current Year Total Slight Casualties
SELECT SUM(number_of_casualties) AS Total_CY_Slight_Casualties
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Slight'

-- Current Year Slight Casaulties for Dry Road Surface
SELECT SUM(number_of_casualties) AS CY_Slight_Casualties_Dry_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Slight'
AND road_surface_conditions ='Dry'

-- Current Year Slight Casaulties for Snow Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Slight_Casualties_Snow_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND accident_severity='Slight'
AND (road_surface_conditions ='Snow'
OR road_surface_conditions ='Frost or ice')

-- Current Year Slight Casaulties for Wet Road Surfaces
SELECT SUM(number_of_casualties) AS CY_Slight_Casualties_Wet_Road_Surfaces
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND accident_severity='Slight'
AND (road_surface_conditions ='Wet or damp'
OR road_surface_conditions ='Flood over 3cm. deep')

-- Current Year Slight Casaulties for Fine Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Slight_Casualties_Fine_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022' 
AND accident_severity='Slight'
AND (weather_conditions ='Fine + high winds'
OR weather_conditions ='Fine no high winds')

-- Current Year Slight Casaulties for Rain Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Slight_Casualties_Rain_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Slight'
AND (weather_conditions ='Raining no high winds'
OR weather_conditions ='Raining + high winds')

-- Current Year Slight Casaulties for Snow Weather Conditions
SELECT SUM(number_of_casualties) AS CY_Slight_Casualties_Snow_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Slight'
AND (weather_conditions ='Snowing + high winds'
OR weather_conditions ='Snowing no high winds'
OR weather_conditions ='Fog or mist')

-- Current Year Slight Casaulties for Other Weather 
SELECT SUM(number_of_casualties) AS CY_Slight_Casualties_Other_Weather_Condition
FROM road_accident
WHERE YEAR(accident_date)='2022'
AND accident_severity='Slight'
AND (weather_conditions ='Other')




