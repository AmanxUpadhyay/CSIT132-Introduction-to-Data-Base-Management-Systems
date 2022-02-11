-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 1. Computations on table data:
-- (a) Find the names of all clients having ‘a’ as the second letter in their names.
SELECT NAME FROM CLIENT_MASTER WHERE NAME LIKE '_a%';

-- (b) Find the list of all clients who stay in ‘Bombay’ or ‘Delhi’.
SELECT NAME FROM CLIENT_MASTER WHERE CITY = 'Bombay' OR 'Delhi';

-- (c) Print the list of clients whose bal_due is greater than value 10000.
SELECT NAME FROM CLIENT_MASTER WHERE BAL_DUE > 1000;

-- (d) Find products whose selling price is greater than 2000 and less than or equal to 5000.
SELECT DESCRIPTION FROM PRODUCT_MASTER WHERE SELLPRICE > 2000 AND SELLPRICE <= 5000;

-- (e) List the names, city and state of clients who are not in the state of ‘Maharashtra’.
SELECT name, city, state FROM client WHERE NOT state = 'Maharashtra';

-----------------------------------------------------------------------------------------------------------
-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 2. Joining of the table
-- (a) Find out the products, which have been sold to ‘Ivan Bayross’.
SELECT SOD.PRODUCT_NO, PM.DESCRIPTION FROM SALES_ORDER_DETAILS SOD, PRODUCT_MASTER PM, SALES_ORDER SO, CLIENT_MASTER CM WHERE PM.PRODUCT_NO = SOD.PRODUCT_NO AND SO.ORDER_NO = SOD.ORDER_NO AND CM.CLIENT_NO = SO.CLIENT_NO AND CM.NAME = ‘Ivan Bayross’;

-- (b) Find the products and their quantities for the orders placed by client_no ‘C00003’ and ‘C00002’.
SELECT SO.CLIENT_NO, SOD.PRODUCT_NO, PM.DESCRIPTION, SUM(QTYORDERED) UNITSORDERED FROM SALES_ORDER SO, SALES_ORDER_DETAILS SOD, PRODUCT_MASTER PM, CLIENT_MASTER CM WHERE SO.ORDER_NO = SOD.ORDER_NO AND SOD.PRODUCT_NO = PM.PRODUCT_NO AND SO.CLIENT_NO = CM.CLIENT_NO GROUP BY SO.CLIENT_NO, SOD.PRODUCT_NO, PM.DESCRIPTION HAVING SO.CLIENT_NO = 'C00003' OR SO.CLIENT_NO = 'C00002';

-- (c) List the product_no and order_no of customers having qty_ordered less than 5 from the sales_order_detail table for the product ‘1.44. Floppies’.
SELECT SOD.PRODUCT_NO, SOD.ORDER_NO FROM SALES_ORDER_DETAILS SOD, SALES_ORDER SO, PRODUCT_MASTER PM WHERE SO.ORDER_NO = SOD.ORDER_NO AND PM.PRODUCT_NO = SOD.PRODUCT_NO AND SOD.QTYORDERED < description ='1.44. Floppies';

-- (d) Find the names of clients who have purchased ‘Mouse’.
SELECT CM.NAME FROM CLIENT_MASTER CM, SALES_ORDER SO, SALES_ORDER_DETAILS SOD, PRODUCT_MASTER PM WHERE SO.ORDER_NO = SOD.ORDER_NO AND SOD.PRODUCT_NO = PM.PRODUCT_NO AND SO.CLIENT_NO = CM.CLIENT_NO AND PM.DESCRIPTION = 'Mouse';

-- (e) Find the customer name, city and pincode for the client who has placed order no ‘O1001’.
SELECT CM.NAME, CM.CITY, CM.PINCODE FROM CLIENT_MASTER CM, SALES_ORDER SO WHERE SO.ORDER_NO = 'O1001' AND SO.CLIENT_NO = CM.CLIENT_NO;

