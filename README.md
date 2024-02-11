# Java-Docker Project DOCKER!

Welcome to the `java-docker` project! This project demonstrates a simple Spring Boot application with REST endpoints, containerized using Docker. It's a straightforward example to showcase how to build, run, and push a Java application to Docker Hub.

## Project Overview

This project includes a basic Spring Boot application with two REST endpoints:

- `/check`: Returns a simple message indicating the application is running.
- `/users`: Returns a list of users as a JSON array.

### EndPointController.java

```java
@RestController
public class EndPointController {

    @GetMapping("/check")
    public String checkStatus() {
        return "Application is running!";
    }

    @GetMapping("/users")
    public List<String> getUsers() {
        return Arrays.asList("User 1", "User 2", "User 3");
    }
}
```

## Dockerization

The application is Dockerized using the following `Dockerfile`:

```Dockerfile
FROM openjdk:17-oracle

# Set the working directory in the container
WORKDIR /app

# Copy the application's jar file to the working directory
COPY target/java-docker-0.0.1-SNAPSHOT.jar java-app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD java -jar java-app.jar & tail -f /dev/null
```

## Steps to Build, Run, and Push the Docker Image

### Build the Docker Image

To build the Docker image, navigate to the root directory of the project where the `Dockerfile` is located and run:

```sh
docker build -t java-docker:1.0 .
```

This command builds the Docker image with the tag `java-docker:1.0`.

### Run the Container

After building the image, you can run the container using:

```sh
docker run -d -p 8080:8080 java-docker:1.0
```

This command runs the container in detached mode, mapping port 8080 of the container to port 8080 on the host, allowing you to access the application's endpoints.

### Push the Image to Docker Hub

Before pushing the image to Docker Hub, ensure you're logged in to your Docker Hub account via the command line:

```sh
docker login
```

Then, tag your image with your Docker Hub username:

```sh
docker tag java-docker:1.0 <your-dockerhub-username>/java-docker:1.0
```

Finally, push the image to Docker Hub:

```sh
docker push <your-dockerhub-username>/java-docker:1.0
```

Replace `<your-dockerhub-username>` with your actual Docker Hub username.

## Accessing the Application

After running the container, you can access the application's endpoints through your browser or using a tool like `curl`:

- **Check Endpoint**: `http://localhost:8080/check`
- **Users Endpoint**: `http://localhost:8080/users`

That's all! You've successfully containerized and deployed a simple Spring Boot application using Docker.
