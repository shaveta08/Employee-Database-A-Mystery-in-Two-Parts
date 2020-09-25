# Employee-Database-A-Mystery-in-Two-Parts

In this Project, we have designed the tables to hold data in the CSVs, import the CSVs into a SQL database, and answer questions about the data. 
In other words, we have covered:
 * Data Engineering and Data Modeling
 * Data Analysis
 
### 1. Data Modeling 
  * Inspecting the CSVs and sketching out an ERD of the tables.
  ![alt-text](https://github.com/shaveta08/Employee-Database-A-Mystery-in-Two-Parts/blob/master/ERD.PNG)
  
### 2. Data Engineering
  * Using the information we have to created a table schema for each of the six CSV files by specifying data types, primary keys, foreign keys, and other constraints.
  * Imported each CSV file into the corresponding SQL table.(create_tables.sql)
  
### 3. Data Analysis
  * To verify the Data modal, Some SQL Queries are run on it(Which are saved in Queries.sql):
      1. List the following details of each employee: employee number, last name, first name, sex, and salary.
      2. List first name, last name, and hire date for employees who were hired in 1986.
      3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
      4. List the department of each employee with the following information: employee number, last name, first name, and department name.
      5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
      6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
      7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
      8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
      
