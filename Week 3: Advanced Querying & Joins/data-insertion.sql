employee_performance_db=# INSERT INTO Departments (name) VALUES
('Engineering'),
('Human Resources'),
('Marketing'),
('Finance'),
('Operations'),
('IT Support'),
('Product Management'),
('Legal'),
('Sales'),
('Customer Service');
INSERT 0 10

  
employee_performance_db=# INSERT INTO Employees (name, department_id, hire_date) VALUES
('Alice Johnson', 1, '2020-06-15'),
('Bob Smith', 1, '2021-01-10'),
('Charlie Brown', 2, '2019-09-23'),
('Diana Prince', 3, '2023-03-05'),
('Eve Adams', 4, '2024-01-01'),
('Frank Castle', 5, '2022-11-11'),
('Grace Hopper', 6, '2021-08-20'),
('Henry Ford', 7, '2023-05-18'),
('Isla Fisher', 8, '2024-03-01'),
('Jack Ma', 9, '2022-12-30'),
('Karen Gillan', 10, '2023-06-01');  -- 11th record
INSERT 0 11

  
employee_performance_db=# INSERT INTO PerformanceReviews (employee_id, review_date, score) VALUES
(1, '2023-01-10', 9),
(1, '2024-01-10', 8),
(2, '2024-02-15', 7),
(3, '2023-05-20', 6),
(4, '2024-02-01', 7),
(5, '2024-03-12', 8),
(6, '2024-01-30', 9),
(7, '2024-04-11', 8),
(8, '2024-05-25', 6),
(9, '2024-07-01', 7),
(10, '2024-06-05', 8),
(11, '2024-08-01', 9),
(1, '2024-06-15', 9),                               
(3, '2024-06-18', 7);   
INSERT 0 14
employee_performance_db=# 

