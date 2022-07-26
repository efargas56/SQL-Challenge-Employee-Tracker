DROP DATABASE IF EXISTS employeesdb;

CREATE DATABASE employeesdb;

USE employeesdb;

CREATE TABLE department (
    id INT AUTO_INCREMENT PRIMARY KEY,
    names VARCHAR(30) NULL,

);

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INTEGER
);

CREATE TABLE employee (
   id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(30) NULL,
   last_name VARCHAR(30) NULL,
   role_id INTEGER,
   manager_id INTEGER
   );