# BoardgameListingWebApp

## Description

**Board Game Database Full-Stack Web Application.**
This web application displays lists of board games and their reviews. While anyone can view the board game lists and reviews, they are required to log in to add/ edit the board games and their reviews. The 'users' have the authority to add board games to the list and add reviews, and the 'managers' have the authority to edit/ delete the reviews on top of the authorities of users.  

## Technologies

- Java
- Spring Boot
- Amazon Web Services(AWS)EC2
- Thymeleaf
- Thymeleaf Fragments
- HTML5
- CSS
- JavaScript
- Spring MVC
- JDBC
- H2 Database Engine (In-memory)
- JUnit test framework
- Spring Security
- Twitter Bootstrap
- Maven

## Features

- Full-Stack Application
- UI components created with Thymeleaf and styled with Twitter Bootstrap
- Authentication and authorization using Spring Security
  - Authentication by allowing the users to authenticate with a username and password
  - Authorization by granting different permissions based on the roles (non-members, users, and managers)
- Different roles (non-members, users, and managers) with varying levels of permissions
  - Non-members only can see the boardgame lists and reviews
  - Users can add board games and write reviews
  - Managers can edit and delete the reviews
- Deployed the application on AWS EC2
- JUnit test framework for unit testing
- Spring MVC best practices to segregate views, controllers, and database packages
- JDBC for database connectivity and interaction
- CRUD (Create, Read, Update, Delete) operations for managing data in the database
- Schema.sql file to customize the schema and input initial data
- Thymeleaf Fragments to reduce redundancy of repeating HTML elements (head, footer, navigation)

## How to Run

1. Clone the repository
2. Open the project in your IDE of choice
3. Run the application
4. To use initial user data, use the following credentials.
  - username: bugs    |     password: bunny (user role)
  - username: daffy   |     password: duck  (manager role)
5. You can also sign-up as a new user and customize your role to play with the application! 😊

### Deploy code in through War build in tomcat 

🚀 TOMCAT DEPLOYMENT – COMPLETE REVISION NOTES
1️⃣ Tomcat Installation Path (Your Server)
/opt/apache-tomcat-9


This is called:

TOMCAT_HOME

2️⃣ Important Tomcat Directory Structure

Inside:

/opt/apache-tomcat-9

Folder	Purpose
bin/	Start & stop scripts
conf/	Configuration files
webapps/	WAR deployment folder
logs/	Log files
lib/	Common libraries
work/	Compiled JSP files
temp/	Temporary files
3️⃣ WAR Deployment Path

📌 WAR file location:

/opt/apache-tomcat-9/webapps/


In your case:

/opt/apache-tomcat-9/webapps/database_service_project.war


After deployment Tomcat auto-creates:

/opt/apache-tomcat-9/webapps/database_service_project/

4️⃣ Application Access URL

Format:

http://<SERVER-IP>:8080/<war-name>/


Your case:

http://<EC2-IP>:8080/database_service_project/


If renamed to ROOT.war:

http://<EC2-IP>:8080/

5️⃣ How to Deploy WAR (Step-by-Step)
Step 1: Build WAR
mvn clean package


WAR generated in:

target/database_service_project.war

Step 2: Copy WAR to Tomcat
cp target/database_service_project.war /opt/apache-tomcat-9/webapps/

Step 3: Restart Tomcat
cd /opt/apache-tomcat-9/bin
./shutdown.sh
./startup.sh

Step 4: Verify Logs
tail -f /opt/apache-tomcat-9/logs/catalina.out


Look for:

Deployment of web application archive has finished

6️⃣ Important Tomcat Configuration Files (INTERVIEW IMPORTANT)
⭐ 1. server.xml

📍 Location:

/opt/apache-tomcat-9/conf/server.xml


Used for:

Change port

Enable HTTPS

Connector config

Shutdown port

Change default port:

<Connector port="8080" protocol="HTTP/1.1"

⭐ 2. web.xml (Global)

📍 Location:

/opt/apache-tomcat-9/conf/web.xml


Used for:

Default servlet config

Session timeout

Welcome files

⭐ 3. context.xml

📍 Location:

/opt/apache-tomcat-9/conf/context.xml


Used for:

JNDI datasource config

DB connection pooling

⭐ 4. tomcat-users.xml

📍 Location:

/opt/apache-tomcat-9/conf/tomcat-users.xml


Used for:

Manager GUI login

Admin roles

7️⃣ Tomcat Logs Location
/opt/apache-tomcat-9/logs/


Main log file:

catalina.out


Check logs:

tail -f catalina.out

8️⃣ Start & Stop Commands

📍 Location:

/opt/apache-tomcat-9/bin/


Start:

./startup.sh


Stop:

./shutdown.sh


Check running:

ps -ef | grep tomcat


Check port:

netstat -tulnp | grep 8080

9️⃣ Production Best Practices (Interview Level)

✅ Do NOT run Tomcat as root
✅ Create tomcat user
✅ Open only required ports
✅ Use external DB (not H2)
✅ Configure HTTPS
✅ Use reverse proxy (Nginx/Apache)

🔟 Difference: Embedded vs External Tomcat
Embedded (Spring Boot JAR)	External Tomcat (WAR)
java -jar app.jar	Deploy WAR in webapps
Internal Tomcat	Separate Tomcat server
Easy microservice	Traditional deployment
1️⃣1️⃣ Deployment Types (Interview)

