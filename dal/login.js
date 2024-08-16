var mysql = require('mysql');
var connectionReg = require(__base + '/coreDAL/mysqlConnection').MySqlConnection;
var connection = connectionReg.getConnection();
var promise = require('promise');

function addTasker(obj) {
    return new promise(function(resolve, reject) {
        connection.query('call AddTasker(?,?,?);', [obj.emailId, obj.phone, obj.userName], function(err, rows, fields) {
            if (err) {
                console.log(err)
                reject(err);
            }
            resolve(rows);
        });
    });
}


module.exports = {
    addTasker: addTasker
}
