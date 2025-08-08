                                    DEPARTMENT TABLE SCHEMA

Column     |          Type          | Collation | Nullable |                      Default                       
---------------+------------------------+-----------+----------+----------------------------------------------------
 department_id | integer                |           | not null | nextval('departments_department_id_seq'::regclass)
 name          | character varying(100) |           | not null | 
Indexes:
    "departments_pkey" PRIMARY KEY, btree (department_id)
Referenced by:
    TABLE "employees" CONSTRAINT "employees_department_id_fkey" FOREIGN KEY (department_id) REFERENCES departments(department_id)

         
                                   EMPLOYEE TABLE SCHEMA

employee_performance_db=# \d Employees
                                            Table "public.employees"
    Column     |          Type          | Collation | Nullable |                    Default                     
---------------+------------------------+-----------+----------+------------------------------------------------
 employee_id   | integer                |           | not null | nextval('employees_employee_id_seq'::regclass)
 name          | character varying(100) |           | not null | 
 department_id | integer                |           |          | 
 hire_date     | date                   |           | not null | 
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employee_id)
Foreign-key constraints:
    "employees_department_id_fkey" FOREIGN KEY (department_id) REFERENCES departments(department_id)
Referenced by:
    TABLE "performancereviews" CONSTRAINT "performancereviews_employee_id_fkey" FOREIGN KEY (employee_id) REFERENCES employees(employee_id)


                                 PERFORMANCEREVIEW TABLE SCHEMA

employee_performance_db=# \d PerformanceReviews
                                  Table "public.performancereviews"
   Column    |  Type   | Collation | Nullable |                        Default                        
-------------+---------+-----------+----------+-------------------------------------------------------
 review_id   | integer |           | not null | nextval('performancereviews_review_id_seq'::regclass)
 employee_id | integer |           |          | 
 review_date | date    |           | not null | 
 score       | integer |           |          | 
Indexes:
    "performancereviews_pkey" PRIMARY KEY, btree (review_id)
Check constraints:
    "performancereviews_score_check" CHECK (score >= 1 AND score <= 10)
Foreign-key constraints:
    "performancereviews_employee_id_fkey" FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
