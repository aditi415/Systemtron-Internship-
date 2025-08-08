                    INNER JOIN – Employees with their Departments

                      
employee_performance_db=# SELECT e.name AS employee, d.name AS department FROM Employees e INNER JOIN Departments d ON e.department_id = d.department_id;
   employee    |     department     
---------------+--------------------
 Alice Johnson | Engineering
 Bob Smith     | Engineering
 Charlie Brown | Human Resources
 Diana Prince  | Marketing
 Eve Adams     | Finance
 Frank Castle  | Operations
 Grace Hopper  | IT Support
 Henry Ford    | Product Management
 Isla Fisher   | Legal
 Jack Ma       | Sales
 Karen Gillan  | Customer Service
(11 rows)

     
                    LEFT JOIN – All Employees (even without departments)
     
employee_performance_db=# SELECT e.name AS employee, d.name AS department FROM Employees e LEFT JOIN Departments d ON e.department_id = d.department_id;
   employee    |     department     
---------------+--------------------
 Alice Johnson | Engineering
 Bob Smith     | Engineering
 Charlie Brown | Human Resources
 Diana Prince  | Marketing
 Eve Adams     | Finance
 Frank Castle  | Operations
 Grace Hopper  | IT Support
 Henry Ford    | Product Management
 Isla Fisher   | Legal
 Jack Ma       | Sales
 Karen Gillan  | Customer Service
(11 rows)

     
                   RIGHT JOIN – All Departments with Employees

employee_performance_db=# SELECT e.name AS employee, d.name AS department FROM Employees e RIGHT JOIN Departments d ON e.department_id = d.department_id;
   employee    |     department     
---------------+--------------------
 Alice Johnson | Engineering
 Bob Smith     | Engineering
 Charlie Brown | Human Resources
 Diana Prince  | Marketing
 Eve Adams     | Finance
 Frank Castle  | Operations
 Grace Hopper  | IT Support
 Henry Ford    | Product Management
 Isla Fisher   | Legal
 Jack Ma       | Sales
 Karen Gillan  | Customer Service
(11 rows)
