

const router = require('express').Router();
const categoryDAL = require(__base + '/dal/masterData');

router.get('/v1/categories/', function (req, res) {
    categoryDAL.GetTaskCategory(req.query.isactive).then(function (data) {
        res.json(data[0]);
    }).catch((err) => {
        console.log(err);
        res.json(err);
    })
});

router.get('/v1/subcategories/:categoryId/', function (req, res) {
    categoryDAL.GetTaskSubCategory(req.params.categoryId, req.query.isactive).then(function (data) {
        res.json(data[0]);
    }).catch((err) => {
        res.json(err);
    })
});

router.get('/v1/taskrates/:subcategoryId/', function (req, res) {
    categoryDAL.GetTaskRates(req.params.subcategoryId).then(function (data) {
        res.json(data[0][0]);
    }).catch((err) => {
        res.json(err);
    })
});


router.get('/v1/skills/', function (req, res) {
    categoryDAL.GetSkills().then(function (data, err) {
        if (err) {
            res.json(false);
        } else {
            res.json(data[0]);
        }
    })
});

router.get('/v1/disabiltytype/', function (req, res) {
    // categoryDAL.getDisabiltyTypes().then(function (data, err) {
    //     if (err) {
    //         res.json(false);
    //     } else {
    //         res.json(data[0]);
    //     }
    // })
    res.json({ success: true })
});

router.get('/v1/city/', function (req, res) {
    categoryDAL.getcities().then(function (data, err) {
        if (err) {
            res.json(false);
        } else {
            res.json(data[0]);
        }
    })
});

router.get('/v1/taskers/', function (req, res) {
    categoryDAL.gettaskers().then(function (data, err) {
        if (err) {
            res.json(false);
        } else {
            res.json(data[0]);
        }
    })
});

router.get('/v1/tasklancers/', function (req, res) {
    categoryDAL.gettasklancers().then(function (data, err) {
        if (err) {
            res.json(false);
        } else {
            res.json(data[0]);
        }
    })
});

router.get('/v1/getcategoryid/:maskingname/', function (req, res) {
    categoryDAL.getSubCategoryId(req.params.maskingname).then((data, err) => {
        debugger
        if (err) {
            res.json(false);
        } else {
            categoryDAL.getCategoryBySubCatID(data).then(function (data, err) {
                if (err) {
                    res.json(false);
                } else {
                    res.json(data[0]);
                }
            });
        }
    });
});

router.get('/v1/getsubcatdetails/:maskingname/', function (req, res) {
    categoryDAL.getSubCategoryId(req.params.maskingname).then((data, err) => {
        debugger
        if (err) {
            res.json(false);
        } else {
            categoryDAL.getSubCategoryDetails(data).then(function (data, err) {
                if (err) {
                    res.json(false);
                } else {
                    res.json(data);
                }
            });
        }
    })
});

module.exports = router;
