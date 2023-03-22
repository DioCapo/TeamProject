-- Team 2 SQL Project Part 2 --
-- Team Members --
-- Your Name Here --
-- Your Name Here --
-- Brandon Mariotto 230120996 --
-- March 22, 2023 --

USE Team2_Part2_2023

DROP TABLE IF EXISTS --Delete all pre-existing tables
	Departure, Flight, Aircraft,
	Plane, Pilot;

CREATE TABLE Flight (
	flight_number INT PRIMARY KEY,
	origin CHAR(3) NOT NULL,
	destination CHAR(3) NOT NULL,
	departure_time CHAR(5) NOT NULL,
	arrival_time CHAR(5) NOT NULL,
	CONSTRAINT limit_flight_number CHECK(flight_number BETWEEN 1 AND 999999),
	CONSTRAINT check_origin CHECK(origin LIKE '___' AND origin NOT LIKE '%[^a-z]%'),
	CONSTRAINT check_destination CHECK(destination LIKE '___' AND destination NOT LIKE '%[^a-z]%'),
	CONSTRAINT check_departure_time CHECK(departure_time LIKE '%[0-2]%[0-9]%:%[0-5]%[0-9]%'), --Does a good job at keeping 24 hour syntax, though it allows ones like '24:45'. Any better?
	CONSTRAINT check_arrival_time CHECK(arrival_time LIKE '%[0-2]%[0-9]%:%[0-5]%[0-9]%')
);

CREATE TABLE Plane (	--needs more work
	model_number VARCHAR(16) PRIMARY KEY,
	plane_manufacturer VARCHAR(15) NOT NULL
);

CREATE TABLE Aircraft (
	serial_number VARCHAR(16) PRIMARY KEY,
	manufacture_date VARCHAR(40) NOT NULL,
	model_number VARCHAR(16),
	FOREIGN KEY (model_number) REFERENCES Plane
);

CREATE TABLE Departure ( --needs more
	flight_number INT,
	serial_number VARCHAR(16),
	departure_date VARCHAR(30),
	PRIMARY KEY (departure_date, flight_number, serial_number),
	FOREIGN KEY (flight_number) REFERENCES Flight,
	FOREIGN KEY (serial_number) REFERENCES Aircraft
);

CREATE TABLE Pilot (	--needs more work
	pilot_license_number VARCHAR(16) PRIMARY KEY
);

INSERT INTO Flight(flight_number, origin, destination, departure_time, arrival_time) --Testing constraints; To be deleted later
	VALUES(8008, 'YYR', 'SSX', '23:45', '06:55');

INSERT INTO Aircraft(serial_number, manufacture_date)
	VALUES(80085, 'March 21, 2023');

INSERT INTO Departure(flight_number, serial_number, departure_date)
	VALUES(8008, 80085, 'March 23, 2023');

SELECT *
FROM Flight;
