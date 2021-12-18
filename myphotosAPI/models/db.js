const mysql =  require('mysql');
const dbconfig = require("../config/db.config");

const connection = mysql.createConnection({
    host: dbconfig.HOST,
    user: dbconfig.USER,
    password: dbconfig.PASSWORD,
    database: dbconfig.DB
});


connection.connect(error => {
    if (error) {
        console.log("error with database connection");
        throw error;
    }
    console.log("connection established")
});

module.exports = connection;