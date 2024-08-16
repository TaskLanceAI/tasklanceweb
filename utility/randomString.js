var randomstring = require("randomstring");

var randomStr = {
    length: 8,
    charset: 'alphanumeric',
    getRandomStr: function() {
        return randomstring.generate({
            length: this.length,
            charset: this.charset
        });
    }
}

module.exports = randomStr;