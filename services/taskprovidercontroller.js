const router = require('express').Router();
const taskproviderDAL = require(__base + '/dal/taskprovider');

router.post('/v1/taskprovider/add', function (req, res) {
    taskproviderDAL.addTaskProvider(req.body).then(function (data) {
        res.status(200).json(data[0][0].task_provider_id);
        
    }).catch(function (err) {
        res.status(500).json(err.message);
    })
})

module.exports = router;