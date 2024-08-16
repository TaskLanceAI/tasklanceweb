const router = require('express').Router();

router.use('/api', require(__base + '/services/masterDataController'));
router.use('/api', require(__base + '/services/loginController'));
router.use('/api', require(__base + '/services/taskController'));
router.use('/api', require(__base + '/services/taskerController'))
router.use('/api', require(__base + '/services/taskprovidercontroller'))

module.exports = router;
