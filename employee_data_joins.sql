-- 1. INNER JOIN: Select employee name, role, and department name
SELECT
  employees.name AS employee_name,
  employees.role AS employee_role,
  departments.name AS department_name
FROM
  `bharath-workbook.employee_data.employees` AS employees
INNER JOIN
  `bharath-workbook.employee_data.Departments` AS departments
  ON employees.department_id = departments.department_id;

-- 2. LEFT JOIN: Select employee name, role, and department name
SELECT
  employees.name AS employee_name,
  employees.role AS employee_role,
  departments.name AS department_name
FROM
  `bharath-workbook.employee_data.employees` AS employees
LEFT JOIN
  `bharath-workbook.employee_data.Departments` AS departments
  ON employees.department_id = departments.department_id;

-- 3. RIGHT JOIN: Select employee name, role, and department name
SELECT
  employees.name AS employee_name,
  employees.role AS employee_role,
  departments.name AS department_name
FROM
  `bharath-workbook.employee_data.employees` AS employees
RIGHT JOIN
  `bharath-workbook.employee_data.Departments` AS departments
  ON employees.department_id = departments.department_id;

-- 4. FULL OUTER JOIN: Select employee name, role, and department name
SELECT
  employees.name AS employee_name,
  Employees.role AS employee_role,
  departments.name AS department_name
FROM
  `bharath-workbook.employee_data.employees` AS employees
FULL OUTER JOIN
  `bharath-workbook.employee_data.Departments` AS departments
  ON employees.department_id = departments.department_id;