                         Employees with above-average performance

employee_performance_db=# SELECT name
FROM Employees
WHERE employee_id IN (
    SELECT employee_id
    FROM PerformanceReviews
    GROUP BY employee_id
    HAVING AVG(score) > (
        SELECT AVG(score) FROM PerformanceReviews
    )
);
     name      
---------------
 Alice Johnson
 Eve Adams
 Frank Castle
 Grace Hopper
 Jack Ma
 Karen Gillan
(6 rows)

                    Most recent review for each employee
       
employee_performance_db=# SELECT e.name, p.review_date, p.score FROM PerformanceReviews p JOIN Employees e ON e.employee_id = p.employee_id WHERE (p.employee_id, p.review_date) IN (SELECT employee_id, MAX(review_date) FROM PerformanceReviews GROUP BY employee_id);
     name      | review_date | score 
---------------+-------------+-------
 Bob Smith     | 2024-02-15  |     7
 Diana Prince  | 2024-02-01  |     7
 Eve Adams     | 2024-03-12  |     8
 Frank Castle  | 2024-01-30  |     9
 Grace Hopper  | 2024-04-11  |     8
 Henry Ford    | 2024-05-25  |     6
 Isla Fisher   | 2024-07-01  |     7
 Jack Ma       | 2024-06-05  |     8
 Karen Gillan  | 2024-08-01  |     9
 Alice Johnson | 2024-06-15  |     9
 Charlie Brown | 2024-06-18  |     7
(11 rows)
