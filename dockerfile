FROM openjdk:17
COPY target/spring-backend-v1.jar .
EXPOSE 8080
CMD java -jar spring-backend-v1.jar