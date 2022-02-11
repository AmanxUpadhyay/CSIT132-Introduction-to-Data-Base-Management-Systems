-- Display Client’s name with their client_no
SELECT client_no, client_name FROM client;

-- Display client’s name who is having more than 5000 balance amount.
SELECT client_name FROM client WHERE balance > 5000;

-- Retrieve the entire contents of the clinet_master table.
SELECT * FROM client_master;

-- Retrieve the list of names and the cities of all the clients.
SELECT client_name, city FROM client;

-- List all the clients who are located in Bombay.
SELECT client_name, city FROM client WHERE city = 'Bangalore';

-- List the various products available from the product_master table.
SELECT * FROM product_master;

-- List the quantities of various products available from the product_master table
SELECT product_name, quantity FROM product_master;

-- Find the names of the salesman who have a sale amount equal to Rs.3000.
SELECT salesman_name FROM sales WHERE sale_amount = 3000;

-- Find out the salesman whose target is more than Rs.100.
SELECT salesman_name FROM salesman WHERE target > 100;

-- List the salesman who lives in Juhu
SELECT salesman_name FROM salesman WHERE city = 'Juhu';

-- Add a column called ‘telephone’ of data type ‘number’ and size=’10’ to the client_master table.
ALTER TABLE client_master ADD COLUMN telephone number(10);

-- Change the size of sell_price column in product_master to 10,2
ALTER TABLE product_master MODIFY sell_price number(10,2);

-- Change the name of the salesman_master table to sale_master
ALTER TABLE salesman_master RENAME TO sale_master;

-- Add a column “Country” data type ‘Varchar’ and size = ‘15’ to the salesman_master
ALTER TABLE salesman_master ADD COLUMN country varchar(15);

-- Increase the size of “description” field from 14 to 16 in product_master table
ALTER TABLE product_master MODIFY description varchar(16);