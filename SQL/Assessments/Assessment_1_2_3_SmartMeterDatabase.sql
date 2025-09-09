-- Create and use database
CREATE DATABASE SmartMeters;
USE SmartMeters;

-- Task 0: Create Tables
-- Customers table
CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(80),
    Region VARCHAR(50)
);

-- Smart meter readings table
CREATE TABLE SmartMeterReadings (
    MeterId INT,
    CustomerId INT,
    Location VARCHAR(50),
    InstalledDate DATE,
    ReadingDateTime DATETIME,
    EnergyConsumed FLOAT,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId)
);

-- Insert customers
INSERT INTO Customers VALUES
(101, 'John Snow', 'Pune, West Bengal', 'East'),
(102, 'Vijay Kumar', 'Ahmedabad', 'West'),
(103, 'Isshita', 'Kashmir', 'North'),
(104, 'Somesh', 'Bengaluru, Karnataka', 'South');

-- Insert meter readings
INSERT INTO SmartMeterReadings VALUES
(1001, 101, 'rooftop', '2025-09-08', '2025-10-09 15:37:05', 80),
(1002, 102, 'basement', '2024-11-07', '2025-10-12 16:35:45', 40),
(1003, 103, 'parking space', '2023-05-22', '2025-10-09 11:57:05', 68),
(1004, 104, 'front door', '2023-12-08', '2025-10-14 15:38:05', 38),
(1005, 102, 'basement', '2024-11-07', '2024-10-12 16:35:45', 30),
(1006, 103, 'parking space', '2023-05-22', '2024-10-09 11:57:05', 78),
(1007, 104, 'front door', '2023-12-08', '2024-10-14 15:38:05', 48),
(1008, 102, 'basement', '2024-11-07', '2024-12-12 16:35:45', 45),
(1009, 103, 'parking space', '2023-05-22', '2024-11-09 11:57:05', 48),
(1010, 104, 'front door', '2023-12-08', '2024-12-14 15:38:05', 50);

select * from Customers
select * from SmartMeterReadings



-- Task 1: Find readings with low energy consumption (10–50) in 2024, only from meters installed on or before June 30, 2024
SELECT * FROM SmartMeterReadings 
WHERE EnergyConsumed BETWEEN 10 AND 50
  AND ReadingDateTime BETWEEN '2024-01-01' AND '2024-12-31'
  AND InstalledDate <= '2024-06-30';

-- Task 2: Average and maximum consumption per customer for readings taken in this year
SELECT CustomerId, AVG(EnergyConsumed) AS AvgEnergyConsumed, MAX(EnergyConsumed) AS MaxEnergyConsumed
FROM SmartMeterReadings
WHERE ReadingDateTime >= '2025-01-01'
GROUP BY CustomerId;
