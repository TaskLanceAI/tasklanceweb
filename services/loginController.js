const router = require('express').Router();
const loginDAL = require(__base + '/dal/login');

router.post('/v1/addTasker/', function(req, res) {
    loginDAL.addTasker(req.body).then(function(data, err) {
        if (err) {
            res.json(false);
        } else {
            res.json(true);
        }
    })
});

module.exports = router;
