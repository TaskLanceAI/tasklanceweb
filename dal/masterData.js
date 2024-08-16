// import { retry } from '../../../../Library/Caches/typescript/2.6/node_modules/@types/async';

var mysql = require('mysql');
var connectionReg = require(__base + '/coreDAL/mysqlConnection').MySqlConnection;
var connection = connectionReg.getConnection();
var promise = require('promise');

var masterFun = {
    GetTaskCategory: function(isactive) {
        if(isactive == 'undefined'){
            isactive = '1';
        }
        return new promise(function(resolve, reject) {
            connection.query('call get_task_category(?);',[isactive], function(err, rows, fields) {
                if (err) {
                    console.log(err)
                    reject(err);
                }
                resolve(rows);
            });
        });
    },
    GetTaskSubCategory: function(categoryId,isactive) {
        if(isactive == 'undefined'){
            isactive = '1';
        }
        return new promise(function(resolve, reject) {
            connection.query('call get_task_sub_category(?,?);', [categoryId,isactive], function(err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },
    GetSkills: function() {
        return new promise(function(resolve, reject) {
            connection.query('call get_skills();', function(err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },
    GetTaskRates: function(subcategoryId) {
        return new promise(function(resolve, reject) {
            connection.query('call get_task_rate(?);', [subcategoryId],function(err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },

    getcities: function() {
        return new promise(function(resolve, reject) {
            connection.query('call get_city();', function(err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },

    gettaskers: function() {
        return new promise(function(resolve, reject) {
            connection.query('call gettaskers();', function(err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },

    gettasklancers: function() {
        return new promise(function(resolve, reject) {
            connection.query('call gettasklancers();', function(err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },

    getCategoryBySubCatID:function(subCatId){
        return new promise(function(resolve, reject) {
            connection.query('call get_catid_by_sub_cat_id(?);', [subCatId],function(err, rows, fields) {
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },
    getSubCategoryDetails:(subCatId)=>{
        return new promise((resolve, reject)=> {
            connection.query('call getsubcategorydetails(?);', [subCatId],(err, rows, fields) =>{
                if (err) {
                    console.log(err);
                    reject(err);
                }
                resolve(rows);
            });
        });
    },
    getSubCategoryId:(maskingName)=>{
        return new promise((resolve, reject)=> {
            connection.query('call getmaskingfortasksubcategory(?);', [maskingName],(err, rows, fields) =>{
                if (err) {
                    console.log(err);
                    reject(err);
                }
                console.log(rows)
                resolve(rows[0][0].TaskSubCategoryID);
            });
        });
    }
    
    // getDisabiltyTypes: function() {
    //     return new promise(function(resolve, reject) {
    //         connection.query('call get_disability_type();', function(err, rows, fields) {
    //             if (err) {
    //                 console.log(err);
    //                 reject(err);
    //             }
    //             resolve(rows);
    //         });
    //     });
    // }
}


module.exports = masterFun;
