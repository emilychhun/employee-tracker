//Dependencies found here
const inquirer = require("inquirer");
const mysql = require("mysql");
const consoleTable = require("console.table");
const db = require(".");

const connectionProperties = {
  host: "localhost",
  port: 3306,
  user: "root",
  password: "0220",
  database: "myemployee"
}
console.log(`╔═════════════════════════════════════════════════════╗
║                                                     ║
║     _____                 _                         ║
║    | ____|_ __ ___  _ __ | | ___  _   _  ___  ___   ║
║    |  _| | '_ \` _ \\| '_ \\| |/ _ \\| | | |/ _ \\/ _ \\  ║
║    | |___| | | | | | |_) | | (_) | |_| |  __/  __/  ║
║    |_____|_| |_| |_| .__/|_|\\___/ \\__, |\\___|\\___|  ║
║                    |_|            |___/             ║
║                                                     ║
║     __  __                                          ║
║    |  \\/  | __ _ _ __   __ _  __ _  ___ _ __        ║
║    | |\\/| |/ _\` | '_ \\ / _\` |/ _\` |\/ _ \\ '__|       ║
║    | |  | | (_| | | | | (_| | (_| |  __/ |          ║
║    |_|  |_|\\__,_|_| |_|\\__,_|\\__, |\\___|_|          ║
║                              |___/                  ║
║                                                     ║
\╚═════════════════════════════════════════════════════╝
`);

const connection = mysql.createConnection(connectionProperties);

connection.connect((err) => {
    if (err) throw err;

    // Start main menu function

    console.log("\n WELCOME TO EMPLOYEE TRACKER \n");
    employeeTracker();
});


//What the user will first see once logged into node
function employeeTracker() {
  inquirer
    .prompt({
    message: "What would you like to do?",
      type: "list",
      name: "option",
      choices: [
        
        "Add role",
        "View all roles",
        "Remove Employee",
        "Add department",
        "View all departments",
        "Remove department",
        "Add employee",
    "View all employees",
        "Update employee role",
        "Remove role",
       
        "Done"
      ],
      })
    .then(function(outcome) {
      console.log("You entered: " + outcome.option);

      switch (outcome.option) {
        case "View all employees":
           return showemployees();
            break;
            case "Remove Employee": 
          return  removeEmployee(); 
            break;
            case "Remove role": 
            return  removerole(); 
              break;
              case "Remove department": 
            return  removedepartment(); 
              break;
        case "Update employee role":
           return updateemployee();
            break;
        case "Add department":
         return insertdepartment();
          break;
        case "View all departments":
        return showdepartment();
            break;
        case "Add role":
        return  insertrole();
          break;
        case "Add employee":
         return insertemployee();
          break;
      
        case "View all roles":
         return showroles();
          break;
      
       
        default:
         return quit();
      }
    });
}


//All of the corresponding functions found below



function insertrole() {
  inquirer
    .prompt([
      {
        type: "input",
        message: "enter employee title!",
        name: "employeeRole",
        validate:  nameInput1 =>{
            if (nameInput1){
                return true;
            }else{
                console.log("Please enter employee title!");
            }
        }
      },
      {
        type: "input",
        message: "enter employee salary!",
        name: "employeeSalary",
        validate:  nameInput2 =>{
            if (nameInput2){
                return true;
            }else{
                console.log("Please enter employee salary!");
            }
        }
      },
      {
        type: "input",
        message: "enter employee department id!",
        name: "departmentID",
        validate:  nameInput3 =>{
            if (nameInput3){
                return true;
            }else{
                console.log("Please enter employee department id!");
            }
        }
      }
    ])
    .then(function(outcome) {


      connection.query("INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES (?, ?, ?)", [outcome.employeeRole, outcome.employeeSalary, outcome.departmentID], function(err, res) {
        if (err) throw err;
        console.table(res);
        employeeTracker();
      });
    });
}
function insertdepartment() {


    inquirer.prompt({
      
        type: "input",
        message: "What is the name of the department?",
        name: "departmentName"

    }).then(function(outcome){

        connection.query("INSERT INTO ourdepartments (name) VALUES (?)", [outcome.departmentName] , function(err, res) {
            if (err) throw err;
            console.table(res)
            employeeTracker()
    })
    })
}

