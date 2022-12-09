-- populates values into database
INSERT INTO department (department_name)
VALUES ('Engineering'),
    ('Finance'),
    ('ProductDevelopment'),
    ('Marketing');

INSERT INTO positions (positions_id, positions_name, positions_salary)
VALUES (1, 'Junior Engineer', 75000),
    (2, 'Senior Accountant', 96000),
    (3, 'Social Media Manager', 70000),
    (4, 'Sourcing Specialist', 64000);


INSERT INTO emp (emp_id, emp_first_name, emp_last_name, emp_dept_name, emp_title, emp_salary)
VALUES  (1,'john', 'scott',1, 1, 1),
    (2, 'kayla', 'downey',2, 2, 2),
    (3, 'sam', 'thomas', 4, 3, 3),
    (4, 'brandon', 'books', 3, 4, 4),
    (5, 'lindsey', 'carter', 4, 3, 3);
