FROM openjdk:17-oracle

# Set the working directory in the container
WORKDIR /app

# Copy the application's jar file to the working directory
COPY target/java-docker-0.0.1-SNAPSHOT.jar java-app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD java -jar java-app.jar & tail -f /dev/null