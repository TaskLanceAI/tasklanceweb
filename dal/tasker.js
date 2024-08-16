var mysql = require('mysql');
var connectionReg = require(__base + '/coreDAL/mysqlConnection').MySqlConnection;
var connection = connectionReg.getConnection();
var promise = require('promise');
const jwt = require('jsonwebtoken');
var request = require("request");



var loginFun = {
    getPasswordHash: function (emailId) {
        return new promise(function (fulfill, reject) {
            var request = new sql.Request(connection);
            request.input("EmailId", sql.VARCHAR(50), emailId)
                .execute("GetPasswordHash").then(function (recordsets, returnValue) {
                    fulfill(recordsets[0][0]);
                }).catch(function (err) {
                    reject(err);
                });
        });
    },
    addTasker: function (obj) {
        return new promise(function (resolve, reject) {
            var query = 'call add_tasker(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);';
            connection.query(query, [obj.email, obj.name, obj.mobile, obj.disabiltyId,
            obj.percentage, obj.DOB, obj.city, obj.address, obj.nationality,
            obj.aadharNo, obj.qualification, obj.experience, obj.disability,
            obj.categoryId, obj.subCategoryId
            ],
                function (err, rows, fields) {
                    if (err) {
                        console.log(err)
                        reject(err);
                    }
                    // console.log(rows)
                    resolve(rows);
                });
        })
    },

    addDonor: function (obj) {
        return new promise(function (resolve, reject) {
            var query = 'call add_donor(?,?,?,?);';
            connection.query(query, [obj.email, obj.name, obj.mobile, obj.address
            ],
                function (err, rows, fields) {
                    if (err) {
                        console.log(err)
                        reject(err);
                    }
                    resolve(rows);
                });
        })
    },
    GetRecommendedTaskers: function (project_id) {
        return new promise(function (resolve, reject) {
            var query = 'call ShowRecommendedTaskers(?);';
            connection.query(query, [project_id],
                function (err, rows, fields) {
                    if (err) {
                        console.log(err)
                        reject(err);
                    }
                    resolve(rows);
                });
        })
    },
    get_tasker_project_detail: function (tasker_id, project_id) {
        return new promise(function (resolve, reject) {
            var query = 'call get_tasker_project_detail(?,?);';
            connection.query(query, [tasker_id, project_id],
                function (err, rows, fields) {
                    if (err) {
                        console.log(err)
                        reject(err);
                    }
                    resolve(rows);
                });
        })
    },
    save_interested_tasker: (tasker_id, project_id) => {
        return new promise((resolve, reject) => {
            var query = `call save_interested_tasker(?,?)`;
            connection.query(query, [tasker_id, project_id], (err, rows, fields) => {
                if (err) {
                    console.log(err);
                    return reject(err);
                }
                console.log(rows);
                resolve(rows);
            })
        })
    },
    award_project_to_tasker: (tasker_id, project_id) => {
        return new promise((resolve, reject) => {
            var query = `call award_project_to_tasker(?,?);`;
            connection.query(query, [tasker_id, project_id], (err, rows, fields) => {
                if (err) {
                    console.log(err);
                    return reject(err);
                }
                console.log(rows);
                resolve(rows[0][0].assigned);

            })
        })
    },
    register_tasker: (tasker_id) => {
        return new promise((resolve, reject) => {
            var query = `call registertasker(?);`;
            connection.query(query, [tasker_id], (err, rows, fields) => {
                if (err) {
                    return reject(err);
                }
                console.log(rows.affectedRows);
                resolve(rows.affectedRows);
            });
        });
    },
    get_tasker_detail: (tasker_id) => {
        return new promise((resolve, reject) => {
            var query = `call get_tasker_detail(?);`;
            connection.query(query, [
                tasker_id], (err, rows, fields) => {
                if (err) {
                    console.log(err);
                    return reject(err);
                }
                console.log(rows);
                resolve(rows);
            });
        });
    },
    get_other_tasker: (tasker_id) => {
        return new promise((resolve, reject) => {
            var query = `call OtherTaskers(?);`;
            connection.query(query, [
                tasker_id], (err, rows, fields) => {
                if (err) {
                    console.log(err);
                    return reject(err);
                }
                console.log(rows);
                resolve(rows);
            });
        });
    }
}

module.exports = loginFun;