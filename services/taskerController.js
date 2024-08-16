const router = require('express').Router();
const taskerDAL = require(__base + '/dal/tasker');
const taskerBL = require(__base + '/bl/tasker')
const jwt = require('jsonwebtoken');
var request = require("request");

router.post('/v1/tasker/add/', function (req, res) {
    taskerBL.add_tasker(req.body).then((result) => {
        res.json({ isSuccess: result });
    }).catch((err) => {
        res.json({ success: false, error: err.message });
    })
})

router.get('/v1/tasker/recommended/', function (req, res) {
    taskerDAL.GetRecommendedTaskers(req.query.project_id).then(function (result) {
        res.status(200).json({ taskerlist: result[0], subCatName: result[1][0].SubCategoryName });
    }).catch(function (err) {
        res.status(500).json({ success: false, error: err.message });
    })
})

router.get(`/v1/tasker/notification/`, function (req, res) {
    var taskerId = req.query.tasker_id,
        projectId = req.query.project_id;

    taskerBL.send_notification_to_tasker(taskerId, projectId).then((data) => {
        res.status(200).json({ isSuccess: true, result: data });
    }).catch((err) => {
        res.status(500).json({ isSuccess: false, error: err.message });
    })
})

router.post('/v1/tasker/addDonor/', function (req, res) {
    taskerDAL.addDonor(req.body).then((result) => {
        res.status(200).json(result.affectedRows > 0 ? true : false);
    }).catch((err) => {
        res.status(500).json({ success: false, error: err.message });
    })
})

router.get('/v1/tasker/accept/', (req, res) => {
    taskerBL.interested_tasker_for_project(req.query.taskerid, req.query.projectid).then((result) => {
        res.status(200).json({ success: true, result: result });
    }).catch((err) => {
        res.status(500).json({ success: false, error: err.message });
    })
})

router.get('/v1/tasker/awardproject/', (req, res) => {
    taskerBL.award_project_to_tasker(req.query.taskerid, req.query.projectid).then((res) => {
        res.json({ success: true, result: res });
    }).catch((err) => {
        res.json({ success: false, error: err.message });
    })
})

router.get('/v1/verify/tasker', (req, res) => {
    taskerDAL.register_tasker(req.query.taskerid).then((result) => {
        res.status(200).json({
            success: true,
            result: result > 0 ? true : false
        });
    }).catch((err) => {
        res.status(500).json({
            success: false,
            error: err.message
        })
    });
})

router.get(`/v1/tasker/detail/`, (req, res) => {
    taskerDAL.get_tasker_detail(req.query.taskerid).then((data) => {
        res.status(200).json({
            success: true,
            result: data
        });
    }).catch((err) => {
        res.status(500).json({
            success: false,
            error: err.message
        });
    });
})

router.get(`/v1/other/tasker/`, (req, res) => {
    taskerDAL.get_other_tasker(req.query.taskerid).then((data) => {
        res.status(200).json({
            success: true,
            result: data
        });
    }).catch((err) => {
        res.status(500).json({
            success: false,
            error: err.message
        });
    });
})

module.exports = router;