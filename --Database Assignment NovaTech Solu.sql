--Database Assignment: NovaTech Solutions
--Objective
--Design and implement a relational database for a fictional company, NovaTech Solutions. Populate it with synthetic data and run queries to explore relationships between tables.
--Tasks
--Create the Database
--Create a new database called NovaTechDB.
--Define Tables
--Create the following tables with appropriate primary keys and foreign keys:
--Company
--Employees
--Clients
--Transactions
--Insert Synthetic Data
--Insert at least:
--1 company record
--8 employee records
--6 client records
--8 transaction records
--(Use the synthetic data provided earlier as your starting point.)
--Test Referential Integrity
--Try inserting a transaction with a ClientID that doesn’t exist.
--Observe how the foreign key constraint prevents invalid data.
--Run Queries
--Find the average salary per department.
--List all transactions for a specific client (e.g., AlphaBank).
--Calculate the total contract value per country.
--Show all employees hired after 2020.
--Find the top 3 clients by transaction amount.
--Bonus Challenge
--Create a query that joins Employees and Company to show each employee’s name alongside the company name.
--Write a query that shows total revenue generated from each product (NovaCRM, TaskFlow, InsightAI).
--Company
--CompanyID: 1
--Name: NovaTech Solutions
--Industry: Software Development
--Founded Year: 2015
--Headquarters: Berlin, Germany
--Annual Revenue: €18,500,000
--👩‍💼 Employees
--EmployeeID	CompanyID	Name	Department	Role	HireYear	Salary (€)
--1	1	Anna Müller	Engineering	Software Engineer	2018	72,000
--2	1	David Kim	Sales	Account Executive	2020	58,000
--3	1	Maria Lopez	Marketing	Digital Strategist	2019	65,000
--4	1	Jonas Becker	HR	HR Manager	2017	60,000
--5	1	Chloe Dubois	Customer Support	Support Specialist	2021	45,000
--6	1	Samuel Okoro	Engineering	DevOps Engineer	2022	70,000
--7	1	Elena Petrova	Engineering	Data Scientist	2023	75,000
--8	1	James Carter	Sales	Sales Manager	2016	80,000
--🤝 Clients
--ClientID	CompanyName	Industry	Country	ContractValue (€)
--101	AlphaBank	Finance	Switzerland	1,200,000
--102	GreenEnergy Corp	Renewable Energy	Denmark	950,000
--103	MedicaLife	Healthcare	France	1,500,000
--104	SkyLogistics	Transportation	Germany	800,000
--105	BrightEdu	Education	Nigeria	600,000
--106	AgroPlus	Agriculture	Kenya	720,000
--💳 Transactions
--TransactionID	ClientID	Product	Date	Amount (€)
--5001	101	NovaCRM	2025-03-14	300,000
--5002	102	TaskFlow	2025-06-22	250,000
--5003	103	InsightAI	2025-09-10	450,000
--5004	104	NovaCRM	2025-11-05	200,000
--5005	101	InsightAI	2026-01-18	500,000
--5006	105	TaskFlow	2026-02-20	150,000
--5007	106	InsightAI	2026-03-05	220,000
--5008	103	NovaCRM	2026-04-12	300,000

Create Database NovaTechDB;

--Company
--CompanyID: 1
--Name: NovaTech Solutions
--Industry: Software Development
--Founded Year: 2015
--Headquarters: Berlin, Germany
--Annual Revenue: €18,500,000

Create Table Company (
[CompanyID] INT PRIMARY KEY NOT NULL,
[Name] VARCHAR(50) NOT NULL,
[Industry] VARCHAR(50) NOT NULL,
[Founded_Year] INT NOT NULL,
[Headquarters] VARCHAR(50) NOT NULL,
[Annual_Revenue] DECIMAL(15,2)
);

Select* From Company;
--CompanyID: 1
--Name: NovaTech Solutions
--Industry: Software Development
--Founded Year: 2015
--Headquarters: Berlin, Germany
--Annual Revenue: €18,500,000

INSERT INTO Company (CompanyID, Name, Industry, Founded_Year, Headquarters, Annual_Revenue)
VALUES
(1, 'NovaTech Solutions', 'Software Development', 2015, 'Berlin, Germany', 18500000);

Select* From Company;
  