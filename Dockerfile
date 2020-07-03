FROM openjdk:8-jre-alpine

COPY target/spring-boot-*.war /app.war
# specify default command
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/./Toy0Store/target/Toy0Store-1.0.jar"]


COPY Dockerfile  ./build
copy ./Dockerfile   ./build
