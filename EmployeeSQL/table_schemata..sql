/**Create Table departments**/
CREATE TABLE departments(
dept_no VARCHAR PRIMARY KEY ,
dept_name VARCHAR);

/**Create Table dept_emp**/
CREATE TABLE dept_emp(
emp_no INT,
dept_no VARCHAR,
PRIMARY KEY (emp_no, dept_no));

/**Create Table dept_manager**/
CREATE TABLE dept_manager(
dept_no VARCHAR,
emp_no INT,
PRIMARY KEY (dept_no,emp_no));

/**Create Table employees**/
CREATE TABLE employees(
emp_no INT PRIMARY KEY,
emp_title_id VARCHAR,
birth_date DATE,
first_name VARCHAR,
last_name VARCHAR,
sex VARCHAR,
hire_date DATE);

/**Create Table salaries**/
CREATE TABLE salaries(
emp_no INT PRIMARY KEY,
salary INT);

/**Create Table salaries**/
CREATE TABLE titles(
title_id VARCHAR PRIMARY KEY,
title VARCHAR);