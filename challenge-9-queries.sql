
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
;



SELECT last_name, first_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986'
ORDER BY hire_date
;

SELECT m.emp_no, m.dept_no, e.last_name, e.first_name, d.dept_name
FROM dept_manager m
JOIN employees e
ON m.emp_no = e.emp_no
JOIN departments d
ON m.dept_no = d.dept_no
;

SELECT e.first_name, e.last_name, e.emp_no, d.dept_name, de.dept_no
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
;

SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%'
;

SELECT e.last_name, e.first_name, e.emp_no, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales'
;

SELECT e.last_name, e.first_name, e.emp_no, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development'
;

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY frequency DESC
;