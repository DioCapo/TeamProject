USE Team2_Part3_2023;

--Insertion of person data

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (1, 'Sally', 'Bay', 'Clark', '223', 'Easy St', 'Langley', 'British Columbia', 'Canada', '+1 801-193-2320')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (2, 'Jon', 'Beck', 'Edwards', '567', 'Spruce St', 'Merrit', 'British Columbia', 'Canada', '+1 801-228-6729')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (3, 'Alice', NULL, 'Gates', '285', 'Kapok St', 'New Westminster', 'British Columbia', 'Canada', '+1 801-493-2203')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (4, 'Eve', 'Birch', 'Green', '435', 'Alder St', 'North Vancouver', 'British Columbia', 'Canada', '+1 801-933-2320')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (5, 'Mallory', 'Blue', 'Hooper', '456', 'Maple St', 'Vernon', 'British Columbia', 'Canada', '+1 313-912-2101')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (6, 'Jim', 'Bree', 'Jones', '234', 'Oak St', 'Kelowna', 'British Columbia', 'Canada', '+1 801-552-2943')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (7, 'Erin', 'Bryn', 'MacBride', '789', 'Fir St', 'Penticton', 'British Columbia', 'Canada', NULL)

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (8, 'Bobby', 'Chan', 'Majeris', '678', 'Willow St', 'Osoyoos', 'British Columbia', 'Canada', NULL)

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (9, 'Daniel', NULL, 'Peters', '345', 'Pine St', 'Langley', 'British Columbia', 'Canada', '+1 801-393-2230')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (10, 'Ashish', 'Dane', 'Phillips', '395', 'Pine St', 'Merrit', 'British Columbia', 'Canada', '+1 801-323-2320')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (11, 'Michel', 'Day', 'Rowe', '348', 'Elder St', 'New Westminster', 'British Columbia', 'Canada', '+1 801-343-2320')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (12, 'Darren', NULL, 'Smith', '123', 'Elm St', 'North Vancouver', 'British Columbia', 'Canada', '+1 801-556-2239')

INSERT INTO person (person_id, first_name, middle_name, last_name, street_number, street_name, city, province_state, country, primary_phone)
VALUES (13, 'Bill', 'Dot', 'Warnock', '775', 'Main St', 'Vernon', 'British Columbia', 'Canada', '+1 801-303-2222')

--Insertion of employee data

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1006, 1, 150000)

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1005, 3, 5000000)

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1001, 6, 50000)

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1002, 9, 45000)

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1004, 10, 25000)

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1003, 11, 35000)

INSERT INTO employee (employee_id, person_id, salary)
VALUES (1007, 13, 500000)

--Insertion of employee_dependent data

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Alicia Bethea', 1006)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Breana Demars', 1007)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Brinda Estes', 1007)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Celinda Schrage', 1002)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Chadwick Squires', 1006)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Chaya Gaffney', 1004)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Deneen Nesbit', 1002)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Hettie Biles', 1002)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Lavern Ostrom', 1002)

INSERT INTO employee_dependent (dependent_name, employee_id)
VALUES ('Monte Hoard', 1006)

--Insertion of customer data

INSERT INTO customer (person_id, passport_number)
VALUES (2, 'asfd1234qwer1234')

INSERT INTO customer (person_id, passport_number)
VALUES (3, 'hjkl7698uyoi1235')

INSERT INTO customer (person_id, passport_number)
VALUES (4, '1324jhdui234bnsf')

INSERT INTO customer (person_id, passport_number)
VALUES (5, '23iusfoi234234sd')

INSERT INTO customer (person_id, passport_number)
VALUES (7, 'asdf23498dsgn235')

INSERT INTO customer (person_id, passport_number)
VALUES (9, 'sdfuap0sf823nhj2')

INSERT INTO customer (person_id, passport_number)
VALUES (10, 'safdaskjfhw3r129')

INSERT INTO customer (person_id, passport_number)
VALUES (11, 'asfdijalsdkhj213')

INSERT INTO customer (person_id, passport_number)
VALUES (12, 'asdlkfjh234iohaf')

INSERT INTO customer (person_id, passport_number)
VALUES (13, 'sadfjuoiywr12938')

--Insertion of flight data

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (100, 'SLC', 'BOS', ' 8:00', '17:50')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (112, 'DCA', 'DEN', '14:00', '18:07')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (121, 'STL', 'SLC', ' 7:00', ' 9:13')

INSERT INTO flight (flight_number, origin, destination, departure_time, arrival_time)
VALUES (122, 'STL', 'YYV', ' 8:30', '10:19')

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
VALUES (395, 'MIA', 'DFW', ' 9:00', '11:40')

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

--Insertion of departure data

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('1-Nov', '11', 'B727', 100)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('1-Nov', '21', 'DC10', 112)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('1-Nov', '11', 'B727', 206)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('1-Nov', '80', 'A320', 334)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('1-Nov', '80', 'A320', 395)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('1-Nov', '22', 'B757', 991)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('31-Oct', '11', 'B727', 100)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('31-Oct', '11', 'B727', 112)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('31-Oct', '13', 'B727', 206)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('31-Oct', '22', 'B757', 334)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('31-Oct', '70', 'A310', 335)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('31-Oct', '24', 'DC9', 337)

INSERT INTO departure (departure_date, serial_number, model_number, flight_number)
VALUES ('31-Oct', '22', 'B757', 449)

--Insertion of customer_departure data

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (2, '31-Oct', '11', 'B727', 100)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (2, '31-Oct', '22', 'B757', 449)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (3, '1-Nov', '22', 'B757', 991)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (3, '31-Oct', '13', 'B727', 206)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (3, '31-Oct', '22', 'B757', 334)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (7, '1-Nov', '22', 'B757', 991)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (9, '31-Oct', '11', 'B727', 100)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (10, '31-Oct', '22', 'B757', 449)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (11, '31-Oct', '11', 'B727', 100)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (12, '1-Nov', '22', 'B757', 991)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (12, '31-Oct', '11', 'B727', 100)

INSERT INTO customer_departure (person_id, departure_date, serial_number, model_number, flight_number)
VALUES (13, '31-Oct', '22', 'B757', 449)

--Insertion of employee_departure data

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1001, '1-Nov', '11', 'B727', 100)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1001, '31-Oct', '11', 'B727', 100)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1002, '1-Nov', '11', 'B727', 100)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1002, '31-Oct', '11', 'B727', 100)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1003, '31-Oct', '11', 'B727', 100)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1003, '31-Oct', '24', 'DC9', 337)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1004, '31-Oct', '11', 'B727', 100)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1004, '31-Oct', '24', 'DC9', 337)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1005, '31-Oct', '24', 'DC9', 337)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1006, '1-Nov', '22', 'B757', 991)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1006, '31-Oct', '24', 'DC9', 337)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1007, '1-Nov', '11', 'B727', 100)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1007, '1-Nov', '22', 'B757', 991)

INSERT INTO employee_departure (employee_id, departure_date, serial_number, model_number, flight_number)
VALUES (1007, '31-Oct', '13', 'B727', 206)

--Insertion of pilot_plane data

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1001, 'B727')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1001, 'B747')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1001, 'DC10')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1002, 'A320')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1002, 'A340')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1002, 'B757')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1002, 'DC9')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1003, 'A310')

INSERT INTO pilot_plane (employee_id, model_number)
VALUES (1003, 'DC9')

