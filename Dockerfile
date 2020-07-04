FROM openjdk:8-jre-alpine
WORKDIR /app
ENV spring.datasource.url
ENV spring.datasource.username
ENV spring.datasource.password
COPY ./Toy0Store/target/Toy0Store-1.0.jar   /app/Toy0Store-1.0.jar 
# specify default command
CMD ["/usr/bin/java", "-jar", "/app/Toy0Store-1.0.jar"]
EXPOSE 8080
