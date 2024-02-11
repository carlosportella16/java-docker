# Java-Docker Project on Kubernetes with Kind

Welcome to the Kubernetes deployment guide for the Java-Docker project using Kind (Kubernetes in Docker). This guide covers the entire process from creating a local Kubernetes cluster using Kind, deploying the Java application `carlosportella16/java-docker:v1`, and accessing the application's endpoints.

## Prerequisites

- Docker installed on your machine
- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/) installed
- kubectl installed and configured
- Clone/download this repository to get access to the Kubernetes manifest files

## Deployment Overview

This deployment process includes creating a local Kubernetes cluster using Kind, deploying the Java application, and making it accessible via a LoadBalancer service and Ingress. The application includes endpoints to check its status and retrieve a list of users.

### Files Description

- `cluster.yaml`: Defines the Kind cluster configuration.
- `deployment.yaml`: Defines the Deployment for running the Java application pods.
- `service-load-balancer.yaml`: Defines a Service of type LoadBalancer to expose the application externally.
- `ingress.yaml`: Sets up Ingress for managing external access to the application via HTTP.
- `hpa.yaml`: Configures a Horizontal Pod Autoscaler to automatically scale the number of pods based on CPU utilization.

## Deployment Steps

### 1. Create the Kind Cluster

First, create a local Kubernetes cluster using the `cluster.yaml` configuration file. This step requires Kind to be installed on your machine.

```bash
kind create cluster --config cluster.yaml
```

### 2. Deploy the Application

Deploy the Java application using the `deployment.yaml` file. This will create the necessary pods in your Kind cluster.

```bash
kubectl apply -f deployment.yaml
```

### 3. Expose the Application

Apply the `service-load-balancer.yaml` to create a LoadBalancer service, exposing the application externally.

```bash
kubectl apply -f service-load-balancer.yaml
```

### 4. Configure Ingress

Set up Ingress for the application by applying the `ingress.yaml`. This allows external access via HTTP.

```bash
kubectl apply -f ingress.yaml
```

### 5. Enable Autoscaling

Apply the `hpa.yaml` file to enable horizontal pod autoscaling based on CPU usage.

```bash
kubectl apply -f hpa.yaml
```

### 6. Verify Deployment

Ensure that all components are correctly deployed and running.

```bash
kubectl get all
```

## Accessing the Application

After deployment, you can access the application through:

- **Check Status Endpoint**: Access the `/check` endpoint to verify if the application is running.
- **Users Endpoint**: Use the `/users` endpoint to get a list of users.

The application will be accessible through the external IP provided by the LoadBalancer service or via the Ingress endpoint, depending on your Kind cluster configuration.

## Cleaning Up

To delete the Kind cluster and all associated resources:

```bash
kind delete cluster
```

## Conclusion

This guide provides a comprehensive walkthrough for deploying the Java-Docker project on a local Kubernetes cluster using Kind. It covers the setup of a Kind cluster, deployment of the application, and steps to access the application's functionalities.
