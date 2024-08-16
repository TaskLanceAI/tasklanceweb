var jwt = require('jsonwebtoken');
var promise = require('promise');

function jwtFun() {
    var self = this;
    self.algorithm = 'HS256';
    self.secret = config.tokenSecret;
    self.expiresIn = config.tokenExpire;
    self.getToken = function(payload) {
        return jwt.sign(payload, self.secret, {
            algorithm: self.algorithm,
            expiresIn: self.expiresIn
        });
    };
    self.validateToken = function(token) {
        return new promise(function(fulfill, reject) {
            jwt.verify(token, self.secret, {
                algorithm: self.algorithm,
                expiresIn: self.expiresIn
            }, function(err, decoded) {
                if (err) {
                    fulfill(err);
                }
                fulfill(decoded);
            })
        });
    };
};


module.exports = new jwtFun();