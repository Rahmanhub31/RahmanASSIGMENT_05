CREATE DATABASE example_db;

USE example_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(30),
    department_id INT
);

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(30)
);


INSERT INTO employees (employee_id, employee_name, department_id) VALUES
(1, 'Jim', 1),
(2, 'Vim', 2),
(3, 'Rim', 3),
(4, 'Kim', 2),
(5, 'Lin', NULL);

INSERT INTO departments (department_id, department_name) VALUES
(1, 'YOto'),
(2, 'Gito'),
(3, 'Skito');

SELECT * FROM employees NATURAL JOIN departments;

-- Perform an INNER JOIN
SELECT * FROM employees INNER JOIN departments ON employees.department_id = departments.department_id;

-- Perform a LEFT JOIN
SELECT * FROM employees LEFT JOIN departments ON employees.department_id = departments.department_id;

-- Perform a RIGHT JOIN
SELECT * FROM employees RIGHT JOIN departments ON employees.department_id = departments.department_id;