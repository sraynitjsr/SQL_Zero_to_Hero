## SQL Queries

```sql
1. Retrieve Employees Hired in the Last 6 Months
   SELECT * FROM EMPLOYEES WHERE HIRE_DATE >= DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

2. Calculate Average Salary by Department
   SELECT DEPARTMENT_ID, AVG(SALARY) AS AVERAGE_SALARY FROM EMPLOYEES GROUP BY DEPARTMENT_ID;

3. Find Customers with No Orders
   SELECT CUSTOMER_ID, CUSTOMER_NAME FROM CUSTOMERS WHERE CUSTOMER_ID NOT IN (SELECT DISTINCT CUSTOMER_ID FROM ORDERS);

4. Retrieve Top 5 Highest Paid Employees
   SELECT EMPLOYEE_ID, EMPLOYEE_NAME, SALARY FROM EMPLOYEES ORDER BY SALARY DESC LIMIT 5;

5. Count the Number of Orders Placed Each Month
   SELECT MONTH(ORDER_DATE) AS MONTH, COUNT(*) AS ORDER_COUNT FROM ORDERS GROUP BY MONTH(ORDER_DATE);
