# Event Management System - CI/CD Pipeline Deployment


## Project Overview

This project is an **Event Management System** deployed using **Kubernetes** on an **AWS EC2 t2.large instance**. It follows a **CI/CD pipeline** for automated deployment and management. The system consists of:

- **React Frontend** (Interacts with the backend API)

- **Spring Boot Backend** (Processes business logic and connects to the database)

- **MySQL Database** (Stores application data)

- **Kubernetes Cluster** (Manages deployments using LoadBalancer for external access)

- **Docker Containers** (Encapsulates the application for easy deployment)

- **CI/CD Pipeline** (Automates build, testing, and deployment)

## Architecture

```

React (Frontend) → Spring Boot (Backend) → MySQL (Database)

```

## Technologies Used

- **Frontend:** React, Axios

- **Backend:** Spring Boot, Java 8, Lombok

- **Database:** MySQL

- **Containerization:** Docker

- **Deployment:** Kubernetes (LoadBalancer Service)

- **Cloud Provider:** AWS EC2

- **CI/CD:** Jenkins, GitHub Actions

## Docker Integration

- The project includes **Dockerfiles** for both frontend and backend services.

- Docker images are built and pushed to a container registry (e.g., Docker Hub or AWS ECR).

- Kubernetes pulls the latest images from the registry during deployment.

## AWS Configuration

- Assign an **Elastic IP** to the worker node running the services.

- Update the **React frontend** to use the Elastic IP instead of `localhost`.

## CI/CD Pipeline

- **Jenkins & GitHub Actions** automate build, test, and deployment.

- **Docker images** are built and pushed automatically.

- **Triggers:** Any commit to the main branch automatically redeploys the application.

## Repository

[GitHub Repository](https://github.com/PRASHANTH7993/Project-d1.git)

## Author

Developed and maintained by **Prashanth J**.







