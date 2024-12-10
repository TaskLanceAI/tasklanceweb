TaskLance is an AI/ML-powered recommendation platform designed to connect professionals with opportunities in a meaningful way. It enables a seamless "peer-to-peer work" model, empowering professionals to deliver projects while discovering the best opportunities tailored to their expertise.

# Dependencies

This platform uses on the following technologies:

Node.js: Backend JavaScript runtime

MySQL: Data storage and retrieval

NPM: Package management

Angular: Frontend framework

Express.js: Web application framework

Amazon S3: Cloud storage

SendGrid: Email delivery service

# Deployment Instructions

Step 1: Start the Application
Navigate to the root directory of the project:

cd /tasklance/

pm2 restart app.js

Step 2: Restart NGINX Service

Restart the NGINX service using the following command:

sudo service nginx restart

Troubleshooting
If the service restart fails, test the NGINX configuration and then repeat Step 2:

sudo nginx -t
