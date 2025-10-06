--Task 2: Return the following from table PatientData
-- Write a SQL query to retrieve the full names and phone numbers of all female patients who have an outstanding balance greater than 1,000.
-- Find the average outstanding balance of all male patients.
-- List all patients registered before 10:00 AM.
-- Find patients whose outstanding balance is exactly zero.
-- Retrieve the names and emails of patients born before 1990.
-- Show the patient with the highest outstanding balance.
-- Count how many male and female patients are in the table.
-- List all patients whose phone number starts with '080'.
-- Find patients whose names contain the letter 'e'.
-- Display all patients sorted by their outstanding balance in descending order.
-- Show the youngest patient in the table.
-- Retrieve all patients who registered after 12:00 PM.

SELECT*
FROM PatientData;

SELECT FullName, PhoneNumber, Gender, OutstandingBalance
FROM PatientData 
WHERE Gender = 'F' AND OutstandingBalance > 1000;

SELECT Gender, AVG(OutstandingBalance) AS AverageBalance
FROM PatientData
WHERE Gender = 'M'
GROUP BY Gender;

SELECT FullName, RegistrationTime
FROM PatientData
WHERE RegistrationTime < '10:00:00';

SELECT FullName, OutstandingBalance
FROM PatientData
WHERE OutstandingBalance = 0.00;

SELECT FullName, Email, DateOfBirth
FROM PatientData
WHERE DateOfBirth < '1990';

SELECT TOP 1 FullName, OutstandingBalance
FROM PatientData
ORDER BY OutstandingBalance DESC;

SELECT Gender, COUNT(*) AS FullCount
FROM PatientData
GROUP BY Gender;

SELECT FullName, PhoneNumber
FROM PatientData
WHERE PhoneNumber LIKE '080%';

SELECT FullName
FROM PatientData
WHERE FullName LIKE '%e%';

SELECT FullName, OutstandingBalance
FROM PatientData
ORDER BY OutstandingBalance DESC;

SElECT FullName, DateOfBirth
FROM PatientData
WHERE DateOfBirth = (
      SELECT MAX(DateOfBirth)
	  FROM PatientData
);

SELECT FullName, RegistrationTime
FROM PatientData
WHERE RegistrationTime > '12:00:00';

SELECT*
FROM PatientData;

