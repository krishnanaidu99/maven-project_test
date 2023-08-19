FROM ubuntu:latest
RUN mkdir /opt/tomcat
RUN apt-get update -y
RUN apt-get install default-jdk -y
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.79/bin/apache-tomcat-9.0.79.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.79.tar.gz
RUN mv apache-tomcat-9.0.79/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
