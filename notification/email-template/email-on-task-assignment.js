function emailOnTaskAssignment(obj) {
    return `<p>Once Task Provider assign the task, Send below mail to Tasker.</p>
            <p>Hi ${obj.taskerName},</p>
            <p>Good News!</p>
            <p>${obj.taskProviderName} has awarded Task ${obj.taskName}.</p>
            <p>Task: ${obj.taskName}.</p>
            <p>Tasker Name: ${obj.taskProviderName} </p>
            <p>Tasker Email: ${obj.taskProviderEmail}</p>
            <p>The Task price is Rs.${obj.taskRate}.</p>
           
            <p>At TaskLance we care and want to help you get done with your work seamlessly. Simple hit the "Start Task" button and notify ${obj.taskProviderName} once it is completed.</p>
            <p>&nbsp;</p>
            <p>Start Task ( Button)</p>
            <p>&nbsp;</p>
            <p>Here's a checklist before you start the task..</p>
            <p>Discuss the task meticulously through a call or open chat and make sure the you have clarity to complete it.</p>
            <p>Regards,<br />Team TaskLance</p>`;
}

module.exports = emailOnTaskAssignment;