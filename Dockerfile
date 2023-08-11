# Use an official Java runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the pom.xml and source code to the container
COPY pom.xml .
COPY src ./server/src

# Build the application with Maven
RUN apt-get update && apt-get install -y maven
RUN mvn package

# Set the entry point
ENTRYPOINT ["java", "-jar", "server/target/server.jar"]
