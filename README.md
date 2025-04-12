🧾 Project Title:
KFC Employee Management System

📌 Project Description:
This DBMS mini-project focuses on building a relational database system for managing employees at a KFC branch/company. It includes key data management components such as employee information, contact details, performance tracking, and order activities. The system is designed to help streamline HR operations and decision-making using SQL.

🎯 Objectives:
To understand and implement real-world database design.

To create and manipulate tables using SQL.

To apply constraints for data integrity.

To perform queries for data analysis, reporting, and updates.

To visualize entity relationships through ER diagrams.

🧠 Case Study Chosen:
KFC (Kentucky Fried Chicken)
Domain: Employee Management System

🧱 Database Schema Summary:
1. Employee_Master
Stores main details of employees.

Fields: Emp_ID, Emp_Name, Department, Age, Aadhar, PAN, Salary

Constraints: Emp_ID as Primary Key, Aadhar as Unique, Age with Check

2. Employee_Contact
Stores address, phone numbers, and email.

Linked via Foreign Key: Emp_ID

3. Employee_Performance
Tracks performance grades, next and previous targets, and achieved metrics.

Linked via Foreign Key: Emp_ID

4. Order_Status
Tracks recent employee activity related to orders.

Includes: Order_ID, Items, Payment_Method, and Amount

Order_ID is Unique, Emp_ID as Foreign Key

🔁 Relationships:
One-to-many relationship from Employee_Master to all other tables via Emp_ID.

Represented in:

ER Diagram (attached in report)

Tabular relationship format (showing PK, FK, and constraints)

💾 Technologies Used:
Database: MySQL

Tools: MySQL Workbench 

Diagram Tool: draw.io

Documentation: Microsoft Word

🔎 SQL Features Implemented:
CREATE TABLE, INSERT INTO, UPDATE, DELETE

ALTER TABLE, DROP

SELECT, WHERE, LIKE, BETWEEN, IN

GROUP BY, ORDER BY, LIMIT

JOIN operations (INNER JOIN)

Subqueries and nested SELECT

Aggregation: SUM(), AVG(), MAX(), COUNT()

📊 Sample Queries Executed (20+ Queries):
Display all employees.

Filter employees by department, name pattern, or age.

Update salaries or departments.

Delete inactive employees.

Join performance and contact tables.

Use aggregation to summarize performance and revenue.

Find top performers and highest salaries.

Subqueries to compare achievements.

✅ Query results have been captured via screenshots and attached in the report.

🖼 ER Diagram:
The ER diagram clearly shows entities:

Employee, Contact, Performance, and Orders With relationships drawn using connectors and primary/foreign key links.

📑 Project Deliverables:
ER Diagram

Schema Documentation

SQL Table Scripts

Query Scripts

Sample Outputs

Final Project Report (PDF)

👨‍💻 Project Developed By:
Name: Shweta Kumari

UID: 23BCA10813

Section: 4A

Semester: 4th

Course: BCA

