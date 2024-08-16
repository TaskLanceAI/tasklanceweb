var winston = require('winston');
var Logger = {};
var loggerInstance = null;

var config = {
    levels: {
        error: 0,
        debug: 1,
        warn: 2,
        data: 3,
        info: 4,
        verbose: 5,
        silly: 6
    },
    colors: {
        error: 'red',
        debug: 'blue',
        warn: 'yellow',
        data: 'grey',
        info: 'green',
        verbose: 'cyan',
        silly: 'magenta'
    }
};

Logger.initialize = function() {
    loggerInstance = new(winston.Logger)({
        transports: [
            new(winston.transports.File)({
                name: 'info-file',
                filename: 'logs/filelog-info.log',
                level: 'info',
                order: 'desc',
                colorize: true,
                'timestamp': true,
                maxsize: 1024,
                maxFiles: 5
            }),
            new(winston.transports.File)({
                name: 'error-file',
                filename: 'logs/filelog-error.log',
                level: 'error',
                order: 'desc',
                colorize: true,
                'timestamp': true,
                maxsize: 1024,
                maxFiles: 5
            }),
            new(winston.transports.Console)({
                'timestamp': true,
                level: 'debug'
            })
        ],
        levels: config.levels,
        colors: config.colors
    });
};
Logger.instance = function() {
    return loggerInstance;
};
module.exports.Logger = Logger;
