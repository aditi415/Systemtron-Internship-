                     Average Score by Employee

employee_performance_db=# SELECT e.name AS employee, AVG(p.score) AS avg_score FROM Employees e JOIN PerformanceReviews p ON e.employee_id = p.employee_id GROUP BY e.name;
   employee    |     avg_score      
---------------+--------------------
 Alice Johnson | 8.6666666666666667
 Bob Smith     | 7.0000000000000000
 Grace Hopper  | 8.0000000000000000
 Eve Adams     | 8.0000000000000000
 Charlie Brown | 6.5000000000000000
 Frank Castle  | 9.0000000000000000
 Isla Fisher   | 7.0000000000000000
 Jack Ma       | 8.0000000000000000
 Karen Gillan  | 9.0000000000000000
 Henry Ford    | 6.0000000000000000
 Diana Prince  | 7.0000000000000000
(11 rows)


                         Total Reviews by Department

     
employee_performance_db=# SELECT d.name AS department, COUNT(p.review_id) AS total_reviews FROM Employees e JOIN Departments d ON e.department_id = d.department_id JOIN PerformanceReviews p ON e.employee_id = p.employee_id GROUP BY d.name;
     department     | total_reviews 
--------------------+---------------
 Marketing          |             1
 Operations         |             1
 Legal              |             1
 Finance            |             1
 Product Management |             1
 Human Resources    |             2
 IT Support         |             1
 Engineering        |             4
 Sales              |             1
 Customer Service   |             1
(10 rows)


                    Overall Performance Summary

       
employee_performance_db=# SELECT COUNT(*) AS total_reviews,AVG(score) AS average_score, SUM(score) AS total_score FROM PerformanceReviews;
 total_reviews |   average_score    | total_score 
---------------+--------------------+-------------
            14 | 7.7142857142857143 |         108
(1 row)
