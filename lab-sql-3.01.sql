USE Sakila;

-- Drop column picture from staff.

ALTER TABLE sakila.staff
DROP COLUMN picture;

-- A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. 
-- Update the database accordingly.

-- Here I want to see the details for Tammy Sanders

select * from sakila.customer
where first_name = 'TAMMY' and last_name = 'SANDERS';

-- Here I want to double-check that the store where Jon works is 2

select * from sakila.staff;

INSERT INTO sakila.staff(staff_id, first_name, last_name, address_id, email, store_id, active, username, password,last_update)
VALUES
(3, "TAMMY", "SANDERS", 79, "TAMMY.SANDERS@sakilacustomer.org", 2, 1, "tammy_sanders", "146tpamt2", "2022-08-01 12:30:00");

select * from sakila.staff;

UPDATE sakila.staff
SET first_name = "Tammy", last_name = "Sanders"
WHERE staff_id = 3;

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.

select * from sakila.staff;

select * from sakila.customer
where first_name = 'Charlotte' and last_name = 'Hunter';

select * from sakila.film
where title = 'Academy dinosaur';

select * from sakila.inventory
where film_id = 1;

select * from sakila.rental;

INSERT INTO sakila.rental(rental_id, rental_date, inventory_id, customer_id, staff_id, last_update)
VALUES
(16050, "2022-08-01 12:44:00", 2, 130, 1, "2022-08-01 12:44:00");


