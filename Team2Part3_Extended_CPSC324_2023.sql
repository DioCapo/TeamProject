USE Team2_Part3_2023;



-- Question 3

--a

SELECT *
FROM person JOIN customer ON person.person_id = customer.person_id
WHERE person.person_id = 17 OR person.person_id = 14

SELECT *
FROM person JOIN employee ON person.person_id = customer.person_id
WHERE person.person_id = 15 OR person.person_id = 16

SELECT *
FROM plane
WHERE plane.model_number = 'A10'

SELECT *
FROM flight 
WHERE flight.flight_number = 912 OR flight.flight_number = 256

--b

SELECT *
FROM customer_departure
WHERE customer_departure.person_id = 17 OR customer_departure.person_id = 14
;

SELECT *
FROM employee_departure
WHERE employee_departure.person_id = 15 OR customer_departure.person_id = 16
;

SELECT *
FROM departure JOIN plane ON departure.model_number = plane.model_number
WHERE departure.model_number = 'A10'
;

SELECT *
FROM departure JOIN flight ON departure.flight_number = flight.flight_number
WHERE departure.flight_number = 912 OR departure.flight_number = 256
;



--c

-- Management wants to figure out where to build a new airport,
-- in order to determine what location would be most profitable,
-- display how many flights each customer has taken in descending order and including zeros, alongside customer city in order to see what city populations fly the most.


WITH count_destinations(person_id, flight_count) AS (
SELECT c.person_id, COUNT(cd.departure_date) AS fly_count
FROM customer AS c, customer_departure AS cd
WHERE c.person_id = cd.person_id    
GROUP BY c.person_id
)

SELECT p.city, SUM(d.flight_count) as flight_sum
FROM person AS p, count_destinations AS d
WHERE p.person_id = d.person_id
GROUP BY p.city
ORDER BY flight_sum DESC;




