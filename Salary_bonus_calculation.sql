SELECT first_name,last_name,occupation,salary,
CASE
  WHEN salary < 30000 THEN 'LOW'
  WHEN salary BETWEEN 50000 AND 60000 THEN 'MEDIAN'
  WHEN salary > 60000 THEN 'HIGH'
  END AS GRADE
 FROM parks_and_recreation.employee_salary;
 
 SELECT *,
 CASE
   WHEN salary < 50000 then salary+salary*0.05 
   WHEN salary > 50000 then salary+salary*0.07 
   END AS New_Salary,
   CASE
   WHEN dept_id = 6 then (salary*0.1+salary)-salary
   END AS Bonus
 FROM parks_and_recreation.employee_salary
 