
-- Create Tables
CREATE TABLE Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    date_of_birth DATE
);

CREATE TABLE Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

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
('Bob', 'Johnson', 'bob.johnson@example.com', '2003-02-15'),
('Emily', 'Clark', 'emily.clark@example.com', '2000-07-21'),
('Michael', 'Brown', 'michael.brown@example.com', '2001-09-12'),
('Linda', 'Taylor', 'linda.taylor@example.com', '2002-03-30'),
('David', 'Anderson', 'david.anderson@example.com', '2000-11-05'),
('Sophia', 'Martinez', 'sophia.martinez@example.com', '2003-08-18'),
('James', 'Lee', 'james.lee@example.com', '2002-01-25'),
('Olivia', 'Walker', 'olivia.walker@example.com', '2001-04-14');

-- Insert Courses
INSERT INTO Courses (course_name, credits)
VALUES 
('Mathematics', 4),
('Computer Science', 3),
('Physics', 4),
('Chemistry', 4),
('English Literature', 2);

-- Insert Enrollments
INSERT INTO Enrollments (student_id, course_id)
VALUES 
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(4, 4),
(5, 2),
(6, 5),
(7, 3),
(8, 4),
(9, 1),
(10, 2),
(2, 5),
(3, 2),
(4, 1);
