const mysql2 = require("mysql2");
require('dotenv').config()

const empDB = mysql2.createConnection(
    {
      host: 'localhost',
      user: process.env.DB_USER,
      password: process.env.DB_PASSWORD,
      database: process.env.DB_NAME
    }
  );

empDB.connect(function (err) {
  if (err) {
    console.log('Failed to Connect')
    return;
  } console.log('`Connected to the companyEmp_db database.`')
});

module.exports = empDB;