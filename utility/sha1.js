var sha1 = require('sha1');

var customSha1 = {
    // hashAsString: true,
    getHash: function(msg) {
        return sha1(msg);
    }
};


module.exports = customSha1;