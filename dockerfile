From tomcat:9.0-alpine 
ADD /var/lib/jenkins/workspace/AbcTechnologiesPackage/target/*.war /usr/local/tomcat/webapps
EXPOSE 8080

CMD ["catalina.sh", "run"]
