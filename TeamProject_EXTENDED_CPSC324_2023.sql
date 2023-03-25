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
ticket_status VARCHAR(10) NOT NULL,
CONSTRAINT check_ticket_number CHECK(ticket_number BETWEEN 1 AND 99999999)
);