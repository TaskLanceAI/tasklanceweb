var mysql = require('mysql');
var connectionReg = require(__base + '/coreDAL/mysqlConnection').MySqlConnection;
var connection = connectionReg.getConnection();
var promise = require('promise');

var taskDAL = {
    saveTask: function (obj) {
        return new promise(function (resolve, reject) {
            connection.query('call add_task(?,?,?,?,?,?);', [
                obj.taskTitle,
                // obj.categoryId,
                obj.subCategoryId,
                obj.taskProviderId,
                obj.taskDesc,
                obj.eta,
                obj.budget], function (err, rows, fields) {
                    if (err) {
                        console.log(err)
                        reject(err);
                    }
                    resolve(rows[0][0].project_id);
                });
        })
    },
    getRecentlyCompletedTask: function (count) {
        return new promise(function (resolve, reject) {
            connection.query('call GetRecentCompletedTask(?);', [count], function (err, rows, fields) {
                if (err) {
                    console.log(err)
                    reject(err);
                }
                resolve(rows);
            });
        })
    },
    getTaskCategoryAndSubCategory: function (categoryId) {
        return new promise(function (resolve, reject) {
            connection.query('call GetTaskCategoryAndSubCategory(?)', [categoryId], function (err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            })
        })
    },
    addTaskDocument: function (recordSet) {
        return new promise((resolve, reject) => {
            connection.query('INSERT INTO projectdocuments(projectId, S3Key, bucketName) values ?', [recordSet], (error, results, fields) => {
                if(error){
                    return reject(error);
                }
                resolve(results);
            })
        })
    }
}

module.exports = taskDAL;
