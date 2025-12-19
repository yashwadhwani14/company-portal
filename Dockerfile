FROM tomcat:10.1-jdk17

RUN rm -rf /usr/local/tomcat/webapps/*

COPY . /usr/local/tomcat/webapps/ROOT

# Render provides PORT env variable
ENV CATALINA_OPTS="-Dserver.port=${PORT}"

EXPOSE 10000

CMD ["catalina.sh", "run"]
