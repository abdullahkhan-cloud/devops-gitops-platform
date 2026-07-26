# 🚀 Production-Ready CI/CD Pipeline with Kubernetes

A production-style DevOps project that automates the build, containerization, and deployment of a full-stack application using Jenkins, Docker, Terraform, AWS, and Kubernetes.

The project demonstrates how modern DevOps practices can be used to provision cloud infrastructure, build applications automatically, publish Docker images, and deploy workloads to a Kubernetes cluster.

---

# 📌 Project Overview

This project implements a complete CI/CD workflow for a Spring Boot backend and a React frontend.

The infrastructure is provisioned using Terraform on AWS. Jenkins automates the build process, Docker packages the applications into containers, Docker Hub stores the images, and Kubernetes (K3s) manages the deployment.

---

# ✨ Features

- Infrastructure as Code using Terraform
- AWS EC2 deployment
- Jenkins CI Pipeline
- Dockerized Spring Boot Backend
- Dockerized React Frontend
- Docker Hub Integration
- Kubernetes Deployment
- Kubernetes Services
- Internal Pod-to-Pod Communication
- NodePort Service Exposure
- Production-style Repository Structure

---

# 🏗️ Architecture

```
                Developer
                     │
                     ▼
              GitHub Repository
                     │
                     ▼
                Jenkins Pipeline
                     │
      ┌──────────────┴──────────────┐
      ▼                             ▼
Build Backend                 Build Frontend
      │                             │
      └──────────────┬──────────────┘
                     ▼
               Docker Images
                     │
                     ▼
                Docker Hub
                     │
                     ▼
              Kubernetes (K3s)
         ┌────────────┴────────────┐
         ▼                         ▼
   Backend Deployment      Frontend Deployment
         │                         │
         └────────────┬────────────┘
                      ▼
                 Kubernetes Services
                      │
                      ▼
                  End Users
```

---

# 🛠️ Technology Stack

| Category | Technology |
|----------|------------|
| Cloud | AWS EC2 |
| Infrastructure | Terraform |
| CI | Jenkins |
| Version Control | Git & GitHub |
| Containerization | Docker |
| Registry | Docker Hub |
| Orchestration | Kubernetes (K3s) |
| Backend | Spring Boot |
| Frontend | React + Vite |
| OS | Ubuntu Linux |

---

# 📂 Project Structure

```text
devops-gitops-platform
│
├── backend/
│   ├── Dockerfile
│   ├── pom.xml
│   └── src/
│
├── frontend/
│   ├── Dockerfile
│   ├── package.json
│   └── src/
│
├── terraform/
│   ├── provider.tf
│   ├── vpc.tf
│   ├── subnet.tf
│   ├── security-group.tf
│   ├── ec2.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── k8s/
│   ├── namespace.yaml
│   ├── backend-deployment.yaml
│   ├── backend-service.yaml
│   ├── frontend-deployment.yaml
│   └── frontend-service.yaml
│
├── diagrams/
├── docs/
├── scripts/
├── Jenkinsfile
├── docker-compose.yml
└── README.md
```

---

# ⚙️ Infrastructure Provisioning

Terraform provisions:

- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance

---

# 🐳 Docker

The project contains two Dockerized applications.

### Backend

- Spring Boot
- Java 17
- Maven

### Frontend

- React
- Vite
- Nginx

Docker images are automatically pushed to Docker Hub.

---

# 🔄 Jenkins CI Pipeline

Pipeline stages:

1. Clone Repository
2. Build Backend
3. Build Frontend
4. Build Docker Images
5. Push Images to Docker Hub

---

# ☸️ Kubernetes Deployment

The application is deployed using Kubernetes manifests.

Resources include:

- Namespace
- Backend Deployment
- Backend Service
- Frontend Deployment
- Frontend Service

---

# ✅ Deployment Verification

Verified successfully:

- Kubernetes Node Ready
- Backend Pod Running
- Frontend Pod Running
- Kubernetes Services Created
- Pod-to-Pod Communication
- Frontend Accessible
- Backend API Accessible

Backend endpoint:

```
GET /api/hello
```

Example response:

```json
{
  "message": "Hello from Spring Boot!"
}
```

---

# 📷 Project Screenshots

Add screenshots here.

- Jenkins Dashboard
- Successful Pipeline
- Docker Hub Repository
- Terraform Apply
- Kubernetes Pods
- Kubernetes Services
- Application UI

---

# 🚧 Challenges Faced

During development the following issues were encountered and resolved:

- AWS authentication issues
- Terraform configuration validation
- Docker image build failures
- Kubernetes DiskPressure
- Kubernetes Pod Scheduling
- Kubernetes Service Networking
- Backend API verification

---

# 📚 Skills Demonstrated

- Git
- GitHub
- Linux
- AWS
- Terraform
- Docker
- Docker Compose
- Docker Hub
- Jenkins
- CI/CD
- Kubernetes
- Kubernetes Networking
- Spring Boot
- React
- Infrastructure as Code

---
# 👨‍💻 Author

Abdullah Khan

GitHub: https://github.com/abdullahkhan-cloud