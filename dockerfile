From tomcat:9-alpine 
RUN source path/.war /var/lib/tomcat9/webapps/
EXPOSE 8080
