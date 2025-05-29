
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    location VARCHAR(100)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


INSERT INTO departments VALUES
(10, 'Engineering', 'New York'),
(20, 'Marketing', 'Chicago'),
(30, 'HR', 'San Diego');


INSERT INTO employees VALUES
(1, 'Alice', 10, 60000, '2021-05-10'),
(2, 'Bob', 20, 55000, '2020-03-15'),
(3, 'Charlie', 10, 70000, '2019-07-01'),
(4, 'David', 30, 50000, '2022-01-20'),
(5, 'Eve', 20, 65000, '2018-11-11');
