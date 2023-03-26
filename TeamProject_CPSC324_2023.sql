-- Team 2 SQL Project Part 2 --
-- Team Members --
-- Adam Burkitt 230134987 --
-- Derek Binnema 230131362 --
-- Brandon Mariotto 230120996 --
-- March 27, 2023 --

USE Team2_Part2_2023

DROP TABLE IF EXISTS --Delete all pre-existing tables

	Departure, Flight, Plane_Instance,
	Aircraft, Can_Fly, Plane,
	Pilot, Customer, Employee_Dependent,
	Employee, Person;


CREATE TABLE Flight ( --creates Flight entity
	flight_number INT PRIMARY KEY,
	origin CHAR(3) NOT NULL,
	destination CHAR(3) NOT NULL,
	departure_time CHAR(5) NOT NULL,
	arrival_time CHAR(5) NOT NULL,
	CONSTRAINT limit_flight_number CHECK(flight_number BETWEEN 1 AND 999999),
	CONSTRAINT check_origin CHECK(origin NOT LIKE '%[^a-z]%'),
	CONSTRAINT check_destination CHECK(destination NOT LIKE '%[^a-z]%'), --limits origin and destination to only letters
	CONSTRAINT check_departure_time CHECK(departure_time LIKE '%[0-2]%[0-9]%:%[0-5]%[0-9]%'), --constraint for 24-hour time
	CONSTRAINT check_arrival_time CHECK(arrival_time LIKE '%[0-2]%[0-9]%:%[0-5]%[0-9]%')
);

CREATE TABLE Plane ( --creates Plane entity
	model_number VARCHAR(16) PRIMARY KEY,
	plane_manufacturer VARCHAR(15) NOT NULL
	
);



CREATE TABLE Aircraft (

	serial_number VARCHAR(16) PRIMARY KEY,
	manufacture_date VARCHAR(30) NOT NULL,
	age INT, --derived attribute converted to simple attribute just for sake of completion
	model_number VARCHAR(16),
	FOREIGN KEY (model_number) REFERENCES Plane,
);


CREATE TABLE Plane_Instance (
	model_number VARCHAR(16),
	serial_number VARCHAR(16),
	CONSTRAINT PK_Plane PRIMARY KEY (model_number, serial_number),
	FOREIGN KEY (model_number) REFERENCES Plane,
	FOREIGN KEY (serial_number) REFERENCES Aircraft	
);

CREATE TABLE Departure ( --creates Departure entity

	flight_number INT,
	serial_number VARCHAR(16),
	departure_date VARCHAR(30),
	PRIMARY KEY (departure_date, flight_number, serial_number),
	FOREIGN KEY (flight_number) REFERENCES Flight,
	FOREIGN KEY (serial_number) REFERENCES Aircraft,
);

--Adam work starts
CREATE TABLE Person (
person_ID INT PRIMARY KEY,
phone_number VARCHAR(20),
first_name VARCHAR(50) NOT NULL,
middle_name VARCHAR(50),
last_name VARCHAR(50) NOT NULL,
street_number VARCHAR(8) NOT NULL,
street_name VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
province_or_state VARCHAR(50),
country VARCHAR(50) NOT NULL
);

CREATE TABLE Employee (
employee_number INT PRIMARY KEY,
Salary INT NOT NULL,
CONSTRAINT limit_employee_number CHECK(employee_number BETWEEN 1 AND 9999),
CONSTRAINT check_salary CHECK(SALARY > 20000),
FOREIGN KEY (employee_number) REFERENCES Person(person_ID)
);

CREATE TABLE Employee_Dependent (
employee_number INT NOT NULL,
dependent_name VARCHAR(100) NOT NULL,
PRIMARY KEY (employee_number, dependent_name),
FOREIGN KEY (employee_number) REFERENCES Employee
);

CREATE TABLE Customer (
person_ID INT PRIMARY KEY,
passport_number VARCHAR(16),
FOREIGN KEY (person_ID) REFERENCES Person
);

CREATE TABLE Pilot (	
	pilot_license_number VARCHAR(16) PRIMARY KEY,
	employee_number INT NOT NULL,
	FOREIGN KEY (employee_number) REFERENCES Employee
);

--Adam work ends
INSERT INTO Plane_Instance(model_number, serial_number) --Testing constraints; To be deleted later
	VALUES(80085, 80085);

CREATE TABLE Can_Fly (
	pilot_license_number VARCHAR(16),
	model_number VARCHAR(16),
	PRIMARY KEY (pilot_license_number, model_number),
	FOREIGN KEY (pilot_license_number) REFERENCES Pilot,
	FOREIGN KEY (model_number) REFERENCES Plane
);

CREATE TABLE Employee_Departure(
	employee_number INT,
	departure_date VARCHAR(30),
	PRIMARY KEY (employee_number, departure_date),
	FOREIGN KEY (employee_number) REFERENCES Employee,
	FOREIGN KEY (departure_date) REFERENCES Departure
);

CREATE TABLE Aircraft_Departure(
	serial_number INT,
	departure_date VARCHAR(30),
	PRIMARY KEY (serial_number, departure_date),
	FOREIGN KEY (serial_number) REFERENCES Employee,
	FOREIGN KEY (departure_date) REFERENCES Departure
);

CREATE TABLE Customer_Departure (
	passport_number VARCHAR(16),
	departure_date VARCHAR(30),
	PRIMARY KEY (passport_number, departure_date),
	FOREIGN KEY (passport_number) REFERENCES Customer,
	FOREIGN KEY (departure_date) REFERENCES Departure
);


INSERT INTO Flight(flight_number, origin, destination, departure_time, arrival_time) --Testing constraints; To be deleted later
	VALUES(8008, 'YYR', 'SSX', '23:45', '06:55');

INSERT INTO Aircraft(serial_number, manufacture_date)
	VALUES(80085, 'March 21, 2023');

INSERT INTO Departure(flight_number, serial_number, departure_date)
	VALUES(8008, 80085, 'March 32, 1899');

SELECT *
FROM Flight;
