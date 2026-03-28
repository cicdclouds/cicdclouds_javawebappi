# 1. Update the base image to use JDK 21 so it matches your Jenkins server
FROM tomcat:10.1-jdk21-openjdk-slim

# 2. FIX THE PORT: This tells Tomcat to actually listen on 8181 instead of 8080
RUN sed -i 's/port="8080"/port="8181"/' /usr/local/tomcat/conf/server.xml

# 3. Clean out default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# 4. Copy your newly built WAR file into the container
COPY target/cicdclouds-api.war /usr/local/tomcat/webapps/ROOT.war

# 5. Document the port and start the server
EXPOSE 8181
CMD ["catalina.sh", "run"]
