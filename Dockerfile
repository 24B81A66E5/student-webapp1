FROM tomcat:9.0-jdk11-openjdk

# Clean existing apps
RUN rm -rf /usr/local/tomcat/webapps/*

# The Fix: Using the asterisk (*) acts as a wildcard
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]

