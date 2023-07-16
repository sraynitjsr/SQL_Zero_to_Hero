Select Day('2017/08/25') AS Day, Month('2017/08/25') AS Month, Year('2017/08/25') AS Year;

Select Count(*) From Employees Where EmpId >= 20;

Select Sum(Salary) From Employees;

Select Name, Sum(Salary_Components) From Employees Group By Name Having Sum(Salary_Components) >= 150000;
