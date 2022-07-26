const mysql = require("mysql2");
const inquirer = require('inquirer');
const cTable = require('console.table');

const connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'abc123',
    database: 'employeesdb'
  },
  console.log('Connected to the employee database.')

  );
  
  connection.connect(function (err){
    if (err) throw err;
    console.log("employee Tracker")
    StartApp();
  })

  function StartApp() {
    inquirer
    .prompt([
        {
      type: "list",
      name: "general",
      message: "What would you like to do?",
      choices: [
        "View all departments",
        "View all roles",
        "View all employees",
        "Add a department",
        "Add a role",
        "Add an employee",
        "Update an employee role",
        "Exit"
      ]
    },
])
    .then(answers => {
        switch(answers) {
            case "View all departments":
            viewAllDepartments();
            break;
            case "View all roles":
            viewAllRoles();
            break;
            case "View all employees":
            viewAllEmployees();
            break;
            case "Add a department":
            addADepartment();
            break;
            case "Add a role":
            addARole();
            break;
            case "Add an employee":
            addAnEmployee();
            break;
            case "Update an employee role":
            UpdateEmployee();
            case "Exit":
            connection.end();
            break;
        }
    });
  };
  function viewAllDepartments() {
    var query = `SELECT * FROM department`;
    connection.query(query, function (err, res) {
        if (err) throw err;
        console.table(res);
        StartApp();
    });
  
  }
  function viewAllRoles() {

  }
  function viewAllEmployees(){
    ` SELECT
    employee.id,
    employee.first_name,
    employee.last_name,
    role`
  }
  function addADepartment() {

  }
  function addARole() {

  }
  function addAnEmployee() {

  }
  function UpdateEmployee() {

  }