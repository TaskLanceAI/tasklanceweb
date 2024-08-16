 const sendGrid = require('sendgrid');
 const promise = require('promise');

 function mailBase(obj) {
     var helper = sendGrid.mail

     mail = new helper.Mail();

     //Add Subject
     mail.setSubject(obj.subject);

     //From
     if (obj.from) {
         if (obj.fromDisplayName) {
             email = new helper.Email(obj.from, obj.fromDisplayName);
         } else {
             email = new helper.Email(obj.from);
         }
         mail.setFrom(email)
     }

     personalization = new helper.Personalization()

     //Add to
     if (obj.to) {
         if (Object.prototype.toString.call(obj.to) === '[object Array]') {
             for (var i = 0, len = obj.to.length; i < len; i++) {
                 personalization.addTo(new helper.Email(obj.to[i]));
             }
         } else if (typeof(obj.to) === 'string') {
             personalization.addTo(new helper.Email(obj.to));
         }

     }

     //Add CC
     if (obj.cc) {
         if (Object.prototype.toString.call(obj.cc) === '[object Array]') {
             for (var i = 0, len = obj.cc.length; i < len; i++) {
                 personalization.addCc(new helper.Email(obj.cc[i]));
             }
         } else if (typeof(obj.cc) === 'string') {
             personalization.addCc(new helper.Email(obj.cc));
         }

     }

     //Add BCC
     if (obj.bcc) {
         if (Object.prototype.toString.call(obj.bcc) === '[object Array]') {
             for (var i = 0, len = obj.bcc.length; i < len; i++) {
                 personalization.addBcc(new helper.Email(obj.bcc[i]));
             }
         } else if (typeof(obj.cc) === 'string') {
             personalization.addBcc(new helper.Email(obj.bcc));
         }

     }

     mail.addPersonalization(personalization)

     //Add Body section
     if (obj.bodyText) {
         mail.addContent(new helper.Content("text/plain", obj.bodyText));
     }
     if (obj.bodyHtml) {
         mail.addContent(new helper.Content("text/html", obj.bodyHtml));
     }

     //Add reply to
     if (obj.replyTo) {
         mail.setReplyTo(obj.replyTo);
     }

     return mail.toJSON()
 }

 function send(obj) {
     var toSend = mailBase(obj);

     //Remove hard Core key
     var sg = sendGrid(config.sendgridApiKey);

     //Send mail logic
     var requestBody = toSend;
     var emptyRequest = require('sendgrid-rest').request;
     var requestPost = JSON.parse(JSON.stringify(emptyRequest));
     requestPost.method = 'POST';
     requestPost.path = '/v3/mail/send';
     requestPost.body = toSend;
     return new promise(function(resolve, reject) {
         sg.API(requestPost, function(error, response) {
             if (error) {
                 reject(false)
             } else {
                 resolve(response.statusCode);
             }
         });
     });
 }

 module.exports = send;
