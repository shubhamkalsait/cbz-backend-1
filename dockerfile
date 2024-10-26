FROM ubuntu:latest
RUN sudo apt update -y && sudo apt install openjdk-8-jdk -y
RUN sudo apt install maven -y
COPY . /opt
WORKDIR /opt
RUN mvn clean package -Dmaven.test.skip=true
CMD java -jar target/spring-backend-v1.jar