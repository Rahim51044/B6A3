Vehicle Rental System – Database Design & SQL Queries

Project Overview:

This project demonstrates the design and implementation of a Vehicle Rental System database using SQL.
It covers database table creation, relationships, dummy data insertion, and SQL queries using JOIN, EXISTS, WHERE, GROUP BY, and HAVING clauses.



Objectives:

Design database tables with proper constraints
Implement 1-to-Many relationships
Insert meaningful dummy data
Retrieve data using advanced SQL queries
Match expected query results 


Table Relationships:

One User → Many Bookings
One Vehicle → Many Bookings
user_id and vehicle_id are foreign keys in the bookings table


Query -  JOIN:

This subquery checks whether the current vehicle exists in the bookings table.
SELECT 1 is used because we only want to check existence, not retrieve data.
If a row is found → the vehicle has been booked
If no row is found → the vehicle has never been booked
