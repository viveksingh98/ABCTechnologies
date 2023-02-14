FROM tomcat:9.0.71-jdk11

# Copy the WAR file to the container's tomcat webapps directory
# COPY target/ABCTechnologies-1.0.war /var/lib/tomcat9/webapps/

# Set the working directory to /var/lib/tomcat9
WORKDIR /var/lib/tomcat9

# Expose port 8082
EXPOSE 8082

# Start the Tomcat server
CMD ["catalina.sh", "run"]

# Map the container's port 8082 to a port on the host machine
CMD ["-p", "8082:8082"]
