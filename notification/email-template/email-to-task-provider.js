function emailToTaskProvider(obj) {
    return `<p>Hi ${obj.taskProviderName},</p>
            <p style="font-size: 20px; color: blueviolet;">Good news!</p>
            <p>${obj.taskerName} has shown interest on your Task ${obj.taskName}.</p>
            <nr>
            <p>The Task Name is ${obj.taskName}.</p>
            <p>The Task price is Rs.${obj.taskRate}.</p>
            <p>Tasker Name: ${obj.taskerName}</p>
            <p>Tasker Email: ${obj.taskerEmail}</p>
            <p>At TaskLance we care and want to help you get done with your work seamlessly. If you find ${obj.taskerName} suitable for your task, Simple hit the assign button.</p>
            <p><a>Assign</a></p>
            <a title="Accept Task" href="${config.hostUrl}/#/tasker/${obj.taskerId}/project/${obj.projectId}"><span class="btn btn-info btn-lg margin-right15 margin-bottom15" style="color: #0000ff;"> Assign Task</span></a></strong></p>
            <p>Here's a checklist before you assign.</p>
            <ol>
            <li>Go through the Task Provider's profile, ratings and reviews.</li>
            <li>Discuss the task meticulously through a call or open chat and make sure the Task Provider possess the skills to complete it.</li>
            </ol>
            <p>Regards,<br />Team TaskLance</p>`
}

module.exports = emailToTaskProvider;
