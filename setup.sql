DROP DATABASE IF EXISTS dealership_db;

CREATE DATABASE IF NOT EXISTS dealership_db;
USE dealership_db;

CREATE TABLE dealerships(
	dealership_id int NOT NULL auto_increment,
    dealership_name varchar(50) NOT NULL,
    address varchar(50),
    phone_number varchar(12),
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
	contract_id int NOT NULL auto_increment,
    vin int NOT NULL,
    sales_tax_amount double,
    recording_fee double,
    processing_fee double,
    financing_choice boolean,
    PRIMARY KEY(contract_id),
    FOREIGN KEY(vin) REFERENCES vehicles(vin)
);

CREATE TABLE lease_contracts(
	contract_id int NOT NULL auto_increment,
    vin int NOT NULL,
    expected_ending_value double,
    lease_fee double,
    PRIMARY KEY(contract_id),
    FOREIGN KEY(vin) REFERENCES vehicles(vin)
);

-- INSERT INTO Products(ProductID,ProductName,SupplierID,UnitPrice)
-- 	VALUE(999999,'Greatest Grapes',999999,999.99),
--  (111999,'Bestest Bananas',999999,888.88),
-- 	(191919,'Fabulous Figs',999999,777.77),
-- 	(919191,'Extraordinary Eggplants',999999,666.66);

INSERT INTO dealerships(dealership_name, address, phone_number)
	VALUE('Auto Drive','123 Main Street','123-456-7890'),
    ('Car Craze','104 Pine Road','345-172-0896'),
    ('Auto Haven','8530 First Avenue','720-145-9638'),
    ('Speedy Motors','567 Oak Avenue','987-654-3210'),
	('Mega Wheels','210 Elm Street','456-789-0123'),
	('Top Gear Autos','789 Maple Drive','321-654-9870'),
	('Fastlane Motors','431 Cedar Lane','876-543-2109'),
	('City Auto Mall','753 Birch Road','234-567-8901'),
	('Golden Wheels','632 Pine Avenue','109-876-5432'),
	('High Gear Motors','978 Walnut Street','890-123-4567'),
	('Dream Car Dealership','321 Cherry Lane','432-109-8765'),
	('Sunrise Auto Sales','456 Sycamore Drive','567-890-1234'),
	('Sprint Auto','245 Cedar Avenue','678-901-2345'),
	('Express Motors','567 Birch Road','789-012-3456'),
	('A1 Auto Sales','432 Pine Street','890-123-4567'),
	('Sunset Motors','210 Maple Lane','901-234-5678'),
	('Infinity Autos','876 Oak Drive','012-345-6789'),
	('Ultimate Auto','654 Elm Avenue','123-456-7890'),
	('Dynamic Cars','321 Pine Road','234-567-8901'),
	('Prestige Motors','789 Cedar Lane','345-678-9012'),
	('Highway Auto','543 Sycamore Street','456-789-0123'),
	('Velocity Motors','210 Birch Drive','567-890-1234'),
	('Quick Cars','876 Oak Avenue','678-901-2345'),
	('Golden State Autos','543 Cherry Road','789-012-3456'),
	('Prime Auto Sales','654 Pine Lane','890-123-4567'),
	('Drive Time Motors','321 Maple Drive','901-234-5678'),
	('Auto Master','210 Cedar Street','012-345-6789'),
	('Eagle Eye Autos','789 Sycamore Lane','123-456-7890'),
	('Supreme Cars','654 Birch Road','234-567-8901'),
	('Precision Auto','876 Elm Avenue','345-678-9012'),
	('Momentum Motors','432 Pine Drive','456-789-0123'),
	('Luxury Auto Sales','987 Cherry Street','567-890-1234'),
	('Capital Cars','543 Oak Lane','678-901-2345'),
	('Grand Auto Mall','210 Maple Road','789-012-3456'),
	('Royal Wheels','789 Cedar Avenue','890-123-4567'),
	('Auto Select','654 Sycamore Drive','901-234-5678'),
	('Elite Autos','321 Pine Lane','012-345-6789'),
	('Sunset Boulevard Motors','876 Birch Street','123-456-7890'),
	('First Class Autos','543 Elm Lane','234-567-8901'),
	('Prime Time Motors','210 Cherry Drive','345-678-9012'),
	('Drive Wise Auto','789 Pine Street','456-789-0123'),
	('Highland Motors','432 Cedar Road','567-890-1234'),
	('A+ Auto Sales','987 Sycamore Lane','678-901-2345'),
	('Topline Motors','654 Maple Avenue','789-012-3456'),
	('Pro Drive Autos','321 Oak Drive','890-123-4567'),
	('Sunset Auto Center','876 Cherry Street','901-234-5678'),
	('Grand Prix Motors','543 Pine Lane','012-345-6789'),
	('Auto Direct','210 Cedar Drive','123-456-7890'),
	('Road Runner Autos','789 Elm Street','234-567-8901'),
    ('Fast Track Autos','432 Sycamore Road','345-678-9012'),
	('Highline Motors','987 Maple Lane','456-789-0123'),
	('Sunrise Auto Group','654 Cedar Avenue','567-890-1234'),
	('Prime Wheels','321 Oak Lane','678-901-2345'),
	('Elite Motors','876 Cherry Drive','789-012-3456'),
	('Premier Auto Sales','543 Pine Street','890-123-4567'),
	('Drive Smart Motors','210 Cedar Road','901-234-5678'),
	('Speedy Wheels','789 Elm Drive','012-345-6789'),
	('Golden Gate Autos','432 Cherry Street','123-456-7890'),
	('Sunset Motorsports','987 Birch Lane','234-567-8901'),
	('Precision Motors','654 Sycamore Drive','345-678-9012'),
	('Highland Auto Sales','321 Pine Avenue','456-789-0123'),
	('Express Lane Autos','876 Oak Road','567-890-1234'),
	('Metro Motors','543 Maple Drive','678-901-2345'),
	('Drive Nation','210 Cedar Lane','789-012-3456'),
	('Velocity Autos','789 Elm Avenue','890-123-4567'),
	('Royal Motors','432 Cherry Lane','901-234-5678'),
	('Fastlane Auto Group','987 Pine Road','012-345-6789'),
	('High Gear Motorsports','654 Cedar Street','123-456-7890'),
	('Auto Express','321 Sycamore Avenue','234-567-8901'),
	('First Choice Autos','876 Oak Lane','345-678-9012'),
	('Sprint Motors','543 Maple Road','456-789-0123'),
	('Golden Arrow Autos','210 Birch Drive','567-890-1234'),
	('Top Notch Motors','789 Pine Lane','678-901-2345'),
	('Drive Time Auto Sales','432 Cedar Street','789-012-3456'),
	('Highland Wheels','987 Cherry Drive','890-123-4567'),
	('Dream Wheels','654 Sycamore Street','901-234-5678'),
	('Express Auto Mall','321 Elm Lane','012-345-6789'),
	('Elite Wheels','876 Pine Avenue','123-456-7890'),
    ('Prime Motors','543 Maple Lane','234-567-8901'),
	('Sunset Auto Group','210 Cedar Drive','345-678-9012');
