function tasker_email_template(obj) {
    return `<p>Hi ${obj.taskerName},</p>
            <p>Congratulations! You got new  task in "${obj.CategoryName} : ${obj.SubCategoryName}" Skill Category</p>
            <p>Task Provider ${obj.Companyname} has assigned you&nbsp; Task <span><em>"${obj.taskDesc}"</em></span>.</p>
            <p>The Task Rate is Rs.${obj.taskRate}</p>
            <p> Contact Task Provider at: ${obj.taskProviderMobile}</p>
            <p>At TaskLance we care and want to help you get tasks seamlessly. If you are interested in this task, simply hit the accept button.</p>
            <p>&nbsp;</p>
            <p><strong><span style="color: #ff0000;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>
            <a title="Accept Task" href="${config.hostUrl}/#/tasker/${obj.taskerId}/project/${obj.projectId}"><span class="btn btn-info btn-lg margin-right15 margin-bottom15" style="color: #0000ff;"> Accept Task</span></a></strong></p>	
            <p><strong>Here's a checklist before you start task.</strong></p>
            <p>1. Go through the task and task description <br />2. Discuss the task meticulously through a call or mail and make sure to complete it.</p>
            <p>We're happy to help. Always!</p>
            <p>Regards,<br />Team TaskLance</p>`
}

module.exports = tasker_email_template;
