CREATE DATABASE KFC;
USE KFC;

CREATE TABLE Employee_Master (
	Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50) NOT NULL,
    Department VARCHAR(20),
    Age INT CHECK(Age > 21),
	Aadhar_No VARCHAR(15) UNIQUE NOT NULL,
	PAN_No VARCHAR(15) UNIQUE,
	Salary DECIMAL(10,2)
);

CREATE TABLE Employee_Contact (
	Emp_ID INT PRIMARY KEY,
	Address VARCHAR(100),
    Phone_No VARCHAR(15),
    Alt_Phone_No VARCHAR(15),
    Email VARCHAR(50) UNIQUE,
	FOREIGN KEY (Emp_ID) REFERENCES Employee_Master(Emp_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Employee_Performance (
	Emp_ID INT PRIMARY KEY,
    Performance_Grade CHAR(2),
	Next_Target INT,
    Previous_Target INT,
    Achieved INT,
	FOREIGN KEY (Emp_ID) REFERENCES Employee_Master(Emp_ID)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE Order_Status (
	Order_ID INT PRIMARY KEY,
	Emp_ID INT,
    Activity_Status CHAR(3),
    Item_Name VARCHAR(30),
    Payment_Method VARCHAR(20),
    Amount INT,
	FOREIGN KEY (Emp_ID) REFERENCES Employee_Master(Emp_ID)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

INSERT INTO Employee_Master (Emp_ID, Emp_Name, Department, Age, Aadhar_No, PAN_No, Salary)
VALUES
	(201, 'Arjun', 'Kitchen', 26, '111122223333', 'AKP1234P', 32000.75),
    (202, 'Deepa', 'Delivery', 34, '222233334444', 'DPL4567Q', 29500.50),
	(203, 'Sana', 'Service', 29, '333344445555', 'SNA7890R', 28000.00),
	(204, 'Ravi', 'Kitchen', 40, '444455556666', 'RVI1234S', 30500.00),
	(205, 'Meena', 'Cashier', 31, '555566667777', 'MNA4567T', 26500.00),
    (206, 'Karan', 'Manager', 38, '666677778888', 'KRN7890U', 45500.00),
    (207, 'Simran', 'Service', 27, '777788889999', 'SMR3210V', 27000.00),
    (208, 'Tina', 'Delivery', 33, '888899990000', 'TNA6543W', 25000.00),
	(209, 'Ayaan', 'Kitchen', 41, '999900001111', 'AYN0987X', 33500.00),
	(210, 'Zara', 'Cashier', 36, '000011112222', 'ZRA5432Y', 31000.00),
    (211, 'Nikhil', 'Service', 28, '123456789012', 'NKL1478Z', 29500.00),
    (212, 'Utsav', 'Admin', 35, '234567890123', 'UTS7890A', 50000.00);

INSERT INTO Employee_Contact (Emp_ID, Address, Phone_No, Alt_Phone_No, Email)
VALUES
	(201, 'Delhi', '9876543210', '9123456780', 'arjun@kfc.com'),
	(202, 'Mumbai', '8765432109', '9234567891', 'deepa@kfc.com'),
	(203, 'Chennai', '7654321098', '9345678912', 'sana@kfc.com'),
	(204, 'Hyderabad', '6543210987', '9456789123', 'ravi@kfc.com'),
	(205, 'Kolkata', '5432109876', '9567891234', 'meena@kfc.com'),
	(206, 'Pune', '4321098765', '9678912345', 'karan@kfc.com'),
	(207, 'Ahmedabad', '3210987654', '9789123456', 'simran@kfc.com'),
	(208, 'Bangalore', '2109876543', '9891234567', 'tina@kfc.com'),
	(209, 'Lucknow', '1098765432', '9901234567', 'ayaan@kfc.com'),
	(210, 'Patna', '9987654321', '9012345678', 'zara@kfc.com'),
	(211, 'Indore', '8876543210', '8123456789', 'nikhil@kfc.com'),
	(212, 'Jaipur', '7765432109', '7234567890', 'utsav@kfc.com');

INSERT INTO Employee_Performance (Emp_ID, Performance_Grade, Next_Target, Previous_Target, Achieved)
VALUES
	(201, 'A+', 120, 100, 110),
	(202, 'B', 130, 115, 90),
	(203, 'A', 140, 120, 100),
	(204, 'C+', 150, 110, 80),
	(205, 'B', 160, 130, 110),
	(206, 'D', 100, 80, 60),
	(207, 'B+', 125, 120, 115),
	(208, 'C+', 105, 95, 70),
	(209, 'C', 110, 100, 90),
	(210, 'A+', 135, 125, 100),
	(211, 'F', 95, 80, 30),
	(212, 'F', 170, 160, 120);

INSERT INTO Order_Status (Order_ID, Emp_ID, Activity_Status, Item_Name, Payment_Method, Amount)
VALUES
	(4001, 201, 'YES', 'Zinger', 'Cash', 250),
	(4002, 202, 'YES', 'Popcorn', 'UPI', 300),
	(4003, 203, 'NO', 'Bucket', 'Card', 800),
	(4004, 204, 'YES', 'Fries', 'Cash', 150),
	(4005, 205, 'YES', 'Burger', 'Card', 200),
	(4006, 206, 'YES', 'Wrap', 'Cash', 220),
	(4007, 207, 'YES', 'Krusher', 'Card', 180),
	(4008, 208, 'YES', 'Zinger', 'Card', 250),
	(4009, 209, 'YES', 'Chicken Wings', 'Card', 320),
	(4010, 210, 'NO', 'Bucket', 'Cash', 700),
	(4011, 211, 'YES', 'Rice Bowlz', 'UPI', 180),
	(4012, 212, 'NO', 'Zinger', 'Card', 250);

SELECT * FROM Employee_Master;

SELECT Emp_Name FROM Employee_Master 
WHERE Department = 'Kitchen';

SELECT * FROM Employee_Master 
WHERE Age > 30;

SELECT Emp_Name, Salary FROM Employee_Master 
WHERE Salary BETWEEN 35000 AND 50000;

SELECT * FROM Employee_Master 
WHERE Emp_Name LIKE 'S%';

UPDATE Employee_Master SET Department = 'Logistics' 
WHERE Emp_Name = 'Amit';

UPDATE Employee_Master 
SET Salary = Salary * 1.10 
WHERE Department = 'Sales';

DELETE FROM Employee_Master WHERE Emp_ID = 206;

DELETE FROM Employee_Master WHERE Department = 'Logistics';

SELECT em.Emp_Name, ec.Email, ep.Performance_Grade
FROM Employee_Master em
JOIN Employee_Contact ec ON em.Emp_ID = ec.Emp_ID
JOIN Employee_Performance ep ON em.Emp_ID = ep.Emp_ID;

SELECT em.Emp_Name, os.Item_Name, os.Payment_Method
FROM Employee_Master em
JOIN Order_Status os ON em.Emp_ID = os.Emp_ID;

SELECT Department, COUNT(*) AS Num_Employees
FROM Employee_Master
GROUP BY Department;

SELECT AVG(Next_Target) AS Avg_Target
FROM Employee_Performance;

SELECT MAX(Amount) AS 
Max_Amount FROM Order_Status;

SELECT Payment_Method, SUM(Amount) AS Revenue
FROM Order_Status
GROUP BY Payment_Method;

SELECT em.Emp_Name, ep.Achieved
FROM Employee_Master em
JOIN Employee_Performance ep ON em.Emp_ID = ep.Emp_ID
WHERE ep.Achieved = (SELECT MAX(Achieved) FROM Employee_Performance);

SELECT Emp_Name, Salary 
FROM Employee_Master 
WHERE Salary = (SELECT MAX(Salary) FROM Employee_Master);

SELECT Emp_Name, Salary 
FROM Employee_Master 
ORDER BY Salary DESC 
LIMIT 3;

SELECT AVG(Age) AS Average_Age 
FROM Employee_Master;

SELECT em.Emp_Name, em.Department, ec.Address
FROM Employee_Master em
JOIN Employee_Contact ec ON em.Emp_ID = ec.Emp_ID;