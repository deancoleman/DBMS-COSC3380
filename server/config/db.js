const mysql = require('mysql2');
require('dotenv').config();

console.log('Attempting to create database connection pool...');

console.log('Connecting with credentials:', {
    host: process.env.MYSQL_HOST,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE,
    port: process.env.MYSQL_PORT,
});

const pool = mysql.createPool({
    host: process.env.MYSQL_HOST,
    port: process.env.MYSQL_PORT || 3306,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
    ssl: {
        rejectUnauthorized: false
    }
}).promise();


// Testing connection (/test)
const testConnection = async () => {
    try {
        console.log('Testing database connection...');
        const [result] = await pool.query('SELECT 1');
        console.log('Database connection successful:', result);
        return true;
    } 
    catch (err) {
        if (err.code === 'ER_ACCESS_DENIED_ERROR') {
            console.error('Database connection failed: Incorrect credentials. Please verify your username and password.');
        } 
        else if (err.code === 'ER_BAD_DB_ERROR') {
            console.error('Database connection failed: The specified database does not exist.');
        } 
        else if (err.code === 'ECONNREFUSED') {
            console.error('Database connection failed: Unable to connect. Check if MySQL is running on the specified host and port.');
        } 
        else{
            console.error('Database connection failed:', {
            message: err.message,
            code: err.code,
            errno: err.errno,
            port: process.env.MYSQL_PORT
            });
        }
        return false;
    }
};

module.exports = {
    pool,
    testConnection
};