FROM openjdk:17-alpine
WORKDIR /MyJavaProject/my-app

# Copy the built jar from the first stage
# Note: Ensure the jar name matches your pom.xml artifactId
COPY ./target/*.jar app.jar

# Expose the port your app runs on (usually 8080)
EXPOSE 8081

# Run the application
CMD["java", "-jar", "app.jar"]