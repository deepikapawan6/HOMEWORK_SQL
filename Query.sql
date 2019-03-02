SELECT * FROM Departments;
SELECT * FROM Dept_Emp;
SELECT * FROM Dept_Manager;
SELECT * FROM Employees;
SELECT * FROM Salaries;
SELECT * FROM Titles;

--1
SELECT Employees.emp_no, Employees.first_name, Employees.last_name, Employees.gender, Salaries.salary
FROM Employees
INNER JOIN Salaries ON Employees.emp_no = Salaries.emp_no;


--2
SELECT emp_no, first_name, last_name, hire_date
FROM Employees
WHERE hire_date
BETWEEN '1986-01-01' AND '1986-12-31';


--3
SELECT Departments.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name, Dept_Manager.from_date, Dept_Manager.to_date
FROM Departments
INNER JOIN Dept_Manager ON Departments.dept_no = Dept_Manager.dept_no
INNER JOIN Employees ON Dept_Manager.emp_no = Employees.emp_no;


--4
SELECT Employees.emp_no, Employees.first_name, Employees.last_name, Departments.dept_name
FROM Employees
INNER JOIN Dept_Emp ON Employees.emp_no = Dept_Emp.emp_no
INNER JOIN Departments ON Departments.dept_no = Dept_Emp.dept_no;


--5
SELECT first_name, last_name
FROM Employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


--6
SELECT Dept_Emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_Emp
INNER JOIN Employees ON Dept_Emp.emp_no = Employees.emp_no
INNER JOIN Departments ON Dept_Emp.dept_no = Departments.dept_no
WHERE dept_name = 'Sales';


--7
SELECT Dept_Emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Dept_Emp
INNER JOIN Employees ON Dept_Emp.emp_no = Employees.emp_no
INNER JOIN Departments ON Dept_Emp.dept_no = Departments.dept_no
WHERE dept_name IN ('Sales', 'Development');


--8
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;






