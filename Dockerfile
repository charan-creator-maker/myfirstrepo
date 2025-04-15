FROM openjdk:8-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the Maven-built .jar file into the container
COPY target/HelloCharan.jar HelloCharan.jar

# Command to run the app
ENTRYPOINT ["java", "-jar", "HelloCharan.jar"]
