From tomcat:9-alpine 
RUN /var/lib/jenkins/workspace/AbcTechnologiesPackage/target/ABCtechnologies-1.0.war /var/lib/tomcat9/webapps/
EXPOSE 8080
