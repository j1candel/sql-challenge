/**Drop Table Departments**/
DROP TABLE departments;
DROP TABLE department_employee;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY ,
dept_name VARCHAR);

CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR,
PRIMARY KEY (emp_no, dept_no));

CREATE TABLE dept_manager(
dept_no VARCHAR,
emp_no INT,
PRIMARY KEY (dept_no,emp_no));

CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE);

CREATE TABLE salaries(
emp_no INT PRIMARY KEY,
salary INT);

CREATE TABLE titles(
title_id VARCHAR PRIMARY KEY,
title VARCHAR);

SELECT * FROM dept_emp;

SELECT * FROM departments;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

/**Finding employee number, last name, first name, sex and salary**/
SELECT A.emp_no
,A.first_name
,A.last_name 
,A.sex
,B.salary
from employees A
INNER JOIN salaries B
ON A.emp_no = B.emp_no;

/**Finding employee's first name, last name, and hire date in 1986**/
SELECT first_name
,last_name
,hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

/**Finding Manager in each department with department number, department name, employee number, 
last name, and first name**/
SELECT A.dept_no
,C.dept_name
,A.emp_no
,B.last_name
,B.first_name
FROM dept_manager A
LEFT JOIN employees B
ON A.emp_no = B.emp_no
LEFT JOIN departments C
ON A.dept_no = C.dept_no
WHERE;

/**Finding the department for each employee. Displaying employee number, last name, first name, and 
department name**/
SELECT A.emp_no
,B.first_name
,B.last_name
,C.dept_name
FROM department_employee A
INNER JOIN employees B
ON A.emp_no = B.emp_no
INNER JOIN departments C
on A.dept_no = C.dept_no;

/**Displaing first name, last name, and sex for each employee. Finding all Hercules and filtering all 
last names that begin with the letter B**/
SELECT first_name
,last_name
,sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

/**Displaing employee number, last name, first name, and department name. Filtering to find all
employees in Sales and Development department**/
SELECT A.emp_no
,B.first_name
,B.last_name
,C.dept_name
FROM department_employee A
INNER JOIN employees B
ON A.emp_no = B.emp_no
INNER JOIN departments C
on A.dept_no = C.dept_no
WHERE dept_name IN ('Sales','Development');

/**Listing the count of each last name and displaying in a descending order**/
SELECT last_name
,COUNT(last_name) AS "Frequency Of Last Name"
FROM employees
GROUP BY last_name
ORDER BY "FREQUENCY OF LAST NAME" DESC;

