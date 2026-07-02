/*
Create Database and Schemas

Script Purpose:
	This script creates a new database named 'NiwaDataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the database: "bronze", "silver", and "gold".

Warning:
	Running this script will drop the entire 'NiwaDataWarehouse' database if it exists.
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script.
*/


USE master;
GO

-- Drop and recreate the 'NiwaDataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'NiwaDataWarehouse')
BEGIN
	ALTER DATABASE NiwaDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE NiwaDataWarehouse;
END;
GO

-- Create Database 'NiwaDataWarehouse'
CREATE DATABASE NiwaDataWarehouse;

USE NiwaDataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
