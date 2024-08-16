

const router = require('express').Router();

router.get('/', function (req, res) {
    res.sendFile(__base + '/views/index.html');
});

// rewrite virtual urls to angular app to enable refreshing of internal pages
router.all('*', function (req, res, next) {
    console.log(config)
    let indexPagePath = null;
    if (config.isDevelopment) {
        indexPagePath = '/views/index.html';
    } else {
        indexPagePath = '/dest/index.html'
    }
    if (req.url.includes("/api/") || req.url.includes("/js/") || req.url.includes("/css/") || req.url.includes("/images/"))
        next();
    else
        res.sendFile(__base + indexPagePath);
});

module.exports = router;
