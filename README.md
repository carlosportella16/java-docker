# Main Branch - Java-Docker-Kubernetes Project

Welcome to the `main` branch of the Java-Docker-Kubernetes project. This branch serves as the central point that combines the Docker containerization process and the Kubernetes integration steps.

## Project Overview

This project is designed to demonstrate a complete workflow of developing a Java application, containerizing it using Docker, and orchestrating it with Kubernetes.

The `docker` branch contains the initial setup of the Java application, including the Dockerfile and the necessary configuration to build and push the image to Docker Hub at `carlosportella16/java-docker:v1`.

The `kubernetes` branch showcases the subsequent steps of deploying this Docker image onto a Kubernetes cluster. It includes Kubernetes manifest files for deployment, services, ingress, and horizontal pod autoscaler (HPA) configurations.

## How to Use This Repository

To follow the application setup and deployment process, you should switch between branches as follows:

1. **Docker Setup**: Switch to the `docker` branch to view the Docker containerization process. You can switch branches by clicking on the branch name dropdown at the top of the repository page, as shown in the included image.

   ![Switch Branches](https://github.com/carlosportella16/java-docker/assets/66968264/37f0b4d6-66d8-4938-9e2b-dbdd78dcec37)

2. **Kubernetes Integration**: After completing the Docker setup, switch to the `kubernetes` branch to follow the Kubernetes integration steps using the Kind cluster setup and applying the Kubernetes manifests.

## Step by Step Guide

- **Switch to the `docker` branch**: Follow the README in the `docker` branch for instructions on building the Docker image and pushing it to Docker Hub.
- **Switch to the `kubernetes` branch**: Continue with the README in the `kubernetes` branch for guidance on deploying the image from Docker Hub to your Kubernetes cluster using Kind.

## Creating the Project

The project was initiated by setting up a simple Java application with REST endpoints. The Docker containerization was then implemented to encapsulate the application environment, ensuring consistency across different setups.

## Utilizing Kubernetes

With the application containerized, Kubernetes manifests were created to define the deployment and service objects necessary for running the application on a Kubernetes cluster. The `kubernetes` branch contains all the required files and detailed instructions for setting up autoscaling, load balancing, and ingress rules.

## Conclusion

By following the READMEs in the respective branches, you will be able to deploy a containerized Java application on a local Kubernetes cluster, illustrating a common CI/CD pipeline scenario. Ensure you follow the steps in the order they are presented to understand the entire containerization and orchestration process.
