-- drops DB if already exists and creates new DB
DROP DATABASE IF EXISTS companyEmp_db;
CREATE DATABASE companyEmp_db;

-- selects the DB for use
USE companyEmp_db;

-- creates department table
CREATE TABLE department(
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL UNIQUE
);

-- creates position table
CREATE TABLE positions(
    positions_id INT AUTO_INCREMENT PRIMARY KEY,
    positions_name VARCHAR(50) NOT NULL UNIQUE,
    positions_salary INT NOT NULL
);

-- creates employee table
CREATE TABLE emp(
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_first_name VARCHAR(25) NOT NULL,
    emp_last_name VARCHAR(50) NOT NULL,
    emp_dept_name INT,
    emp_title INT,
    emp_salary INT,
    FOREIGN KEY (emp_dept_name) REFERENCES department(department_id) ON DELETE CASCADE,
    FOREIGN KEY (emp_title) REFERENCES positions(positions_id) ON DELETE CASCADE,
    FOREIGN KEY (emp_salary) REFERENCES positions(positions_id) ON DELETE CASCADE
);
