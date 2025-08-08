postgres=# create database employee_performance_db;
CREATE DATABASE

postgres=# \c employee_performance_db
You are now connected to database "employee_performance_db" as user "postgres".

employee_performance_db=# create table Departments(department_id SERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL);
CREATE TABLE

employee_performance_db=# CREATE TABLE Employees(employee_id SERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL, department_id INT REFERENCES Departments(department_id), hire_date DATE NOT NULL);
CREATE TABLE

employee_performance_db=# CREATE TABLE PerformanceReviews(review_id SERIAL PRIMARY KEY, employee_id INT REFERENCES Employees(employee_id), review_date DATE NOT NULL, score INT CHECK (score>=1 AND score<=10));
CREATE TABLE
