FROM openjdk:8-jre-alpine
WORKDIR /app
COPY ./target/Toy0Store-1.0.jar   /app/Toy0Store-1.0.jar 
# specify default command
CMD ["/usr/bin/java", "-jar", "/Toy0Store-1.0.jar"]
EXPOSE 8080
