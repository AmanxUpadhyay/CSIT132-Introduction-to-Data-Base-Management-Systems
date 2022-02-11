-- Update dept no D005 to D002 in Dept table.
UPDATE DEPT SET Deptno = 'D002' WHERE Deptno = 'D005';

-- Insert dept no. D006 in dept table
INSERT INTO DEPT VALUES ('D006', 'HR', 'Noida');

-- Insert new employees for dept D006
INSERT INTO EMPLOYEE VALUES ('E0006', 'Kim', 'Manager', '15-Dec-02', '5000', '500', 'D006');

-- Delete dept no. D006
DELETE FROM DEPT WHERE Deptno = 'D006';