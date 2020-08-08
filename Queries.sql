-- Query 1.List the following details of each employee:
-- employee number, last name, first name, sex, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.sex ,s.salary
FROM employees as e
INNER JOIN salary as s
ON e.emp_no = s.emp_no;


-- Query 2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name ,hire_date
FROM employees
WHERE hire_date LIKE '%1986%';

--Query3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name,e.first_name 
FROM departments as d
INNER JOIN dept_manager as m
ON d.dept_no = m.dept_no
INNER JOIN employees as e
ON m.emp_no = e.emp_no;


-- Creating a view of join of tables employees, dept_emp and departments
-- To further use in Query4, Query6 and Query7.
CREATE VIEW emp_dept_info AS
SELECT e.emp_no, e.last_name,e.first_name,d.dept_name
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN departments as d
ON de.dept_no = d.dept_no;

--Query4.List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT emp_no, last_name,first_name,dept_name
FROM emp_dept_info;

--Query5. List first name, last name, and sex for employees 
--whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name , sex 
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--Query6.List all employees in the Sales department,
-- including their employee number, last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name
FROM emp_dept_info
WHERE dept_name = 'Sales';

--Query7.List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT emp_no, last_name, first_name, dept_name
FROM emp_dept_info
WHERE dept_name = 'Sales' OR dept_name ='Development';

--Query8.In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name,count(*)
FROM employees
GROUP BY last_name
ORDER BY count DESC;
