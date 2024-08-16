
function invitation_email_template(obj) {
    return `<p><span style="font-size: 12pt;"><span style="font-size: 12pt;">
    </span></span><span style="font-size: 12pt;">
    <strong>Welcome to TaskLance</strong></span>
            </p>
            <p>Hi,</p>
            <p> <a href="http://tasklance.com/">TaskLance</a> is a Top Talent Marketplace for on demand Professionals and Students and enable companies to hire Professionals like you for full time or flexible time.</p>
            <p>Please click  to verify your your Email ID <a href="${config.hostUrl}/#/tasker-verification/${obj.taskerId}/"> (${obj.taskerEmail})</a> in order to create your profile.</td>
            <p>Regards,<br />Team TaskLance</p>`;
}

module.exports = invitation_email_template;




