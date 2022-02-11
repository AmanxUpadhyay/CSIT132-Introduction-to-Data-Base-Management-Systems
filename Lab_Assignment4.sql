-- Create a sales master table with the following columns: Salesman_no	Varchar2	6, Salesman_Name	Varchar2	20, Address	Varchar2	30, City	Varchar2	15, Pincode	Number	6, State	Varchar2	15, Sale_amt	Number	10,2, Tgt_to_get	Nember	5

CREATE TABLE SALES_MASTER (
    SALESMAN_NO VARCHAR2(6),
    SALESMAN_NAME VARCHAR2(20),
    ADDRESS VARCHAR2(30),
    CITY VARCHAR2(15),
    PINCODE NUMBER(6),
    STATE VARCHAR2(15),
    SALE_AMT NUMBER(10,2),
    TGT_TO_GET NUMBER(5)
);

-- Insert following data into Sales master:
-- 500001 	Kiran 	A/14,worli 	Bombay 	400002 	Mah 	3000 	100 
-- 500002 	Manish 	65,nariman	Bombay	400001 	Mah 	3000 	200 
-- 500003 	Ravi 	P-7,Bandra	Bombay	400032 	Mah 	3000 	200 
-- 500004 	Ashish 	A/5,Juhu 	Bombay	400044 	Mah 	3500 	200 

INSERT INTO SALES_MASTER VALUES ('500001','Kiran','A/14,worli','Bombay','400002','Mah','3000','100');
INSERT INTO SALES_MASTER VALUES ('500002','Manish','65,nariman','Bombay','400001','Mah','3000','200');
INSERT INTO SALES_MASTER VALUES ('500003','Ravi','P-7,Bandra','Bombay','400032','Mah','3000','200');
INSERT INTO SALES_MASTER VALUES ('500004','Ashish','A/5,Juhu','Bombay','400044','Mah','3500','200');

-- Show Table Sales Master
SELECT * FROM SALES_MASTER;

-- Create a Sales_Order_Detail table with columns: 
-- Order_no	Varchar2	8 
-- Prod_no	Varchar2	8
-- Client_no	Varchar2	8
-- Qty_ordered	Number	8,
-- Qty_disp	Number	8, Product_cost	Number	12,2	

CREATE TABLE SALES_ORDER_DETAIL (
    ORDER_NO VARCHAR2(8),
    PROD_NO VARCHAR2(8),
    CLIENT_NO VARCHAR2(8),
    QTY_ORDERED NUMBER(8),
    QTY_DISP NUMBER(8),
    PRODUCT_COST NUMBER(12,2)
);

-- Create Order_no as Primary Key
ALTER TABLE SALES_ORDER_DETAIL ADD (
    ORDER_NO VARCHAR2(8) PRIMARY KEY
);

-- Create Prod_no as Primary Key and Foreign Key to references product_no of Product_master table
ALTER TABLE SALES_ORDER_DETAIL ADD (
    PROD_NO VARCHAR2(8) PRIMARY KEY,
    FOREIGN KEY (PROD_NO) REFERENCES PRODUCT_MASTER (PRODUCT_NO)
);

-- Create Client_no as Foreign Key to references client_no of client_master table.
ALTER TABLE SALES_ORDER_DETAIL ADD (
    CLIENT_NO VARCHAR2(8) FOREIGN KEY (CLIENT_NO) REFERENCES CLIENT_MASTER (CLIENT_NO)
);


-- Insert the following data into the above table SALES_ORDER_DETAIL:
-- O1001	P00001	C00004	4	4	2100
-- O1001	P08865	C00004	3	2	2000
-- O1002	P06734	C00003	10	8	8000
-- O1003	P03453	C00001	1	1	12000
-- O1004	P07965	C00005	1	1	8000
-- O1005	P06734	C00002	5	5	5000

INSERT INTO SALES_ORDER_DETAIL VALUES ('O1001','P00001','C00004','4','4','2100');
INSERT INTO SALES_ORDER_DETAIL VALUES ('O1001','P08865','C00004','3','2','2000');
INSERT INTO SALES_ORDER_DETAIL VALUES ('O1002','P06734','C00003','10','8','8000');
INSERT INTO SALES_ORDER_DETAIL VALUES ('O1003','P03453','C00001','1','1','12000');
INSERT INTO SALES_ORDER_DETAIL VALUES ('O1004','P07965','C00005','1','1','8000');
INSERT INTO SALES_ORDER_DETAIL VALUES ('O1005','P06734','C00002','5','5','5000');

-- Show Table Sales_Order_Detail
SELECT * FROM SALES_ORDER_DETAIL;