-- First Query
SELECT
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    e.sex AS "Sex",
    e.salary AS "Salary"
FROM
    Employees e
JOIN
    Salaries s ON e.emp_no = s.emp_no;
    

-- Second Query
SELECT
    first_name AS "First name",
    last_name AS "Last Name",
    hire_date AS "Hire Date",
FROM
    Employees
WHERE
    EXTRACT(YEAR FROM hire_date) = 1986;


-- Third Query
SELECT
    dm.dept_no AS "Department Number",
    d.dept_name AS "Department Name",
    dm.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM
    "Department Manager" dm
JOIN
    "Department" d ON dm.dept_no = d.dept_no
JOIN
    "Employees" e ON dm.emp_no = e.emp_no;



-- Fourth Query
SELECT
    de.dep_no AS "Department Number",
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_name AS "Department Name"
FROM
    "Department Employees" de
JOIN
    "Employees" e ON de.emp_no = e.emp_no
JOIN
    "Department" d ON de.dept_no = d.dept_no;


-- Fifth Query
SELECT
    first_name AS "First Name",
    last_name AS "Last Name",
    sex AS "Sex"
FROM
    Employees
WHERE
    first_name = "Hercules"
    AND last_name LIKE 'B%';


-- Sixth Query
SELECT
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name"
FROM
    "Employees" e
JOIN
    "Department Employees" de ON e.emp_no = de.emp_no
JOIN
    "Department" d ON de.dept_no = d.dept_no
WHERE
    d.dept_name = "Sales";


-- Seventh Query
SELECT
    e.emp_no AS "Employee Number",
    e.last_name AS "Last Name",
    e.first_name AS "First Name",
    d.dept_name AS "Department Name"
FROM
    "Employees" e
JOIN
    "Department Employees" de ON e.emp_no = de.emp_no
JOIN
    "Department" d ON de.dept_no = d.dept_no
WHERE
    d.dept_name IN("Sales", "Development");


-- Eighth Query
SELECT
    last_name AS "Last Name",
    COUNT(*) AS "Frequency"
FROM
    Employees
GROUP BY
    last_name
ORDER BY
    COUNT(*) DESC;