!Made for educational purposes not to be used in production!

This is a node.js web app with a postgres database. The web app is a simple events registration platform.
Functionality: A user can create an account, sign in, add an event and look at added events. 

The docker-compose file dockerizes the web app by refering to the Dockerfile it then creates the postgres database as a 2nd
container and PGadmin as a 3rd container.

Initialisation script:

In the volumes folder there is a .sql script called volumez.sql this sets up the schema, tables and columns for the database. 

I have commented out the bits of the .yml file I had to remove to get this script to work. 

Running the docker compose file:

1 Install Docker
2 open the SmythNode folder and run docker-compose up --build

3 If you have run it before and you try again and get the error database already exists skipping initalization script 
then you need to do this:

docker-compose down --volumes
docker image ls -qa
docker image rm <IMAGE TAG 1> <IMAGE TAG 2> <IMAGE TAG 3>

then run docker-compose up --build
and it should work ok
 
