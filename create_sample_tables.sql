-- ตาราง departments
CREATE TABLE departments (
    id INTEGER PRIMARY KEY,
    name TEXT
);

INSERT INTO departments (id, name) VALUES
(1, 'Engineering'),
(2, 'HR'),
(3, 'Marketing');

-- ตาราง employees
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    email TEXT,
    hire_date TEXT,
    department_id INTEGER,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO employees (id, name, email, hire_date, department_id) VALUES
(101, 'Alice', 'alice@example.com', '2020-01-15', 1),
(102, 'Bob', 'bob@example.com', '2019-03-22', 1),
(103, 'Carol', 'carol@example.com', '2021-06-10', 2),
(104, 'Dave', 'dave@example.com', '2018-07-01', 2),
(105, 'Eve', 'eve@example.com', '2022-02-20', 3);

-- ตาราง salaries
CREATE TABLE salaries (
    employee_id INTEGER,
    base_salary INTEGER,
    bonus INTEGER,
    pay_grade TEXT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

INSERT INTO salaries (employee_id, base_salary, bonus, pay_grade) VALUES
(101, 50000, 5000, 'A'),
(102, 60000, 7000, 'A'),
(103, 45000, 3000, 'B'),
(104, 55000, 6000, 'B'),
(105, 52000, 4000, 'A');
