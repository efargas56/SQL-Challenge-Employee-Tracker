DROP DATABASE IF EXISTS employeesDB

CREATE DATABASE employeesDB;

USE employeesDB;

CREATE TABLE department (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NULL,

);

CREATE TABLE role (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INTEGER
)

CREATE TABLE employee (
   id INTEGER AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(30) NULL,
   last_name VARCHAR(30) NULL,
   role_id INTEGER,
   manager_id INTEGER
   );