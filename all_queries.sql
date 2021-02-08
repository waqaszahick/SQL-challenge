-- Query # 01: List employee number, last name, first name, sex, and salary.

SELECT	e.emp_no AS "Employee No.",
		e.last_name AS "Last Name",
		e.first_name AS "First Name",
		e.sex AS "Sex / Gender",
		s.salaries AS "Salaries"
FROM	employees AS e JOIN salaries AS s ON e.emp_no = s.emp_no;

-- Query # 02: List first name, last name, and hire date for employees who were hired in 1986.

SELECT	last_name AS "Last Name",
		first_name AS "First Name",
		hire_date AS "Hire Date"
FROM	employees
WHERE	employees.hire_date >= '1986-01-01';

-- Query # 03:	List the manager of each department with the following information:
--				department number, department name, the manager's employee number, last name, first name.

SELECT	dm.dept_no AS "Department No.",
		d.dept_name AS "Department Name",
		e.emp_no AS "Employee No.",
		e.first_name AS "First Name",
		e.last_name AS "Last Name"
FROM	dept_manager AS dm JOIN departments AS d ON dm.dept_no = d.dept_no
		JOIN employees AS e ON dm.emp_no = e.emp_no;

-- Query # 04:	List the department of each employee with the following information:
--				employee number, last name, first name, and department name.

SELECT	e.emp_no AS "Employee No.",
		e.last_name AS "Last Name",
		e.first_name AS "First Name",
		d.dept_name AS "Department Name"
FROM	employees AS e JOIN dept_emp AS de ON e.emp_no = de.emp_no
		JOIN departments AS d ON de.dept_no = d.dept_no;

-- Query # 05: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT	first_name AS "First Name",
		last_name AS "Last Name",
		sex AS "Sex / Gender"
FROM	employees
WHERE	first_name = 'Hercules' AND last_name LIKE 'B%'

-- Query # 6:	List all employees in the Sales department,
--				including their employee number, last name, first name, and department name

SELECT	e.emp_no AS "Employee No.",
		e.last_name AS "Last Name",
		e.first_name AS "First Name",
		d.dept_name AS "Department Name"
FROM	employees AS e JOIN dept_emp AS de ON e.emp_no = de.emp_no
		JOIN departments AS d ON de.dept_no = d.dept_no
		AND d.dept_name = 'Sales';
		
-- Query # 7:	List all employees in the Sales and Development departments,
--				including their employee number, last name, first name, and department name

SELECT	e.emp_no AS "Employee No.",
		e.last_name AS "Last Name",
		e.first_name AS "First Name",
		d.dept_name AS "Department Name"
FROM	employees AS e JOIN dept_emp AS de ON e.emp_no = de.emp_no
		JOIN departments AS d ON de.dept_no = d.dept_no
		AND d.dept_name IN ('Sales', 'Development');

-- Query # 8:	In descending order, list the frequency count of employee last names,
--				i.e. how many employees share each last name.

SELECT last_name AS "Last Name", COUNT(*) AS "Last Name Count"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;