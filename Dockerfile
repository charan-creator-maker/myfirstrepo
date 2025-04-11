# Use JDK image to compile
FROM openjdk:17-slim

# Set working directory
WORKDIR /app

# Copy Java file into container
COPY HelloCharan.java .

# Compile Java file
RUN javac HelloCharan.java

# Run the program
CMD ["java", "HelloCharan"]
