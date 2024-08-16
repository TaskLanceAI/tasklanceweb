const taskerDAL = require(__base + '/dal/tasker');
var promise = require('promise');
var sendEmail = require(__base + '/notification/sendMail');

var taskerBL = {
    send_notification_to_tasker: function (tasker_id, project_id) {
        return new promise((resolve, reject) => {
            taskerDAL.get_tasker_project_detail(tasker_id, project_id).then((data) => {
                console.log(data);
                let emailTemplate = require(__base + "/notification/email-template/send-email-to-tasker")({
                    taskerName: data[0][0].taskerName,
                    taskDesc: data[1][0].taskDesc,
                    taskProviderMobile: data[1][0].taskProviderMobile,
                    taskRate: data[1][0].taskRate,
                    CategoryName: data[1][0].CategoryName,
                    SubCategoryName: data[1][0].SubCategoryName,
                    Companyname: data[1][0].Companyname,
                    taskerId: data[0][0].TaskerId,
                    projectId: data[1][0].ProjectId
                });

                sendEmail({
                    subject: `Task Provider interested in you`,
                    fromDisplayName: `TaskLance`,
                    from: config.emailFrom,
                    to: data[0][0].taskeremail,
                    bodyHtml: emailTemplate
                }).then((data) => {
                    console.log(`email status : ${data}`)
                    resolve("Tasklancer notified for your task.");
                }).catch((err) => {
                    reject(err);
                })
            }).catch((err) => {
                reject(err);
            })
        })
    },
    interested_tasker_for_project: (tasker_id, project_id) => {
        return new promise((resolve, reject) => {
            taskerDAL.save_interested_tasker(tasker_id, project_id).then((result) => {
                var responseText = "";

                if (result[0][0].inserted == "1") {
                    taskerDAL.get_tasker_project_detail(tasker_id, project_id).then((data) => {
                        let emailTemplate = require(__base + '/notification/email-template/email-to-task-provider')({
                            taskProviderName: data[1][0].Companyname,
                            taskerName: data[0][0].taskerName,
                            taskRate: data[1][0].taskRate,
                            taskerEmail: data[0][0].taskeremail,
                            projectId: data[1][0].ProjectId,
                            taskerId: data[0][0].TaskerId
                        })

                        sendEmail({
                            subject: `${data[0][0].taskerName} shown interest in your task`,
                            fromDisplayName: `TaskLance`,
                            from: config.emailFrom,
                            to: data[1][0].TaskProviderEmailId,
                            bodyHtml: emailTemplate
                        }).then((data) => {
                            console.log(`email status : ${data}`)
                            resolve(true);
                        }).catch((err) => {
                            reject(err);
                        })
                    })
                } else {
                    resolve(false);
                }
            }).catch((err) => {
                console.log(err);
                reject(err);
            })
        })
    },

    award_project_to_tasker: function (tasker_id, project_id) {
        return new promise((resolve, reject) => {
            award_project_to_tasker(tasker_id, project_id).then((status) => {
                if (status == "1") {
                    taskerDAL.get_tasker_project_detail(tasker_id, project_id).then((data) => {
                        let emailTemplate = require(__base + "/notification/email-template/email-on-task-assignment")({
                            taskerName: data[0][0].taskerName,
                            taskDesc: data[1][0].taskDesc,
                            taskProviderMobile: data[1][0].taskProviderMobile,
                            taskRate: data[1][0].taskRate,
                            CategoryName: data[1][0].CategoryName,
                            SubCategoryName: data[1][0].SubCategoryName,
                            Companyname: data[1][0].Companyname,
                            taskerId: data[0][0].TaskerId,
                            projectId: data[1][0].ProjectId
                        });

                        sendEmail({
                            subject: `Task Provider awarded project to you`,
                            fromDisplayName: `TaskLance`,
                            from: config.emailFrom,
                            to: data[0][0].taskeremail,
                            bodyHtml: emailTemplate
                        }).then((data) => {
                            console.log(`email status : ${data}`)
                            resolve("Tasker awarded you task.");
                        }).catch((err) => {
                            reject(err);
                        })
                    }).catch((err) => {
                        reject(err);
                    })
                } else {
                    resolve('Tasker not shown interest to this project or viceversa.');
                }
            })
        })
    },

    add_tasker: (obj) => {
        return new promise((resolve, reject) => {

            taskerDAL.addTasker(obj).then((data)=> {
                console.log(data)
                var isRegistered = data[0][0].IsRegistered;
                
                console.log(isRegistered + " " + tasker_id)
                if (isRegistered == "1") {
                    var tasker_id = data[1][0].taskerId;

                    let emailTemplate = require(__base + '/notification/email-template/invitation-email')({
                        taskerName: obj.name,
                        taskerEmail: obj.email,
                        taskerId: tasker_id
                    })

                    sendEmail({
                        subject: `Welcome ${obj.name}`,
                        fromDisplayName: `TaskLance`,
                        from: config.emailFrom,
                        to: obj.email,
                        bodyHtml: emailTemplate
                    }).then((data1) => {
                        console.log(`email status : ${data1}`)
                    }).catch((err) => {
                        console.log(err)
                        reject(err);
                    });
                    resolve(isRegistered);
                }
                else {
                    resolve(isRegistered);
                }
            })

        })
    }
}



module.exports = taskerBL;
