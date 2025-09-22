CREATE TABLE PatientData (
[PatientID] INT PRIMARY KEY NOT NULL,
[FullName] VARCHAR(50) NOT NULL,
[Gender] CHAR(1) NOT NULL,
[DateOfBirth] DATE NOT NULL,
[PhoneNumber] NVARCHAR(15) NOT NULL,
[Email] NVARCHAR(50) NOT NULL,
[RegistrationTime] Time NOT NULL,
[OutstandingBalance] Decimal(7,2) NOT NULL
);
INSERT INTO PatientData (PatientID, FullName, Gender, DateOfBirth, PhoneNumber, Email, RegistrationTime, OutstandingBalance)
VALUES 
(101, 'Adaobi Okafor', 'F', '1990-03-15', '08034567890', 'adaobi.okafor@email.com', '08:30:00', 15000.50),
(102, 'Chinedu Eze', 'M', '1985-07-22', '08098765432', 'chinedu.eze@email.com', '09:15:00', 0.00),
(103, 'Ngozi Nwankwo', 'F', '1978-11-05', '08123456789', 'ngozi.nwankwo@email.com', '10:00:00', 3200.75),
(104, 'Emeka Umeh', 'M', '1992-01-30', '08011223344', 'emeka.umeh@email.com', '11:45:00', 500.00),
(105, 'Ifeoma Anya', 'F', '1988-06-18', '08199887766', 'ifeoma.anya@email.com', '12:20:00', 0.00);

SELECT FullName, Gender, PhoneNumber, Email
FROM PatientData;

SELECT Gender AS Gen, OutstandingBalance AS Outstand
FROM PatientData
WHERE Gender = 'F' AND OutstandingBalance > 1000;

SELECT Gender, AVG(OutstandingBalance) AS AverageBalance 
FROM PatientData
WHERE Gender = 'M'
GROUP BY Gender;

SELECT RegistrationTime
FROM PatientData
WHERE RegistrationTime < '10:00:00';

SELECT FullName, OutstandingBalance
FROM PatientData
WHERE OutstandingBalance = 0.00;

SELECT DateOfBirth
FROM PatientData
WHERE DateOfBirth < '1990-01-01';

SELECT MAX(OutstandingBalance) AS OutstandingBalance
FROM PatientData;

SELECT Gender, COUNT(*) AS FullCount
FROM PatientData
GROUP BY Gender;

SELECT PhoneNumber
FROM PatientData
WHERE PhoneNumber LIKE '080%';

SELECT FullName
FROM PatientData
WHERE FullName LIKE '%e%';

SELECT OutstandingBalance
FROM PatientData
ORDER BY OutstandingBalance DESC;

SELECT MIN(DateOfBirth) AS BirthDate
FROM PatientData;

SELECT RegistrationTime
FROM PatientData
WHERE RegistrationTime > '12:00:00';