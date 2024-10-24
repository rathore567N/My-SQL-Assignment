1. Identify the primary keys and foreign keys in the Maven Movies DB
Primary Keys: These are columns that uniquely identify each row in a table.
Foreign Keys: These are columns in a table that refer to the primary key in another table.
The primary keys and foreign keys will vary depending on the schema of the Maven Movies database. For example:

actor table:
Primary Key: actor_id
customer table:
Primary Key: customer_id
Foreign Key: address_id (refers to address.address_id)
Use this query to identify primary and foreign keys:

sql
Copy code
SELECT table_name, column_name, constraint_name, constraint_type
FROM information_schema.table_constraints
WHERE table_schema = 'maven_movies_db';
2. List all details of actors
sql
Copy code
SELECT * FROM actor;
3. List all customer information from the DB
sql
Copy code
SELECT * FROM customer;
4. List different countries
sql
Copy code
SELECT DISTINCT country FROM country;
5. Display all active customers
sql
Copy code
SELECT * FROM customer WHERE active = 1;
6. List all rental IDs for customer with ID 1
sql
Copy code
SELECT rental_id FROM rental WHERE customer_id = 1;
7. Display all the films whose rental duration is greater than 5
sql
Copy code
SELECT * FROM film WHERE rental_duration > 5;
8. List the total number of films whose replacement cost is greater than $15 and less than $20
sql
Copy code
SELECT COUNT(*) AS total_films FROM film WHERE replacement_cost > 15 AND replacement_cost < 20;
9. Display the count of unique first names of actors
sql
Copy code
SELECT COUNT(DISTINCT first_name) AS unique_first_names FROM actor;
10. Display the first 10 records from the customer table
sql
Copy code
SELECT * FROM customer LIMIT 10;
11. Display the first 3 records from the customer table whose first name starts with ‘b’
sql
Copy code
SELECT * FROM customer WHERE first_name LIKE 'B%' LIMIT 3;
12. Display the names of the first 5 movies which are rated as ‘G’
sql
Copy code
SELECT title FROM film WHERE rating = 'G' LIMIT 5;
13. Find all customers whose first name starts with "a"
sql
Copy code
SELECT * FROM customer WHERE first_name LIKE 'A%';
14. Find all customers whose first name ends with "a"
sql
Copy code
SELECT * FROM customer WHERE first_name LIKE '%a';
15. Display the list of first 4 cities which start and end with ‘a’
sql
Copy code
SELECT city FROM city WHERE city LIKE 'A%' AND city LIKE '%a' LIMIT 4;
16. Find all customers whose first name has "NI" in any position
sql
Copy code
SELECT * FROM customer WHERE first_name LIKE '%NI%';
17. Find all customers whose first name has "r" in the second position
sql
Copy code
SELECT * FROM customer WHERE first_name LIKE '_r%';
18. Find all customers whose first name starts with "a" and are at least 5 characters in length
sql
Copy code
SELECT * FROM customer WHERE first_name LIKE 'A%' AND LENGTH(first_name) >= 5;
19. Find all customers whose first name starts with "a" and ends with "o"
sql
Copy code
SELECT * FROM customer WHERE first_name LIKE 'A%' AND first_name LIKE '%o';
20. Get the films with PG and PG-13 ratings using IN operator
sql
Copy code
SELECT * FROM film WHERE rating IN ('PG', 'PG-13');
21. Get the films with length between 50 to 100 using the BETWEEN operator
sql
Copy code
SELECT * FROM film WHERE length BETWEEN 50 AND 100;
22. Get the top 50 actors using LIMIT operator
sql
Copy code
SELECT * FROM actor LIMIT 50;
23. Get the distinct film IDs from the inventory table
sql
Copy code
SELECT DISTINCT film_id FROM inventory;