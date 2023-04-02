USE Team2_Part3_2023;
-----------------Drop any tables that will be created, preserving referential integrity ----------
DROP TABLE customer_departure;
DROP TABLE employee_departure;
DROP TABLE pilot_plane;
DROP TABLE departure;

DROP TABLE aircraft;
DROP TABLE employee_dependent;

DROP TABLE flight;
DROP TABLE plane;
DROP TABLE pilot;
DROP TABLE employee;
DROP TABLE customer;
DROP TABLE person;

-----------------Create strong entity sets--------------------------------
CREATE TABLE flight(
	flight_number	int PRIMARY KEY,
	origin			char(3) NOT NULL,
	destination		char(3) NOT NULL,
	departure_time		char(5) NOT NULL,
	arrival_time		char(5) NOT NULL,
	CONSTRAINT valid_origin CHECK (len(origin)=3),
	CONSTRAINT valid_destination CHECK (len(destination)=3),
	CONSTRAINT valid_departure_time CHECK (len(departure_time)=5),
	CONSTRAINT valid_arrival_time CHECK (len(arrival_time)=5)
);

CREATE TABLE plane (
	model_number	varchar(16) PRIMARY KEY,
	manufacturer	varchar(15) not null
);


---Create Strong Entity Sets Involving Generalization------
--Note the following is also used:
--  Composite and multivalued attributes
--  Derived attributes are not stored (need to be calculated dynamically, e.g., with a view)

CREATE TABLE person (
	person_id		int PRIMARY KEY,
	first_name		varchar(50) not null,
	middle_name		varchar(50),
	last_name		varchar(50) not null,
	street_number	varchar(50) not null,
	street_name		varchar(50) not null,
	city			varchar(50) not null,
	province_state	varchar(50),
	country			varchar(50) not null,
	primary_phone	varchar(20) 
);

CREATE TABLE employee (
	employee_id	int PRIMARY KEY,
	person_id	int UNIQUE,
	salary		money,
	constraint min_employee_salary check(salary > 20000),
	FOREIGN KEY (person_id) REFERENCES person
);

CREATE TABLE employee_dependent(
	dependent_name	varchar(100),
	employee_id		int,
	PRIMARY KEY(dependent_name,employee_id),
	FOREIGN KEY(employee_ID) REFERENCES employee
);

CREATE TABLE pilot(
	employee_id				int PRIMARY KEY,
	pilot_license_number	varchar(16),
	FOREIGN KEY(employee_id) REFERENCES employee
);

CREATE TABLE customer(
	person_id		int PRIMARY KEY,
	passport_number	varchar(16),
	FOREIGN KEY (person_id) REFERENCES person
);			  			  

---------------------Create Weak Entity Sets-------------------------

CREATE TABLE aircraft (			
	serial_number		varchar(16),
	model_number		varchar(16),
	manufacture_date	date not null,
	PRIMARY KEY (serial_number, model_number),
	FOREIGN KEY (model_number) REFERENCES plane
);

CREATE TABLE departure (		
	departure_date	date,
	serial_number	varchar(16),
	model_number	varchar(16),
	flight_number	int,
	PRIMARY KEY (departure_date, serial_number,model_number, flight_number),
	FOREIGN KEY (flight_number) REFERENCES flight,
	FOREIGN KEY (serial_number,model_number) REFERENCES aircraft
);

------------------------------Create Relationship Sets------------------
CREATE TABLE customer_departure(
	person_id		int,
	departure_date	date,
	serial_number	varchar(16),
	model_number	varchar(16),
	flight_number	int,
	PRIMARY KEY (person_id,departure_date,serial_number,model_number,flight_number),
	FOREIGN KEY (person_id) REFERENCES customer,
	FOREIGN KEY (departure_date,serial_number,model_number,flight_number) REFERENCES departure
);

CREATE TABLE employee_departure(
	employee_id	int,
	departure_date	date,
	serial_number	varchar(16),
	model_number	varchar(16),
	flight_number	int,
	PRIMARY KEY (employee_id, departure_date, serial_number, model_number, flight_number),
	FOREIGN KEY (employee_id) REFERENCES employee,
	FOREIGN KEY (departure_date,serial_number,model_number,flight_number) REFERENCES departure
);

CREATE TABLE pilot_plane(
	employee_id int,
	model_number	varchar(16),
	PRIMARY KEY(employee_id, model_number),
	FOREIGN KEY (employee_id) REFERENCES pilot,
	FOREIGN KEY (model_number) REFERENCES plane
);

--Insertion of flight data

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (100, 'SLC', 'BOS', '8:00', '17:50')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (112, 'DCA', 'DEN', '14:00', '18:07')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (121, 'STL', 'SLC', '7:00', '9:13')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (122, 'STL', 'YYV', '8:30', '10:19')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (206, 'DFW', 'STL', '21:00', '23:43')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (330, 'JFK', 'YYV', '16:00', '18:53')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (334, 'ORD', 'MIA', '12:00', '14:14')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (335, 'MIA', 'ORD', '15:00', '17:14')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (336, 'ORD', 'MIA', '18:00', '20:14')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (337, 'MIA', 'ORD', '20:30', '23:53')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (394, 'DFW', 'MIA', '19:00', '21:30')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (395, 'MIA', 'DFW', '9:00', '11:40')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (449, 'CDG', 'DEN', '10:00', '19:29')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (930, 'YYV', 'DCA', '13:00', '16:10')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (931, 'DCA', 'YYV', '17:00', '18:10')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (932, 'DCA', 'YYV', '18:00', '19:10')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (991, 'BOS', 'ORD', '17:00', '18:22')

--Insertion of pilot data

INSERT INTO pilot (employee_id, pilot_license_number)
VALUES (1001, 'a8asdf8asdf8as8f')

INSERT INTO pilot (employee_id, pilot_license_number)
VALUES (1002, '234fsf345kloj235')

INSERT INTO pilot (employee_id, pilot_license_number)
VALUES (1003, '342kjjkl243fs23m')

--Insertion of plane data

INSERT INTO plane (model_number, manufacturer)
VALUES ('A310', 'Airbus')

INSERT INTO plane (model_number, manufacturer)
VALUES ('A320', 'Airbus')

INSERT INTO plane (model_number, manufacturer)
VALUES ('A330', 'Airbus')

INSERT INTO plane (model_number, manufacturer)
VALUES ('A340', 'Airbus')

INSERT INTO plane (model_number, manufacturer)
VALUES ('B727', 'Boeing')

INSERT INTO plane (model_number, manufacturer)
VALUES ('B747', 'Boeing')

INSERT INTO plane (model_number, manufacturer)
VALUES ('B757', 'Boeing')

INSERT INTO plane (model_number, manufacturer)
VALUES ('DC10', 'MD')

INSERT INTO plane (model_number, manufacturer)
VALUES ('DC9', 'MD')

--Insertion of aircraft data

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('10', 'B747', '5-Jan-05')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('11', 'B727', '13-Mar-07')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('13', 'B727', '2-Feb-90')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('13', 'B747', '15-Feb-11')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('21', 'DC10', '13-Feb-02')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('21', 'DC9', '12-May-00')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('22', 'B757', '1-Dec-95')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('22', 'DC9', '1-Sep-12')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('23', 'DC9', '13-Apr-09')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('24', 'DC9', '13-Apr-09')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('70', 'A310', '5-Jun-05')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('80', 'A320', '1-Jul-99')

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('93', 'B757', '12-Aug-97')