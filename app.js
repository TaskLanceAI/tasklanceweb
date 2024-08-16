const express = require('express');
const app = express();
global.__base = __dirname;
global.config = require(__base+'/config.js');

const bodyParser = require('body-parser');
var cookieParser = require('cookie-parser')
const mysqlConnection = require(__base+'/coreDAL/mysqlConnection').MySqlConnection;
const logger = require(__base+'/logger/logger').Logger;

app.use(cookieParser());

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
//app.use(expressLayouts);
app.use(express.static('static'));

//Initialization of global object
mysqlConnection.initialize();
logger.initialize();

app.use('/', require(__base + '/routing/pageRouting'));
app.use('/', require(__base + '/services/registerApi'));

// Handle 404
app.use(function (req, res) {
    if (req.xhr) {
        res.status(404).json('404: Page not Found');
    } else {
        res.status(404).send('404: Page not Found');
    }
});

// Handle 500
app.use(function (error, req, res, next) {
    console.log(error)
    if (req.xhr) {
        res.status(500).json('500: Internal Server Error' + error);
    } else {
        res.status(500).send('500: Internal Server Error' + error);
    }
    next();
});

process.on('uncaughtException', function (err) {
    console.log(err);
})

app.listen(3000, function () {
    console.log('tasklance running on port 3000');
});
