# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container


# Copy the Spring Boot JAR file into the container
ADD target/restaurant-service.jar restaurant-service.jar

# Expose the application port
EXPOSE 5002

# Command to run the application
ENTRYPOINT ["java", "-jar", "/restaurant-service.jar"]