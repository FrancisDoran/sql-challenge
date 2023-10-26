-- name, #, salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees as e 
    LEFT JOIN salaries as s ON (e.emp_no = s.emp_no);

-- employees hired in '86
SELECT first_name, last_name, hire_date
FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'; 

-- department managers
SELECT dm.emp_no, dm.dept_no, d.dept_name, e.first_name, e.last_name
FROM dept_manager as dm
    INNER JOIN employees as e ON (dm.emp_no = e.emp_no)
    INNER JOIN department as d ON (dm.dept_no = d.dept_no);

-- employee departments
SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp as de
    INNER JOIN employees as e ON (de.emp_no = e.emp_no)
    INNER JOIN department as d ON (de.dept_no = d.dept_no);

-- specific parameters
SELECT first_name, last_name, sex
FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- sales department
SELECT de.emp_no, d.dept_name, e.first_name, e.last_name, 
FROM dept_emp as de
    INNER JOIN employees as e ON (dm.emp_no = e.emp_no)
    INNER JOIN department as d ON (de.dept_no = d.dept_no);
WHERE d.dept_name = 'Sales';

-- sales or development department
SELECT de.emp_no, d.dept_name, e.first_name, e.last_name, 
FROM dept_emp as de
    INNER JOIN employees as e ON (dm.emp_no = e.emp_no)
    INNER JOIN department as d ON (de.dept_no = d.dept_no);
WHERE d.dept_name = 'Sales' or d.dept_name = 'Devolpement';

-- last name frequency
SELECT last_name, COUNT(last_name)
FROM employees GROUP BY last_name ORDER BY COUNT(last_name) DESC;