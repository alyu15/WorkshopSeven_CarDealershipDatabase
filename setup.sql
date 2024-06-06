DROP DATABASE IF EXISTS dealership_db;

CREATE DATABASE IF NOT EXISTS dealership_db;
USE dealership_db;

-- -- CREATE TABLE film_location(
-- 	location_id int NOT NULL auto_increment,
--     country_name varchar(255) NOT NULL,
--     PRIMARY KEY(location_id)
--     );

CREATE TABLE dealerships(
	dealership_id int NOT NULL auto_increment,
    name varchar(50) NOT NULL,
    address varchar(50),
    phone varchar(12),
    PRIMARY KEY(dealership_id)
);
