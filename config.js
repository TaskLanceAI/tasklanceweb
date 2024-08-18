module.exports = {
    connectionString: {
        host:'hostip',
        user: 'root',
        password: 'password',
        database: 'tlance',
        port: '3306',
        connectionLimit: 1000
    },
    sendgridApiKey: "SG.key",
    errorMail: "email",
    version: "12345",
    TOKEN_SECRET: "secret",
    TOKEN_EXP: "10h",
    emailFrom: 'email',
    bucketName: "tasklance",
    s3Config: {
        accessKeyId: 'id',
        secretAccessKey: 'key',
        apiVersion: '2006-03-01',
        signatureVersion: 'v4'
    },
    hostUrl:'http://tasklanceui.com',
    isTaskerNotified:false,
    taskerMailSendTo:'email',
    isDevelopment:true
}
