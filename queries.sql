# ====================================================================== #
#																		 #
#					          TEST QUERIES					             #
#                        ---------------------                           #
#																		 #
# ====================================================================== #


# ====================================================================== #
#					           QUERY # 1					             #
#                        ---------------------                           #
#						  Get all dealerships.							 #
# ====================================================================== #

	SELECT * 
		FROM dealerships;

# ====================================================================== #
#					           QUERY # 2					             #
#                        ---------------------                           #
#			 Find all vehicles for a specific dealership.				 #
# ====================================================================== #

-- 	SELECT v.vin, year, make, model, vehicle_type, color, odometer, price, sold, dealership_name
-- 		FROM inventory AS i
-- 		JOIN vehicles AS v
-- 			ON v.vin = i.vin
-- 		JOIN dealerships AS d
-- 			ON d.dealership_id	= i.dealership_id
-- 		WHERE dealership_name = 'Auto Haven';

# ====================================================================== #
#					           QUERY # 3					             #
#                        ---------------------                           #
#						   Find a car by VIN.							 #
# ====================================================================== #

-- 	SELECT *
-- 		FROM vehicles
-- 		WHERE vin = 55776;

# ====================================================================== #
#					           QUERY # 4					             #
#                        ---------------------                           #
#	             Find the dealership where a certain car 				 #
#						   is located by VIN.							 #
# ====================================================================== #

-- SELECT DISTINCT v.*, dealership_name
-- 	FROM inventory AS i
--     JOIN dealerships AS d
-- 		ON d.dealership_id	= i.dealership_id
--     JOIN vehicles AS v
-- 		ON v.vin = i.vin
-- 	WHERE v.vin = 94010;

# ====================================================================== #
#					           QUERY # 5					             #
#                        ---------------------                           #
#	          Find all dealerships that have a certain car type          #
#						(i.e. Red Ford Mustang).						 #
# ====================================================================== #

-- 	SELECT DISTINCT v.*, dealership_name
-- 		FROM inventory AS i
-- 		JOIN dealerships AS d
-- 			ON d.dealership_id	= i.dealership_id
-- 		JOIN vehicles AS v
-- 			ON v.vin = i.vin
-- 		WHERE make = 'Honda'
-- 			AND model = 'Civic'
-- 			AND color = 'Gray';

# ====================================================================== #
#					           QUERY # 6					             #
#                        ---------------------                           #
#	            Get all sales information for a specific 				 #
#				  dealership for a specific date range.					 #
# ====================================================================== #

-- 	SELECT DISTINCT s.*, dealership_name
-- 		FROM inventory AS i
-- 		JOIN dealerships AS d
-- 			ON d.dealership_id	= i.dealership_id
-- 		JOIN sales_contracts AS s
-- 			ON s.vin = i.vin
--         WHERE dealership_name = 'Car Craze'    
-- 			AND sales_date BETWEEN '2024-01-12' AND '2024-05-26';