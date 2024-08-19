SELECT *
FROM ExampleProjects.dbo.Housing

--Standardize Date format

SELECT SaleDateConverted, CONVERT(Date, SaleDate)
FROM ExampleProjects.dbo.Housing

UPDATE Housing
SET SaleDate = CONVERT(Date, SaleDate)

ALTER TABLE Housing
ADD SaleDateConverted Date;

UPDATE Housing
SET SaleDateConverted = CONVERT(Date, SaleDate)