function removeEmployee(){
   
    inquirer.prompt ([ 
      {
        type: "input", 
        message: "Which employee would you like to delete? Please, enter first_name or last name!",
        name: "employee",
       },
    ])
    .then (function(outcome){
        console.log(outcome);
      connection.query("DELETE FROM ouremployees WHERE (first_name=? or last_name=?)", [outcome.employee, outcome.employee],
          function(err, outcome) {
          if (err) throw err;
          console.log( "Employee deleted!\n");
          employeeTracker()
      });
      });
      }
      function removedepartment(){
   
        inquirer.prompt ([ 
          {
            type: "input", 
            message: "Which employee would you like to delete? Please, enter department name!",
            name: "department",
           },
        ])
        .then (function(outcome){
         connection.query("DELETE FROM ourdepartments WHERE (name=?)", [outcome.department],
          function(err, outcome) {
              if (err) throw err;
              console.log( "Department deleted!\n");
              employeeTracker()
          });
          });
          }
      
function  removerole(){
   
    inquirer.prompt ([ 
      {
        type: "input", 
        message: "Which role would you like to delete? Please, enter role!",
        name: "role",
       },
    ])
    .then (function(outcome){
      connection.query("DELETE FROM ourrole WHERE (title=?)" , [outcome.role],
          function(err, outcome) {
          if (err) throw err;
          console.log( "role deleted!\n");
          employeeTracker()
      });
      });
      }
      
function insertemployee() {
  inquirer
    .prompt([
      {
        type: "input",
        message: "Enter employee first name!",
        name: "First_Name",
        validate:  nameInput4 =>{
            if (nameInput4){
                return true;
            }else{
                console.log("Please enter employee first name!");
            }
        }
      },
      {
        type: "input",
        message: "Enter emoployee last name!",
        name: "Last_Name",
        validate:  nameInput5 =>{
            if (nameInput5){
                return true;
            }else{
                console.log("Please enter employee last name!");
            }
        }
      },
      {
        type: "input",
        message: "What is the employee's role id number?",
        name: "roleID",
        validate:  nameInput6 =>{
            if (nameInput6){
                return true;
            }else{
                console.log("Please enter employee's role id number!");
            }
        }
      },
      {
        type: "input",
        message: "What is the manager id number?",
        name: "managerID",
        validate:  nameInput7 =>{
            if (nameInput7){
                return true;
            }else{
                console.log("Please enter manager id number!");
            }
        }
      }
    ])
    .then(function(outcome) {

      
      connection.query("INSERT INTO ouremployees (first_name, last_name, ourrole_id, ourmanager_id) VALUES (?, ?, ?, ?)", [outcome.First_Name, outcome.Last_Name, outcome.roleID, outcome.managerID], function(err, res) {
        if (err) throw err;
        console.table(outcome);
        employeeTracker();
      });
    });
}

function updateemployee() {
  inquirer
    .prompt([
      {
        type: "input",
        name: "Updateemployee",
        message: "Enter employee's name to update!",
        validate:  nameInput8 =>{
            if (nameInput8){
                return true;
            }else{
                console.log("Please enter employee's name to update!");
            }
        }
      },

      {
        type: "input",
        message: "What do you want to update to?",
        name: "updateemployeerole"
      }
    ])
    .then(function(outcome) {
       

     connection.query('UPDATE ouremployees SET ourrole_id=? WHERE first_name= ?',[outcome.updateemployeerole, outcome.updateemployee],function(err, outcome) {
        if (err) throw err;
        console.table(outcome);
        employeeTracker();
      });
    });
}
// View all employees 
function showemployees() {

    let query = "SELECT * FROM ouremployees";
    connection.query(query, function(err, res) {
      if (err) throw err;
      console.table(res);
      employeeTracker();
    });
  
  }
  // View all department
function showdepartment() {

  let query = "SELECT * FROM ourdepartments";
  connection.query(query, function(err, res) {
    if (err) throw err;
    console.table(res);
    employeeTracker();
  });

}
// view all role
function showroles() {
  // select from the db
  let query = "SELECT * FROM ourrole";
  connection.query(query, function(err, res) {
    if (err) throw err;
    console.table(res);
    employeeTracker();
  });

}



function quit() {
  connection.end();
  process.exit();
}