-- (f) Find the names of the clients for whom order despatched more than Rs. 10000.
SELECT CM.NAME FROM CLIENT_MASTER CM, SALES_ORDER SO, SALES_ORDER_DETAILS SOD WHERE SO.ORDER_NO = SOD.ORDER_NO AND SO.CLIENT_NO = CM.CLIENT_NO AND SO.TOTAL_AMOUNT > 10000;

-- (g) List the employee who works in Development department.
SELECT EMPLOYEE_NO, NAME FROM EMPLOYEE WHERE DEPARTMENT = 'Development';

-- (h) List the employee works location whose employee number is E0005.
SELECT EMPLOYEE_NO, NAME FROM EMPLOYEE WHERE EMPLOYEE_NO = 'E0005';

-- (i) List the employee works location whose employee number is E0003.
SELECT EMPLOYEE_NO, NAME FROM EMPLOYEE WHERE EMPLOYEE_NO = 'E0003';

-- (j) List the employee’s job who works for department D002.
SELECT EMPLOYEE_NO, NAME FROM EMPLOYEE WHERE DEPARTMENT = 'D002';

-- (k) List the salary for the employee who works in department D004
SELECT EMPLOYEE_NO, NAME, SALARY FROM EMPLOYEE WHERE DEPARTMENT = 'D004';

-----------------------------------------------------------------------------------------------------------
-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 3. Updation of data in the tables:
-- (a) Update salary in salesman_master with 15% increment.
UPDATE SALESMAN_MASTER SET SALARY = SALARY * 1.15;

-- (b) Change the city of client_no ‘C00005’ to ‘Bombay’.
UPDATE CLIENT_MASTER SET CITY = 'Bombay' WHERE CLIENT_NO = 'C00005';

-- (c) Change the cost price of ‘1.22 Floppies’ to Rs. 950.00
UPDATE PRODUCT_MASTER SET COSTPRICE = 950 WHERE DESCRIPTION = '1.22 Floppies';

-- (d) Change the balance of client_no ‘C00001’ to Rs.1000.
UPDATE CLIENT_MASTER SET BAL_DUE = 1000 WHERE CLIENT_NO = 'C00001';

-- (e) Change the city of the salesman to Mumbai.
UPDATE SALESMAN_MASTER SET CITY = 'Mumbai' WHERE SALESMAN_NO = 'S00001';

-----------------------------------------------------------------------------------------------------------
-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 4. Deletion of data in the tables:
-- (a) Delete all salesmen from the salesman_master whose salaries are equal to Rs. 3500.
DELETE FROM SALESMAN_MASTER WHERE SALARY = 3500;

-- (b) Delete all products from product_master where the quantity on hand is equal to 100.
DELETE FROM PRODUCT_MASTER WHERE QTY_ON_HAND = 100;

-- (c) Delete all products from product_master for 1.44 drive.
DELETE FROM PRODUCT_MASTER WHERE DESCRIPTION = '1.44 Drive';

-- (d) Delete from client_master where the column state holds the value ‘Tamil Nadu’.
DELETE FROM CLIENT_MASTER WHERE STATE = 'Tamil Nadu';

-- (e) Delete from clinet_master where the value in the bal_due is less than 500.
DELETE FROM CLIENT_MASTER WHERE BAL_DUE < 500;

-----------------------------------------------------------------------------------------------------------
-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 5. Computations on table data:
-- (a) Count the total number of orders placed by the clients.
SELECT COUNT(*) FROM SALES_ORDER;

-- (b) Count the total number of orders dispatched to the clients.
SELECT COUNT(*) FROM SALES_ORDER_DETAILS;

-- (c) Calculate the average price of all the products.
SELECT AVG(PRICE) FROM PRODUCT_MASTER;

-- (d) Determine the maximum and minimum product prices.
SELECT MAX(PRICE), MIN(PRICE) FROM PRODUCT_MASTER;

-- (e) Count the number of products having price greater than or equal to 1500.
SELECT COUNT(*) FROM PRODUCT_MASTER WHERE PRICE >= 1500;

