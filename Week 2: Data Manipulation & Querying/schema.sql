postgres=# CREATE DATABASE StudentsDB;
CREATE DATABASE

postgres=# \c studentsdb
You are now connected to database "studentsdb" as user "postgres".
studentsdb=# create table Students(student_id SERIAL PRIMARY KEY,First_Name VARCHAR(50), Last_Name VARCHAR(50), Email VARCHAR(100) UNIQUE, Date_Of_Birth DATE);
CREATE TABLE
studentsdb=# SELECT * FROM Students;
 student_id | first_name | last_name | email | date_of_birth 
------------+------------+-----------+-------+---------------
(0 rows)

studentsdb=# create table Courses(Course_id SERIAL PRIMARY KEY, Course_name VARCHAR(100), Credits INT);
CREATE TABLE

                      
studentsdb=# CREATE TABLE Enrollments (enrollment_id SERIAL PRIMARY KEY,Student_id INT REFERENCES Students(Student_id) ON DELETE CASCADE, Course_id INT REFERENCES Courses(Course_id) ON DELETE CASCADE, enrollment_date DATE DEFAULT CURRENT_DATE);
CREATE TABLE


