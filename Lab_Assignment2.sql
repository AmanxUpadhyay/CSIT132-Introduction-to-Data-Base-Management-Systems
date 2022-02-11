-- Create the following tables:

-- EMPLOYEE table structure: (CHILD)
-- Column Name DataType Size
-- Empno Varchar2 6
-- Ename Varchar2 20
-- Job (Designation) Char 10
-- Hiredate Date
-- Basic_sal Number (9,2)
-- Comm Number (7,2)
-- Dept_no Varchar2 8

-- DEPT table structure: (PARENT)
-- Column Name DataType Size
-- Deptno Varchar2 8
-- Dname Varchar2 20
-- Location Varchar2 20

CREATE TABLE DEPT (
    Deptno VARCHAR2(8) NOT NULL,
    Dname VARCHAR2(20) NOT NULL,
    Location VARCHAR2(20) NOT NULL,
    CONSTRAINT pk_deptno PRIMARY KEY (Deptno)
);

-- Insert the following data into the table DEPT:
-- D001 Accounts Noida
-- D002 R & D Rocky Creek
-- D003 Admin Seatle
-- D004 Development Boston
-- D005 Production New York

INSERT INTO DEPT VALUES ('D001', 'Accounts', 'Noida');
INSERT INTO DEPT VALUES ('D002', 'R & D', 'Rocky Creek');
INSERT INTO DEPT VALUES ('D003', 'Admin', 'Seatle');
INSERT INTO DEPT VALUES ('D004', 'Development', 'Boston');
INSERT INTO DEPT VALUES ('D005', 'Production', 'New York');

CREATE TABLE EMPLOYEE (
    Empno VARCHAR2(6) NOT NULL,
    Ename VARCHAR2(20) NOT NULL,
    Job CHAR(10) NOT NULL,
    Hiredate DATE NOT NULL,
    Basic_sal NUMBER(9,2) NOT NULL,
    Comm NUMBER(7,2) NOT NULL,
    Dept_no VARCHAR2(8) NOT NULL,
    CONSTRAINT pk_empno PRIMARY KEY (Empno)
);

-- Insert the following data into the table EMPLOYEE:
-- E0001 Kim Manager 15-Dec-02 5000 500 D001
-- E0002 Bruce Analyst 24-Apr-99 4000 400 D002
-- E0003 Arnold Clerk 10-Jan-01 2500 250 D004
-- E0004 Kelly Admin 11-Apr-99 2000 200 D003
-- E0005 Holyfield Tester 10-Oct-01 3000 300 D002

INSERT INTO EMPLOYEE VALUES ('E0001', 'Kim', 'Manager', '15-Dec-02', '5000', '500', 'D001');
INSERT INTO EMPLOYEE VALUES ('E0002', 'Bruce', 'Analyst', '24-Apr-99', '4000', '400', 'D002');
INSERT INTO EMPLOYEE VALUES ('E0003', 'Arnold', 'Clerk', '10-Jan-01', '2500', '250', 'D004');
INSERT INTO EMPLOYEE VALUES ('E0004', 'Kelly', 'Admin', '11-Apr-99', '2000', '200', 'D003');
INSERT INTO EMPLOYEE VALUES ('E0005', 'Holyfield', 'Tester', '10-Oct-01', '3000', '300', 'D002');

-- Create a foreign key constraint for Dept_no in table EMPLOYEE
ALTER TABLE EMPLOYEE
ADD CONSTRAINT fk_deptno
FOREIGN KEY (Dept_no) REFERENCES DEPT (Deptno);

-- Add Check constraint to check Comm is between 0 and 500
ALTER TABLE EMPLOYEE
ADD CONSTRAINT chk_comm
CHECK (Comm BETWEEN 0 AND 500);

-- List of all employee working in development department
SELECT * FROM EMPLOYEE WHERE Dept_no = 'D004';

-- List the employee works location whose employee number is E0005.
SELECT * FROM EMPLOYEE WHERE Empno = 'E0005';

-- List the employee works location whose employee number is E0003
SELECT * FROM EMPLOYEE WHERE Empno = 'E0003';

-- List the employee’s job who works for department D002.
SELECT * FROM EMPLOYEE WHERE Dept_no = 'D002';

-- List the salary for the employee who works in department D004
SELECT * FROM EMPLOYEE WHERE Dept_no = 'D004';