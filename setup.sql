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
    price decimal(10,2) NOT NULL,
    sold varchar(3),
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
    recording_fee decimal(8,2),
    processing_fee decimal(10,2),
    financing_choice varchar(3),
    PRIMARY KEY(contract_id),
    FOREIGN KEY(vin) REFERENCES vehicles(vin)
);

CREATE TABLE lease_contracts(
	contract_id int NOT NULL auto_increment,
    vin int NOT NULL,
    expected_ending_value decimal(10,2),
    lease_fee decimal(8,2),
    PRIMARY KEY(contract_id),
    FOREIGN KEY(vin) REFERENCES vehicles(vin)
);

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
		('Precision Auto','876 Elm Avenue','345-678-9012');

INSERT INTO vehicles(vin, year, make, model, vehicle_type, color, odometer, price, sold)
	VALUE(10112,1993,'Ford','Explorer','SUV','Red',525123,995.00,'yes'),
		(37846,2012,'Honda','Civic','Sedan','Gray',103221,6995.00,'no'),
		(44875,2006,'Nissan','Altima','Sedan','Blue',137850,3995.00,'yes'),
		(27483,2018,'Toyota','Camry','Sedan','White',42123,17995.00,'no'),
		(56291,2015,'Chevrolet','Silverado','Truck','Black',87250,23995.00,'no'),
		(93742,2019,'Ford','F-150','Truck','Red',30210,32995.00,'yes'),
		(65837,2014,'Honda','Accord','Sedan','Silver',61500,12995.00,'no'),
		(34980,2009,'Toyota','Corolla','Sedan','Blue',98755,5995.00,'no'),
		(82376,2016,'Nissan','Rogue','SUV','Gray',46000,16995.00,'no'),
		(48721,2011,'Ford','Mustang','Coupe','Red',75000,13995.00,'no'),
		(15689,2017,'Hyundai','Sonata','Sedan','Black',36000,14995.00,'no'),
		(72654,2013,'Chevrolet','Malibu','Sedan','White',80230,8995.00,'no'),
		(36598,2010,'Honda','CR-V','SUV','Green',112450,10995.00,'no'),
		(84239,2012,'Toyota','Sienna','Van','Silver',94000,13995.00,'no'),
		(20475,2008,'Nissan','Sentra','Sedan','Gray',128500,4995.00,'no'),
		(61937,2019,'Subaru','Outback','SUV','Blue',20500,25995.00,'yes'),
		(50328,2015,'Ford','Escape','SUV','Black',63500,17995.00,'no'),
		(10987,2007,'Chevrolet','Impala','Sedan','Red',144200,4495.00,'no'),
		(78432,2018,'Honda','Pilot','SUV','White',31200,29995.00,'yes'),
		(27654,2014,'Toyota','Tacoma','Truck','Silver',70500,23995.00,'no'),
		(62193,2010,'Ford','Focus','Hatchback','Blue',99800,5995.00,'no'),
		(43827,2016,'Nissan','Versa','Sedan','Gray',48000,7995.00,'no'),
		(89523,2005,'Honda','Odyssey','Van','Silver',169500,3995.00,'no'),
		(12345,2013,'Toyota','Rav4','SUV','Blue',78000,14995.00,'no'),
		(67890,2016,'Ford','Fusion','Sedan','Silver',55000,12995.00,'no'),
		(24680,2011,'Honda','Fit','Hatchback','Red',89000,7995.00,'no'),
		(13579,2017,'Chevrolet','Equinox','SUV','Black',42000,18995.00,'no'),
		(98765,2014,'Nissan','Maxima','Sedan','White',69000,15995.00,'no'),
		(54321,2009,'Toyota','Highlander','SUV','Gray',110000,10995.00,'no'),
		(55776,2017,'Nissan','Pathfinder','SUV','Silver',38001,24995.00,'no');
		

