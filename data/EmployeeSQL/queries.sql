-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	employees.gender,
	salaries.salary
FROM employees
JOIN salaries ON employees.emp_no=salaries.emp_no;


-- 3. List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name, 
-- and start and end employment dates.
SELECT
	departments.dept_name,
	departments.dept_no,
	dept_manager.emp_no,
	employees.first_name,
	employees.last_name,
	dept_manager.from_date,
	dept_manager.to_date
FROM departments
	JOIN dept_manager
		ON departments.dept_no=dept_manager.dept_no
	JOIN employees
		ON employees.emp_no=dept_manager.emp_no;

-- 4. List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT
	employees.emp_no,
	employees.first_name,
	employees.last_name,
	departments.dept_name
FROM departments
	JOIN dept_emp
		ON departments.dept_no=dept_emp.dept_no
	JOIN employees
		ON employees.emp_no=dept_emp.emp_no;
