FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk maven && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . /app
RUN mvn clean package 
EXPOSE 8080
CMD ["java", "-jar", "target/spring-backend-v1.jar"]
