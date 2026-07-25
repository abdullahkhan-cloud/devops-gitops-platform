# Docker Documentation

## Objective

Containerize the Spring Boot backend and React frontend using Docker and manage both services with Docker Compose.

---

## Docker Architecture

```text
Developer
    │
    ▼
Docker Build
    │
    ▼
Docker Images
    │
    ▼
Docker Hub
    │
    ▼
Docker Compose
```

---

## Backend

- Multi-stage Docker build
- Maven Builder
- Eclipse Temurin JRE Runtime

### Build

```bash
docker build -t devops-gitops-backend:v1 .
```

### Run

```bash
docker run -d \
--name backend-container \
-p 8080:8080 \
devops-gitops-backend:v1
```

---

## Frontend

- Multi-stage Docker build
- Node Builder
- Nginx Runtime

### Build

```bash
docker build -t devops-gitops-frontend:v1 .
```

### Run

```bash
docker run -d \
--name frontend-container \
-p 3000:80 \
devops-gitops-frontend:v1
```

---

## Docker Compose

### Start

```bash
docker compose up -d
```

### Stop

```bash
docker compose down
```

### Logs

```bash
docker compose logs
```

---

## Docker Hub

### Login

```bash
docker login
```

### Tag Images

```bash
docker tag devops-gitops-backend:v1 <dockerhub-username>/devops-gitops-backend:v1

docker tag devops-gitops-frontend:v1 <dockerhub-username>/devops-gitops-frontend:v1
```

### Push Images

```bash
docker push <dockerhub-username>/devops-gitops-backend:v1

docker push <dockerhub-username>/devops-gitops-frontend:v1
```

---

## Concepts Learned

- Docker Images
- Docker Containers
- Dockerfile
- Multi-stage Build
- Docker Compose
- Docker Hub
- Port Mapping
- Image Tagging

---

## Common Errors

### Dockerfile not found

Solution:

Run docker build from the correct directory.

---

### Container exited immediately

Solution:

Check logs using:

```bash
docker logs <container-name>
```

---

### Port already allocated

Solution:

Stop the existing container or use a different host port.

---

## Interview Questions

### What is Docker?

Docker is a containerization platform that packages applications and their dependencies into portable containers.

### Difference between Image and Container?

An Image is a read-only template.

A Container is a running instance of an image.

### Why use Docker Compose?

Docker Compose manages multi-container applications using a single YAML configuration file.

### Why use Docker Hub?

Docker Hub is a container registry used to store and distribute Docker images.