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
(44916,2015,'Honda','Pilot','SUV','Blue',61000,22995.00,'no'),
(18273,2018,'Ford','F-150','Truck','Black',32000,31995.00,'yes'),
(88444,2010,'Honda','Civic','Sedan','Gray',98000,8995.00,'no'),
(33686,2008,'Chevrolet','Tahoe','SUV','White',130000,14995.00,'no'),
(55777,2017,'Nissan','Pathfinder','SUV','Silver',38000,24995.00,'no'),
(18223,2018,'Ford','F-150','Truck','Black',32000,31995.00,'yes'),
(44556,2015,'Honda','CR-V','SUV','Silver',61000,22995.00,'no'),
(33666,2008,'Chevrolet','Malibu','Sedan','Green',130000,9995.00,'no'),
(99011,2019,'Nissan','Sentra','Sedan','Gray',23000,18995.00,'yes'),
(66707,2013,'Ford','Edge','SUV','Red',74000,17995.00,'no'),
(53177,2017,'Nissan','Altima','Sedan','Black',38000,20995.00,'no'),
(77959,2014,'Toyota','Highlander','SUV','Gray',66000,26995.00,'no'),
(11224,2018,'Ford','Explorer','SUV','Gray',32001,29995.00,'yes'),
(44557,2015,'Honda','Civic','Sedan','Red',61001,17995.00,'no'),
(77880,2012,'Chevrolet','Cruze','Sedan','Gray',88001,9995.00,'no'),
(99010,2019,'Nissan','Altima','Sedan','Black',23001,21995.00,'yes'),
(22335,2016,'Toyota','Prius','Hatchback','Green',45001,17995.00,'no'),
(66776,2013,'Ford','Escape','SUV','Red',74001,13995.00,'no'),
(88443,2010,'Honda','Civic','Sedan','Gray',98001,8995.00,'no'),
(33667,2008,'Chevrolet','Tahoe','SUV','White',130001,14995.00,'no'),
(55776,2017,'Nissan','Pathfinder','SUV','Silver',38001,24995.00,'no'),
(77998,2014,'Toyota','Camry','Sedan','Blue',66001,15995.00,'no'),
(18224,2018,'Ford','F-150','Truck','Black',32001,31995.00,'yes'),
(44851,2015,'Honda','CR-V','SUV','Silver',61001,22995.00,'no'),
(77881,2012,'Chevrolet','Impala','Sedan','Black',88001,14995.00,'no'),
(94010,2019,'Nissan','Sentra','Sedan','Gray',23001,18995.00,'yes'),
(22336,2016,'Toyota','Corolla','Sedan','White',45001,16995.00,'no'),
(66708,2013,'Ford','Edge','SUV','Red',74001,17995.00,'no'),
(88445,2010,'Honda','Fit','Hatchback','Blue',98001,8995.00,'no'),
(33668,2008,'Chevrolet','Equinox','SUV','Silver',130001,12995.00,'no'),
(55778,2017,'Nissan','Altima','Sedan','Black',38001,20995.00,'no'),
(77999,2014,'Toyota','Highlander','SUV','Gray',66001,26995.00,'no'),
(11225,2018,'Ford','Escape','SUV','White',32001,25995.00,'yes'),
(44558,2015,'Honda','Civic','Sedan','Red',61002,17995.00,'no'),
(77882,2012,'Chevrolet','Cruze','Sedan','Gray',88002,9995.00,'no'),
(99012,2019,'Nissan','Altima','Sedan','Black',23002,21995.00,'yes'),
(22337,2016,'Toyota','Prius','Hatchback','Green',45002,17995.00,'no'),
(66778,2013,'Ford','Escape','SUV','Red',74002,13995.00,'no'),
(88446,2010,'Honda','Civic','Sedan','Gray',98002,8995.00,'no'),
(33669,2008,'Chevrolet','Tahoe','SUV','White',130002,14995.00,'no'),
(55779,2017,'Nissan','Pathfinder','SUV','Silver',38002,24995.00,'no'),
(77993,2014,'Toyota','Camry','Sedan','Blue',66002,15995.00,'no'),
(18226,2018,'Ford','F-150','Truck','Black',32002,31995.00,'yes'),
(44559,2015,'Honda','CR-V','SUV','Silver',61002,22995.00,'no'),
(77883,2012,'Chevrolet','Impala','Sedan','Black',88002,14995.00,'no'),
(99013,2019,'Nissan','Sentra','Sedan','Gray',23002,18995.00,'yes'),
(22338,2016,'Toyota','Corolla','Sedan','White',45002,16995.00,'no'),
(66709,2013,'Ford','Edge','SUV','Red',74002,17995.00,'no'),
(88447,2010,'Honda','Fit','Hatchback','Blue',98002,8995.00,'no'),
(33670,2008,'Chevrolet','Equinox','SUV','Silver',130002,12995.00,'no'),
(77997,2014,'Toyota','Highlander','SUV','Gray',66002,26995.00,'no');
