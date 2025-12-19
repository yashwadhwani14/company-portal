FROM tomcat:10.1-jdk17

# Remove default ROOT app
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy JSP files to ROOT context
COPY WebContent/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
