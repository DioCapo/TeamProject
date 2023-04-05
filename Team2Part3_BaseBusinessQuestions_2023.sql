USE Team2_Part3_2023;

-------------------- START OF BUSINESS QUESTION ANSWERS --------------------------------

-- Business Question 1
SELECT flight_number, origin, destination, departure_time, arrival_time
FROM flight
ORDER BY flight_number DESC ;

-- Business Question 2
SELECT person.city, count(customer.person_id) as customer_amount
FROM person JOIN customer ON person.person_id = customer.person_id
GROUP BY person.city
ORDER BY person.city ;

-- Business Question 3
SELECT CONCAT(person.last_name, ', ', person.first_name) AS full_name, pilot.pilot_license_number
FROM pilot JOIN employee ON pilot.employee_id = employee.employee_id JOIN person ON employee.person_id = person.person_id
GROUP BY person.last_name, person.first_name, pilot.pilot_license_number
ORDER BY pilot.pilot_license_number DESC;

--Business Question 4
SELECT CONCAT(person.last_name, ', ', person.first_name) AS full_name, employee.employee_id, employee.salary, count(employee_dependent.dependent_name) as dependent_count
FROM person JOIN employee ON person.person_id = employee.person_id JOIN employee_dependent ON employee.employee_id = employee_dependent.employee_id
GROUP BY employee.employee_id, person.last_name, person.first_name, employee.salary
ORDER BY full_name ASC ;

--Business Question 5
WITH has_aircraft(manufacturer, model_number, aircraft_count) AS (
SELECT plane.manufacturer, plane.model_number, count(aircraft.serial_number) AS aircraft_count
FROM plane JOIN aircraft ON plane.model_number = aircraft.model_number
GROUP BY plane.model_number, plane.manufacturer
),

no_aircraft(manufacturer, model_number) AS (
SELECT manufacturer, model_number
FROM plane

EXCEPT

SELECT manufacturer, model_number
FROM has_aircraft
)

SELECT manufacturer, model_number, aircraft_count = '0'
FROM no_aircraft

UNION 

SELECT *
FROM has_aircraft
;

--Business Question 6
SELECT plane.manufacturer, plane.model_number, aircraft.serial_number, DATEDIFF(DD, aircraft.manufacture_date, GETDATE()) AS Age_in_Days
FROM plane JOIN aircraft ON plane.model_number = aircraft.model_number
ORDER BY Age_in_Days DESC ;

--Business Question 7
WITH has_flown(full_name, passport_number, departures_taken) AS (
SELECT CONCAT(person.last_name, ', ', person.first_name) AS full_name, customer.passport_number, count(*) AS departures_taken
FROM person JOIN customer ON person.person_id = customer.person_id JOIN customer_departure ON customer.person_id = customer_departure.person_id
GROUP BY passport_number, person.last_name, person.first_name
),

has_not_flown(full_name, passport_number) AS (
SELECT CONCAT(person.last_name, ', ', person.first_name) AS full_name, customer.passport_number
FROM person JOIN customer ON person.person_id = customer.person_id

EXCEPT

SELECT full_name, passport_number
FROM has_flown
)

SELECT full_name, passport_number, departures_taken = '0'
FROM has_not_flown

UNION

SELECT *
FROM has_flown
;

--Business question 8
--This question had two most popular destinations so I accounted for them both

WITH count_destinations(destination, flight_count) AS (
SELECT f.destination, COUNT(f.destination) AS dest_count
FROM departure AS d, flight AS f
WHERE d.flight_number = f.flight_number
GROUP BY f.destination
),
highest_dest_count(high_count) AS (
SELECT MAX(flight_count)
FROM count_destinations
),
most_common_dest(common_dest) AS (
SELECT cd.destination
FROM count_destinations AS cd, highest_dest_count AS hdc
WHERE flight_count = high_count
)
SELECT p.city, f.origin, f.destination, COUNT(f.origin) AS origin_count
FROM person AS p, customer AS c, customer_departure AS cd, flight AS f, most_common_dest AS mcd
WHERE mcd.common_dest = f.destination
	AND cd.flight_number = f.flight_number
	AND c.person_id = cd.person_id
	AND p.person_id = c.person_id
GROUP BY f.origin, p.city, f.destination
ORDER BY f.destination;

--Business question 9

WITH cust_cities_join(city, origin) AS (
SELECT p.city, f.origin
FROM person AS p, customer AS c, customer_departure AS cd, flight AS f
WHERE cd.flight_number = f.flight_number 
	AND c.person_id = cd.person_id 
	AND p.person_id = c.person_id
),
cust_cities_count(city, city_count) AS (
SELECT ccj.city, COUNT(ccj.city)
FROM cust_cities_join AS ccj
GROUP BY ccj.city
),
highest_c_count(h_count) AS (
SELECT MAX(ccc.city_count)
FROM cust_cities_count AS ccc
),
most_popular_city(most_pop_city) AS (
SELECT ccc.city
FROM highest_c_count AS hcc, cust_cities_count AS ccc
WHERE hcc.h_count = ccc.city_count
GROUP BY ccc.city
)
SELECT mpc.most_pop_city, ccj.origin, COUNT(ccj.origin) AS origin_count
FROM most_popular_city AS mpc, cust_cities_join AS ccj
WHERE mpc.most_pop_city = ccj.city
GROUP BY mpc.most_pop_city, ccj.origin;

--Business question 10

-- determine all flights going to STL

WITH to_STL AS (
SELECT origin, destination, flight_number
FROM flight
WHERE destination = 'STL' 
),

-- determine all flights from MIA

from_MIA AS (
SELECT origin, destination, flight_number
FROM flight
WHERE origin = 'MIA'
),

-- find all flights that connect from MIA to STL

connections(origin, first_flight_number, connection, second_flight_number, destination) AS (
SELECT from_MIA.origin, from_MIA.flight_number, from_MIA.destination, flight.flight_number, to_STL.destination
FROM flight, from_MIA, to_STL
WHERE flight.origin = from_MIA.destination AND flight.destination = to_STL.destination
)

-- output the answer

SELECT *
FROM connections

UNION

SELECT origin, flight_number AS first_flight_number, connection = NULL, second_flight_number = NULL, destination
FROM flight
WHERE origin = 'MIA' AND destination = 'STL' 
;
