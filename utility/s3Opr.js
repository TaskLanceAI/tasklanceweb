const AWS = require('aws-sdk');
const s3 = new AWS.S3(config.s3Config);
const promise = require('promise');
const fs = require('fs');

var s3_opr = {
    uploadObj: function (fileName, filePath) {
        return new promise((resolve, reject) => {
            fs.readFile(filePath, (err, data) => {
                if (err) {
                    console.log(err);
                    return reject(err);
                }
                var params = {
                    Bucket: config.bucketName,
                    Key: fileName,
                    Body: data
                }
                s3.putObject(params, (err, data) => {
                    if (err) {
                        console.log(err);
                        return reject(err);
                    }
                    resolve({ success: true, message: 'file uploaded successfully.' })
                });
            })
        })
    }
}

module.exports = s3_opr;