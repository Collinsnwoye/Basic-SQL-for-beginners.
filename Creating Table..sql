CREATE TABLE [Hightown.Academy] (
[ID] INT IDENTITY(1,1) NOT NULL,
[First_Name] VARCHAR(50) NOT NULL,
[Last_Name] VARCHAR(50) NOT NULL,
[School] VARCHAR(50) NOT NULL,
[Hire_Date] Date NOT NULL,
[Salary] Decimal NOT NULL
);
INSERT INTO [Hightown.Academy] (First_Name, Last_Name, School, Hire_Date, Salary)
VALUES ('Janet', 'Smith', 'F.D. Roosevelt HS', '2011-10-30', 36200), 
       ('Lee', 'Reynolds', 'F.D. Roosevelt HS', '1993-05-22', 65000), 
       ('Samuel', 'Cole', 'Myers Middle School', '2005-08-01', 43500), 
       ('Samantha', 'Bush', 'Myers Middle School', '2011-10-30', 36200), 
       ('Betty', 'Diaz', 'Myers Middle School', '2005-08-30', 43500), 
       ('Kathleen', 'Roush', 'F.D. Roosevelt HS', '2010-10-22', 38500);
