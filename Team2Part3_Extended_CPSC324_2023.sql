
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

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (100, 'SLC', 'BOS', ' 8:00', '17:50')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (112, 'DCA', 'DEN', '14:00', '18:07')

--Insertion of pilot data

INSERT INTO pilot (employee_id, pilot_license_number)
VALUES (1001, 'a8asdf8asdf8as8f')

--Insertion of plane data

INSERT INTO plane (model_number, manufacturer)
VALUES ('A310', 'Airbus')

--Insertion of aircraft data

INSERT INTO aircraft (serial_number, model_number, manufacture_date)
VALUES ('10', 'B747', '5-Jan-05')

--Insertion of departure data

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('1-Nov', '11', 'B727', 100)

--Insertion of customer_departure data

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (2, '31-Oct', '11', 'B727', 100)

--Insertion of pilot_plane data

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1001, 'B727')