Manual copy to webapps

Tomcat Manager GUI

CI/CD (Jenkins)

Docker container

Kubernetes

1️⃣2️⃣ Your Current Deployment Summary

Tomcat Home:

/opt/apache-tomcat-9


WAR deployed at:

/opt/apache-tomcat-9/webapps/database_service_project.war


App URL:

http://<EC2-IP>:8080/database_service_project/


Logs:

/opt/apache-tomcat-9/logs/catalina.out

🎯 5 Most Common Interview Questions

How do you deploy WAR in Tomcat?

How do you change Tomcat port?

Where are Tomcat logs stored?

What is server.xml used for?

Difference between JAR and WAR deployment?

If you want, I can now give:

🔥 Complete DevOps Tomcat Scenario Questions

🔥 Real-time troubleshooting scenarios

🔥 CI/CD + Tomcat deployment explanation

🔥 Production architecture diagram explanation

Tell me what you are preparing for 😄

 git commit -t "War-build-deploy-codechange" .

Your command is incorrect ❌

You wrote:

git commit -t "War-build-deploy-codechange" .


👉 -t is not used for commit message.
👉 . is not used with git commit.

✅ Correct Command

If you want to commit with a message:

git commit -m "War-build-deploy-codechange"

✅ Proper Git Flow (Important)

Normally you should do:

git add .
git commit -m "War build deploy code change"
git push origin <branch-name>


Example:

git push origin main

🔎 What -t Actually Does

-t is used to specify a commit template file, not commit message.

Example:

git commit -t template.txt


But this is rarely used.

🎯 Interview Tip

If interviewer asks:

👉 Difference between git add and git commit?

Answer:

git add → stages changes

git commit → saves snapshot to local repository

git push → sends to remote repository

If you get any git error, paste it here 🔥

 git remote add origin https://github.com/TarunKamur/Boardgame_Website.git
error: remote origin already exists.

Good 👍 this is a very common Git situation.

Error:

error: remote origin already exists.


👉 That means your repository already has a remote named origin configured.

✅ Step 1: Check Existing Remote

Run:

git remote -v


You will see something like:

origin  https://github.com/old-user/old-repo.git (fetch)
origin  https://github.com/old-user/old-repo.git (push)

🔥 If You Want to CHANGE Remote URL

Use:

git remote set-url origin https://github.com/TarunKamur/Boardgame_Website.git


Then verify:

git remote -v

🚀 Now Push Code

If branch is main:

git push -u origin main


If branch is master:

git push -u origin master


Check branch name:

git branch

❌ If You Want to Remove Old Remote Completely
git remote remove origin
git remote add origin https://github.com/TarunKamur/Boardgame_Website.git

🎯 Interview Knowledge

If interviewer asks:

👉 What is origin in Git?

Answer:

origin is the default name given to the remote repository when we clone or add a remote.

💡 Most Common Real-World Fix

90% of time you just need:

git remote set-url origin <new-url>


Run:

git remote -v


and tell me what it shows if you’re unsure 🔥

remote: Invalid username or token. Password authentication is not supported for Git operations.
fatal: Authentication failed for 'https://github.com/TarunKamur/Boardgame_Website.git/'

Perfect 👍 this is very common GitHub issue.

Error:

Invalid username or token.
Password authentication is not supported for Git operations.


👉 GitHub does NOT allow password authentication anymore.
You must use:

✅ Personal Access Token (PAT)
OR
✅ SSH key authentication (recommended)

🔥 OPTION 1: Use Personal Access Token (Quick Fix)
Step 1: Generate Token in GitHub

Go to:

GitHub → Settings → Developer Settings → Personal Access Tokens → Tokens (classic)


Click:

Generate new token (classic)


Select:

repo


Generate token and COPY it (very important).

Step 2: Use Token When Pushing

Now push:

git push -u origin main


When it asks:

Username:


Enter your GitHub username.

When it asks:

Password:


👉 Paste the TOKEN (not GitHub password).

🔥 OPTION 2 (BEST PRACTICE): Use SSH 🔐

This is recommended for DevOps.

Step 1: Check if SSH key exists
ls ~/.ssh


If no id_rsa → generate.

Step 2: Generate SSH Key
ssh-keygen -t ed25519 -C "your_email@example.com"


Press Enter for all defaults.

Step 3: Copy Public Key
cat ~/.ssh/id_ed25519.pub


Copy full output.

Step 4: Add to GitHub

Go to:

GitHub → Settings → SSH and GPG keys → New SSH Key


Paste the key.

Step 5: Change Remote to SSH
git remote set-url origin git@github.com:TarunKamur/Boardgame_Website.git

Step 6: Push
git push -u origin main


Now it should work without password.

🎯 Interview-Level Knowledge

If interviewer asks:

👉 Why GitHub stopped password authentication?

Answer:

For security reasons, GitHub deprecated password-based authentication and now requires Personal Access Tokens or SSH keys.

🚀 Recommendation For You

Since you are on EC2 / Linux server:

👉 Use SSH method (professional way)

Tell me:

Are you pushing from
1️⃣ Local laptop
2️⃣ EC2 server

I’ll guide accordingly 🔥
