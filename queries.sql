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

-- 	SELECT 
-- 		dealership_name,
--         v.sold_or_leased,
-- 		CASE 
-- 			WHEN sold_or_leased = 'sold' THEN s.contract_date
-- 			WHEN sold_or_leased = 'leased' THEN l.contract_date
-- 		END AS contract_date,
--         CASE 
-- 			WHEN sold_or_leased = 'sold' THEN s.customer_name
-- 			WHEN sold_or_leased = 'leased' THEN l.customer_name
-- 		END AS customer_name,
--         CASE 
-- 			WHEN sold_or_leased = 'sold' THEN s.customer_email
-- 			WHEN sold_or_leased = 'leased' THEN l.customer_email
-- 		END AS customer_email,
--         i.vin,
--         CASE 
-- 			WHEN sold_or_leased = 'sold' THEN s.sales_tax_amount
-- 			WHEN sold_or_leased = 'leased' THEN NULL
-- 		END AS sales_tax_amount,
--         CASE 
-- 			WHEN sold_or_leased = 'sold' THEN s.recording_fee
-- 			WHEN sold_or_leased = 'leased' THEN NULL
-- 		END AS recording_fee,
--         CASE 
-- 			WHEN sold_or_leased = 'sold' THEN s.processing_fee
-- 			WHEN sold_or_leased = 'leased' THEN l.lease_fee
-- 		END AS processing_fee,
--         CASE 
-- 			WHEN sold_or_leased = 'sold' THEN s.is_financing
-- 			WHEN sold_or_leased = 'leased' THEN NULL
-- 		END AS is_financing,
--         CASE 
-- 			WHEN sold_or_leased = 'sold' THEN NULL
-- 			WHEN sold_or_leased = 'leased' THEN l.expected_ending_value
-- 		END AS expected_ending_value
-- 	FROM 
-- 		inventory AS i
-- 	JOIN dealerships AS d 
-- 		ON d.dealership_id = i.dealership_id
-- 	JOIN vehicles AS v 
-- 		ON v.vin = i.vin
-- 	LEFT JOIN sales_contracts AS s 
-- 		ON s.vin = i.vin
-- 	LEFT JOIN lease_contracts AS l 
--         ON l.vin = i.vin
-- 	WHERE 
-- 		d.dealership_name = 'Car Craze'
-- 		AND (
-- 			(sold_or_leased = 'sold' 
-- 				AND s.contract_date BETWEEN '2024-01-12' AND '2024-05-26')
-- 			OR 
-- 			(sold_or_leased = 'leased' 
-- 				AND l.contract_date BETWEEN '2024-01-12' AND '2024-05-26')
-- 		);
            