-- (f) Find all the products whose qty_on_hand is less than reorder level.
SELECT DESCRIPTION FROM PRODUCT_MASTER WHERE QTY_ON_HAND < REORDER_LEVEL;

-----------------------------------------------------------------------------------------------------------
-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 6. Using having and group by clauses:
-- (a) Print the description and total qty sold for each product.
SELECT DESCRIPTION, SUM(QTYORDERED) FROM SALES_ORDER_DETAILS GROUP BY DESCRIPTION;

-- (b) Find the value of each product sold.
SELECT DESCRIPTION, SUM(QTYORDERED * PRICE) FROM SALES_ORDER_DETAILS GROUP BY DESCRIPTION;

-- (c) Calculate the average qty sold for each client that has a maximum order value of 15000.00
SELECT CM.NAME, AVG(SOD.QTYORDERED) FROM CLIENT_MASTER CM, SALES_ORDER SO, SALES_ORDER_DETAILS SOD WHERE SO.ORDER_NO = SOD.ORDER_NO AND SO.CLIENT_NO = CM.CLIENT_NO AND SO.TOTAL_AMOUNT <= 15000 GROUP BY CM.NAME;

-- (d) Find out the sum total of all the billed orders for the month of January.
SELECT SUM(TOTAL_AMOUNT) FROM SALES_ORDER WHERE MONTH = 1;

-----------------------------------------------------------------------------------------------------------
-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 7. Date manipulation:
-- (a) Display the order number and day on which clients placed their order.
SELECT ORDER_NO, DAY(ORDER_DATE) FROM SALES_ORDER;

-- (b) Display the month (in alphabets) and date when the order must be delivered.
SELECT MONTHNAME(DELIVERY_DATE), DAY(DELIVERY_DATE) FROM SALES_ORDER;

-- (c) Display the order_date in the format ‘DD-Month-YY’ e.g. 12-February-96.
SELECT ORDER_DATE FROM SALES_ORDER;

-- (d) Find the date, 15 days after today’s date.
SELECT DATEADD(DAY, 15, GETDATE());

-- (e) Find the number of days elapsed between today’s date and the delivery date of the orders placed by the clients.
SELECT DELIVERY_DATE, DATEDIFF(DAY, GETDATE(), DELIVERY_DATE) FROM SALES_ORDER;

-----------------------------------------------------------------------------------------------------------
-- Author Name: Aman Upadhyay
-- Author Email: amanupadhyay0208@gmail.com
-- Author URI: https://github.com/AmanxUpadhyay
-- Date: 2021-12-01

-- 8. Sub-queries:
-- (a) Display the employees with their salaries whose salary is less than the average salary.
SELECT EMPLOYEE_NO, NAME, SALARY FROM EMPLOYEE WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEE);

-- (b) Find the names of the clients who placed order worth Rs. 10000 or more.
SELECT NAME FROM CLIENT_MASTER WHERE CLIENT_NO IN (SELECT CLIENT_NO FROM SALES_ORDER WHERE TOTAL_AMOUNT >= 10000);

-- (c) Find the product_no and description of non-moving products i.e. products not being sold.
SELECT PRODUCT_NO, DESCRIPTION FROM PRODUCT_MASTER WHERE PRODUCT_NO NOT IN (SELECT PRODUCT_NO FROM SALES_ORDER_DETAILS);

-- (d) Find the customer name, address1, address2, city and pincode for the client who has placed order no O1001.
SELECT CM.NAME, CM.ADDRESS1, CM.ADDRESS2, CM.CITY, CM.PINCODE FROM CLIENT_MASTER CM, SALES_ORDER SO WHERE SO.CLIENT_NO = CM.CLIENT_NO AND SO.ORDER_NO = 'O1001';

-- (e) Find the client names who have placed orders before the month of May ’96.
SELECT NAME FROM CLIENT_MASTER WHERE CLIENT_NO IN (SELECT CLIENT_NO FROM SALES_ORDER WHERE MONTH < 5);