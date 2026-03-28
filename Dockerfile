# Step 1: Use the official Tomcat image bundled with Java 21
# We use Eclipse Temurin (formerly AdoptOpenJDK) as it is the industry standard
FROM tomcat:10.1-jdk21-temurin-jammy

# Step 2: Delete default Tomcat apps to reduce attack surface (Security Best Practice)
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 3: Copy your pre-built WAR file into the image as ROOT.war
# This ensures your API is served at the root domain (e.g., http://your-ip/)
COPY target/cicdclouds-api.war /usr/local/tomcat/webapps/ROOT.war

# Step 4: Expose the standard internal port
EXPOSE 8181

# Step 5: Start Tomcat
CMD ["catalina.sh", "run"]
