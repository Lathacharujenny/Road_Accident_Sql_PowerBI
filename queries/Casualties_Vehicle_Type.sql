USE Road_Accident

SELECT DISTINCT vehicle_type
FROM road_accident

SELECT
	CASE 
		WHEN vehicle_type IN ('Agricultural vehicle') THEN 'Agricultural'
		WHEN vehicle_type IN ('Taxi/Private hire car', 'Car') Then 'Car'
		WHEN vehicle_type IN ('Motorcycle over 125cc and up to 500cc', 
		                     'Pedal cycle','Motorcycle 125cc and under', 
							 'Motorcycle 50cc and under', 'Motorcycle over 500cc') Then 'Bike'
		WHEN vehicle_type IN ('Minibus (8 - 16 passenger seats)', 'Bus or coach (17 or more pass seats)') Then 'Bus'
		WHEN vehicle_type IN ('Goods 7.5 tonnes mgw and over', 
		                      'Van / Goods 3.5 tonnes mgw or under', 
							  'Goods over 3.5t. and under 7.5t') Then 'Van'
		ELSE 'Other'
	END As Vehicle_type,
	SUM(number_of_casualties) AS 'Total Casualties'
FROM road_accident
WHERE YEAR(accident_date)='2022'
GROUP BY
    CASE 
		WHEN vehicle_type IN ('Agricultural vehicle') THEN 'Agricultural'
		WHEN vehicle_type IN ('Taxi/Private hire car', 'Car') Then 'Car'
		WHEN vehicle_type IN ('Motorcycle over 125cc and up to 500cc', 
		                      'Pedal cycle','Motorcycle 125cc and under', 
							  'Motorcycle 50cc and under', 'Motorcycle over 500cc') Then 'Bike'
		WHEN vehicle_type IN ('Minibus (8 - 16 passenger seats)', 'Bus or coach (17 or more pass seats)') Then 'Bus'
		WHEN vehicle_type IN ('Goods 7.5 tonnes mgw and over', 
		                      'Van / Goods 3.5 tonnes mgw or under', 
							  'Goods over 3.5t. and under 7.5t') Then 'Van'
		ELSE 'Other'
	END
ORDER BY Vehicle_type


