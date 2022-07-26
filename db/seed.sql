USE employeesdb;

INSERT INTO department (name)
VALUES
('Sales'),
('Engineering'),
('Finance'),
('Legal');

INSERT INTO role (title, salary, department_id)
VALUES
('Salesperson', 30000, 1),
('Sales Leaders', 54000, 1),
('Software Engineer', 75000, 2),
('Lead Engineer', 125000, 2),
('Accountant', 63000, 3),
('Account Manager', 110000, 3),
('Lawyer', 100000, 4),
('Legal Team Lead', 250000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES
('Mike', 'Chan', 1, 1),
('Ashley', 'Rodriguez', 2, 4),
('Kevin', 'Tupik', 2, 4),
('Kunal', 'Singh', 3, 1),
('Malia', 'Brown' 3, 3),
('Sarah','Lourd', 4, 1);

