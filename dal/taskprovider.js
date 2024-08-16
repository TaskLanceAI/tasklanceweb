var mysql = require('mysql');
var connectionReg = require(__base + '/coreDAL/mysqlConnection').MySqlConnection;
var connection = connectionReg.getConnection();
var promise = require('promise');

var taskProviderFunc={
    addTaskProvider:function(obj){
        return new promise(function(resolve,reject){
            connection.query('call add_task_provider(?,?)',[obj.emailId,obj.profileName],
            function(err, rows, fields) {
                    if (err) {
                        console.log(err)
                        reject(err);
                    }
                    resolve(rows);
            })
        })
    }
}

module.exports = taskProviderFunc;