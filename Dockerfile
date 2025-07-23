# Use a Java 21 base image
FROM eclipse-temurin:21-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the built jar file
ARG JAR_FILE=target/learning-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expose the app port
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
