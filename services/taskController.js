const router = require('express').Router();
const taskDAL = require(__base + '/dal/task');
var multiparty = require('multiparty');
const s3_obj = require(__base + '/utility/s3Opr');

const async = require('async')

router.post('/v1/task/add/', function (req, res) {

    var form = new multiparty.Form();

    form.parse(req, (err, fields, file) => {
        let files = file['uploadedFile']

        taskDAL.saveTask({
            budget: fields['budget'][0],
            subCategoryId: fields['subCategoryId'][0],
            taskDesc: fields['taskDesc'][0],
            taskProviderId: fields['taskProviderId'][0],
            taskTitle: fields['taskTitle'][0]
        }).then(function (data) {
            var params = [];
            var documents = [];

            for (var i in files) {
                params.push({
                    filePath: files[i].path,
                    key: `${data}/${files[i].originalFilename}`
                })
                documents.push([data, `${data}/${files[i].originalFilename}`, config.bucketName]);
            }
            taskDAL.addTaskDocument(documents).then((result) => {
                console.log(result);
            }).catch((err) => {
                console.log(err.message);
            })
            async.each(params, (param) => {
                s3_obj.uploadObj(param.key, param.filePath).then((data) => {
                    console.log(data)
                }).catch((err) => {
                    console.log(err);
                })
            })

            res.json(data);
        })
    });
})

router.get('/v1/browse-task/', function (req, res) {
    var categoryId = req.query.categoryId;
    taskDAL.getTaskCategoryAndSubCategory(categoryId).then(function (data) {
        res.json({ catDetail: data[0][0], subcatDetail: data[1] });
    })
})

module.exports = router;
