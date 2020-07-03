FROM openjdk:8-jre-alpine

COPY ./Toy0Store/target/Toy0Store-1.0.jar   /Toy0Store-1.0.jar 
# specify default command
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=test", "/Toy0Store-1.0.jar"]

