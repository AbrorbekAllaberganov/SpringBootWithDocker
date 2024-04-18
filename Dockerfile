# Use the official OpenJDK 17 image as a base
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Spring Boot application JAR file into the container
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "demo.jar"]
