USE Team2_Part3_2023;
--Insertion of person data

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (14, 'Eric', 'Herbert', 'Benwah', '2666', 'Up St', 'Prince George', 'British Columbia', 'Canada', '+1 801-203-2666')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (15, 'Colin', 'Henry', 'Sanders', '1235', '144 St', 'Edmonton', 'Alberta', 'Canada', '+1 801-456-1212')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (16, 'Ferisha', NULL, 'Bates', '1770', '99 Ave', 'Edmonton', 'Alberta', 'Canada', '+1 801-592-0888')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (17, 'Nicole', 'Erin', 'Hein', '8920', 'Oak St', 'Moosejaw', 'Saskachewan', 'Canada', '+1 801-722-9904')

--Insertion of employee data

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1008, 15, 150000)

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1009, 16, 5000000)

--Insertion of employee_dependent data

--INSERT INTO employee_dependent (dependent_name, employee_id)
--VALUES ('Alicia Bethea', 1006)

--Insertion of customer data

INSERT INTO customer (person_id, passport_number)
VALUES (17, 'asfd3334qwer1234')

INSERT INTO customer (person_id, passport_number)
VALUES (14, 'hjk33398uyoi1235')

--Insertion of flight data
-- Just double check yvy yxs doesnt exist

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (256, 'YVR', 'YXS', ' 8:00', '8:40')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (912, 'YXS', 'AMS', '14:00', '2:00')

--Insertion of pilot data

INSERT INTO pilot (employee_id, pilot_license_number)
VALUES (1009, 'a8asdf0asdf8as8f')

--Insertion of plane data

INSERT INTO plane (model_number, manufacturer)
VALUES ('A10', 'Fairchild Republic')

--Insertion of aircraft data

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('111', 'A10', '5-Jan-93')

--Insertion of departure data

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('14-Feb', '111', 'A10', 912)

--Insertion of customer_departure data

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (17, '14-Feb', '111', 'A10', 912)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (14, '14-Feb', '111', 'A10', 912)

--Insertion of pilot_plane data

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1009, 'A10')
