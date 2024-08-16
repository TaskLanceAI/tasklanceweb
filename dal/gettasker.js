var mysql = require('mysql');
var connectionReg = require(__base + '/coreDAL/mysqlConnection').MySqlConnection;
var connection = connectionReg.getConnection();
var promise = require('promise');
const jwt = require('jsonwebtoken');
var request = require("request");

function gettaskers(obj) {
    return new promise(function(resolve, reject) {
        connection.query('call gettaskers();',
            function(err, rows, fields) {
                if (err) {
                    console.log(err)
                    reject(err);
                }
                console.log(rows);
                resolve(rows);
            });
    })
}

module.exports = {
    gettaskers: gettaskers
}
