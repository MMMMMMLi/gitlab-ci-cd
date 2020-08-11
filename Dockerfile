FROM maven:3.5-jdk-8
VOLUME /tmp
ADD target/demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 11111
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]