From tomcat:9.0-alpine 
ADD ./*.war /usr/local/tomcat/webapps
EXPOSE 8080

CMD ["catalina.sh", "run"]