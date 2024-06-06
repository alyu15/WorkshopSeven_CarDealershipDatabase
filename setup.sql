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

CREATE TABLE vehicles(
	vin int NOT NULL,
    year int NOT NULL,
    make varchar(50) NOT NULL,
    model varchar(50) NOT NULL,
    vehicle_type varchar(30),
    color varchar(30) NOT NULL,
    odometer int NOT NULL,
    price double NOT NULL,
    SOLD boolean,
    PRIMARY KEY(vin)
);

CREATE TABLE inventory(
	dealership_id int NOT NULL,
    vin int NOT NULL,
    PRIMARY KEY(dealership_id),
    FOREIGN KEY(dealership_id) REFERENCES dealerships(dealership_id),
    FOREIGN KEY(vin)REFERENCES vehicles(vin)
);

CREATE TABLE sales_contracts(
	sales_contracts_id int NOT NULL auto_increment,
    vin int NOT NULL,
    PRIMARY KEY(sales_contracts_id),
    FOREIGN KEY(vin) REFERENCES vehicles(vin)
);
