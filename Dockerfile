FROM ajju13/tomcat-8:v1.0
MAINTAINER ajay kumar
RUN rm -rf /opt/tomcat/webapps/*
COPY ./target/demo-0.0.1.war /opt/tomcat/webapps/hello.war
EXPOSE 8080
ENTRYPOINT ["/opt/tomcat/bin/catalina.sh", "run"]
