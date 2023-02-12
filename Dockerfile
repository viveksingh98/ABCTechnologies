# Use an existing image as the base
FROM tomcat:9.0.34-jdk8-openjdk

# Copy the war file to Tomcat webapps folder
COPY target/AbcTechnologies-1.0.war /usr/local/tomcat/webapps/

# Expose port 8080 for Tomcat
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
