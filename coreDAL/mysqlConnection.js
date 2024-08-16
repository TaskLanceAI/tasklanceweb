const mysql = require('mysql');
var MySql = {};

var connection = null;

MySql.initialize = function() {
    connection = mysql.createPool(config.connectionString);
}

MySql.getConnection = function() {
    return connection;
}

module.exports.MySqlConnection = MySql;
