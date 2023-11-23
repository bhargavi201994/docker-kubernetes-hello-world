FROM ubuntu:22.04
RUN apt update
RUN apt install openjdk-17-jdk wget -y
ENV PORT 8080
EXPOSE 8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]
