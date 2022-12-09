const express = require('express');
const mysql = require('mysql2');
const inquirer = require('inquirer');
const cTable = require('console.table');
const empDB = require('./config/connection');



function startScreen() {
    inquirer.prompt([ 
        {
            type: `list`,
            name: `menu`,
            message: `Choice from the list of options?`,
            choices: [
                'View All Employees', 
                'View All Departments',  
                'Add an Employee',  
                'Update Employee Position',
                'Delete Employee', 
            ]
        }
    ])
    .then((answer) => {
        switch (answer.choices) {
            case 'View All Employees':
              viewAllEmps();
              break;
            case 'View all Departments':
              viewAllDeparts();
              break;
            case 'Add an Employee':
              addEmp();
              break;
            case 'UpDate Employee Position':
                updateEmpPosition();
                break;
            case 'Delete Employee':
                deleteEmp();
                break;
        } 
    });
}



startScreen();