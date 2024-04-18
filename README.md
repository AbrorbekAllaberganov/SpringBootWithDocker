# Project Name (Spring boot with docker)

This project is a Spring Boot application that works without a database.

## Using Docker with Your Application

Follow these steps to run your Spring Boot application in a Docker container:

### 1. Create Dockerfile

```Dockerfile
# Use the official OpenJDK 11 image as a base
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Spring Boot application JAR file into the container
COPY target/your-application.jar /app/your-application.jar

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "your-application.jar"]
```
Make sure to replace your-application.jar with the actual name of your Spring Boot application JAR file.
### 2. Build Docker Image
Run the following command in the terminal to build your Docker image. Make sure you are in the directory containing your Dockerfile and Spring Boot application.

```bash
docker build -t your-application-image .
```

### 3. Run Docker Container
You can run your Spring Boot project in a Docker container using the following command:
```bash
docker run -p 8080:8080 your-application-image
```
In your web browser, send get request to http://localhost:8080/docker to check if your application is working.
