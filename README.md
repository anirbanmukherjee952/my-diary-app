# my-diary-app
An **Eclipse dynamic web project** built using Servlet, JSP and JDBC, where a user can simply sign in and then create and see thier diary entries. You can simply import the project into Eclipse and export into WAR, then deploy the WAR into Tomcat. MySQL database is used to store users' sign in informations and the diary entries. The CREATE TABLE and INSERT TABLE statements are in the sql file in folder *mydiarydb*.

## Features:
- A user can sign up to the app by providing valid name, email and password.
- After signing in user can create diary entries using a basic text editor.
- User's diray entries are rendered into his/her dashboard using pagination where each page contains atmost 10 entries.
- Session management is done properly so that anyone can't just sign in using URL rewriting.
- User's name, email and password are sanitized and validated before inserted into database
- User's diary entries are also sanitized to remove `<script>` tags.
