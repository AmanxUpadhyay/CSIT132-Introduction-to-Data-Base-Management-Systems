-- Create Table name Accounts with columns:
-- Account_Id (varchar 5), Name (varchar 10), Bal number (6)

CREATE TABLE Accounts (
    Account_Id VARCHAR(5),
    Name VARCHAR(10),
    Bal INT(6)
);

-- Insert data into Accounts table:
-- Account_Id Name Bal
-- AC001 Anuj 5000
-- AC002 Robert 10000

INSERT INTO Accounts VALUES ('AC001', 'Anuj', 5000);
INSERT INTO Accounts VALUES ('AC002', 'Robert', 10000);

-- Add columns “Access_date” datatype date to Accounts table
ALTER TABLE Accounts ADD COLUMN Access_date DATE;

-- Find accounts holder who are having balance less than 5000
SELECT * FROM Accounts WHERE Bal < 5000;

-- Update any one of the account holder who are having less than 5000 to 6000
UPDATE Accounts SET Bal = 6000 WHERE Bal < 5000;

-- Show Table 
SELECT * FROM Accounts;