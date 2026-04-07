FROM tomcat:9
# The asterisk (*) is the magic fix. It finds ANY .war file in target/
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
