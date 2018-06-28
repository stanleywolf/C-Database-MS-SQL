CREATE DATABASE Minions

CREATE TABLE Minions(
	Id INT PRIMARY KEY NOT NULL,
	[Name] VARCHAR(50) NOT NULL,
	Age INT NOT NULL,
)
CREATE TABLE Towns(
	Id INT PRIMARY KEY NOT NULL,
	[Name] VARCHAR(50) NOT NULL
)
ALTER TABLE Minions
	ADD TownId INT FOREIGN KEY
	REFERENCES Towns(Id)

ALTER TABLE Minions
ALTER COLUMN Age VARCHAR(50)

INSERT INTO Towns(Id,[Name])
VALUES
(1,'Sofia'),
(2,'Plovdiv'),
(3,'Varna')

INSERT INTO Minions(Id,[Name],Age,TownId)
VALUES
(1,'Kevin',22,1),
(2,'Bob',15,3),
(3,'Steward',NULL,2)

TRUNCATE TABLE Minions
DROP TABLE Minions
DROP TABLE Towns