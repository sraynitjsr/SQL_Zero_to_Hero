## ASQL Queries

```sql
1. Retrieve Employees Who Have a Salary Greater Than Their Department's Average
   SELECT E.EMPLOYEE_ID, E.EMPLOYEE_NAME, E.SALARY, D.DEPARTMENT_ID
   FROM EMPLOYEES E
   INNER JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
   WHERE E.SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES WHERE DEPARTMENT_ID = D.DEPARTMENT_ID);

2. Find Orders Placed by Customers Who Have Placed More Than 3 Orders
   SELECT * FROM ORDERS 
   WHERE CUSTOMER_ID IN (SELECT CUSTOMER_ID FROM ORDERS GROUP BY CUSTOMER_ID HAVING COUNT(*) > 3);

3. Identify Employees Who Have No Assigned Department
   SELECT * FROM EMPLOYEES 
   WHERE DEPARTMENT_ID IS NULL;

4. Retrieve Orders with Order Total Greater Than 1000
   SELECT ORDER_ID, SUM(QUANTITY * UNIT_PRICE) AS ORDER_TOTAL 
   FROM ORDER_DETAILS 
   GROUP BY ORDER_ID 
   HAVING ORDER_TOTAL > 1000;

5. Calculate Employee Bonus as 10% of Salary for Sales Department Employees
    SELECT EMPLOYEE_ID, EMPLOYEE_NAME, SALARY, 
           CASE WHEN DEPARTMENT_ID = 'SALES' THEN SALARY * 0.1 ELSE 0 END AS BONUS
    FROM EMPLOYEES;
