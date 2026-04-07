FROM tomcat:9.0-jdk11-openjdk

# This removes the default Tomcat pages
RUN rm -rf /usr/local/tomcat/webapps/*

# The * is a wildcard that finds your war file no matter what it is named
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
