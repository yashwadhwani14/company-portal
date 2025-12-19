FROM tomcat:10.1-jdk17

# Remove default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy JSP files to ROOT context
COPY CompanyPortal/WebContent/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
