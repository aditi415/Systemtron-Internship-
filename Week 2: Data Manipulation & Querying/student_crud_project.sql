
-- Create the database (run this outside the script or manually if needed)
-- CREATE DATABASE student_db;

-- Connect to the database (psql command line)
-- \c student_db

-- Drop existing tables if they exist
DROP TABLE IF EXISTS Enrollments;
DROP TABLE IF EXISTS Students;
DROP TABLE IF EXISTS Courses;

-- Create Students table
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE
);

-- Create Courses table
CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

-- Create Enrollments table
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES Students(student_id) ON DELETE CASCADE,
    course_id INT REFERENCES Courses(course_id) ON DELETE CASCADE,
    enrollment_date DATE DEFAULT CURRENT_DATE
);

-- Insert Students
INSERT INTO Students (first_name, last_name, email, date_of_birth)
VALUES 
('John', 'Doe', 'john.doe@example.com', '2002-05-10'),
('Alice', 'Smith', 'alice.smith@example.com', '2001-11-23'),
('Bob', 'Johnson', 'bob.johnson@example.com', '2003-02-15');

-- Insert Courses
INSERT INTO Courses (course_name, credits)
VALUES 
('Mathematics', 4),
('Computer Science', 3),
('Physics', 4);

-- Insert Enrollments
INSERT INTO Enrollments (student_id, course_id)
VALUES 
(1, 1),
(1, 2),
(2, 1),
(3, 3);

-- Select queries
SELECT * FROM Students;
SELECT * FROM Students WHERE last_name = 'Smith';
SELECT * FROM Students ORDER BY date_of_birth DESC;

-- JOIN query
SELECT s.first_name, s.last_name, c.course_name
FROM Enrollments e
JOIN Students s ON e.student_id = s.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- GROUP BY query
SELECT c.course_name, COUNT(e.student_id) AS enrolled_students
FROM Enrollments e
JOIN Courses c ON e.course_id = c.course_id
GROUP BY c.course_name
ORDER BY enrolled_students DESC;

-- Update queries
UPDATE Students SET email = 'alice.new@example.com' WHERE student_id = 2;
UPDATE Courses SET course_name = 'Advanced Physics' WHERE course_id = 3;

-- Delete queries
DELETE FROM Students WHERE student_id = 3;
DELETE FROM Courses WHERE course_name = 'Mathematics';
