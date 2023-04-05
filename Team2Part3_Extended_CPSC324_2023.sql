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
WHERE flight.flight_number = 912 OR flight_number = 256

--b

SELECT *
FROM customer_departure
WHERE customer_departure.person_id = 17 OR customer_departure.person_id = 14
;

SELECT *
FROM employee_departure
WHERE employee_departure.person_id = 15 OR customer_departure.person_id = 16
;


--c

--meaningful business question


