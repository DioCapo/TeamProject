-- Team 2 SQL Project Part 2 --
-- Team Members --
-- Adam Burkitt 230134987 --
-- Derek Binnema 230131362 --
-- Brandon Mariotto 230120996 --
-- March 27, 2023 --

USE Team2_Part2_2023

--EXTENDED DESIGN SQL FILE

CREATE TABLE Ticket (
ticket_number INT PRIMARY KEY,
ticket_class VARCHAR(20) NOT NULL,
boarding_section CHAR(1) NOT NULL,
seat_number VARCHAR(5) NOT NULL,
ticket_status VARCHAR(20) NOT NULL,
customer_id INT,
flight_number INT NOT NULL,
serial_number VARCHAR(16) NOT NULL,
departure_date VARCHAR(30) NOT NULL,
FOREIGN KEY (customer_id) REFERENCES Person(person_ID),
FOREIGN KEY (departure_date, flight_number, serial_number) REFERENCES Departure,
CONSTRAINT check_ticket_number CHECK(ticket_number BETWEEN 1 AND 99999999)
);
