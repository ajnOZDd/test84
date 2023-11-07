# Use a Java runtime as the base image
FROM openjdk:17-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY myapp.war myapp.war

# Expose the port that your application listens on
EXPOSE 8080

# Set the command to run your application
CMD ["java", "-jar", "myapp.war"]