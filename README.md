# docker-swarm-spring-boot-app-deployment
Build a custom docker image, that will run and deploy a spring-boot application. 

For deploying the stack file,follow the instructions bellow:
 - Create two secret txt files (mysql_user.txt,mysql_password.txt) with the proper credentials that you will find in application.properties.
   The txt files should be in the same folder with your stack file.
 - Create an overlay network on your VM, executing  `docker network create -d overlay --attachable backend`
 - Run the command  `docker stack deploy -c car-shop-app-stack.yml test`
 
