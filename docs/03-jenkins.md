# Jenkins Documentation

## Overview

Jenkins is an open-source automation server used to implement Continuous Integration (CI). It automates building, testing, and deploying applications whenever changes are pushed to GitHub.

---

## Objective

The objective of Jenkins in this project is to:

- Automatically clone the project from GitHub.
- Build the Spring Boot backend.
- Build the React frontend.
- Prepare the project for Docker image creation.
- Form the CI foundation for the GitOps workflow.

---

## Jenkins Server

| Property | Value |
|----------|-------|
| Operating System | Ubuntu |
| Instance Type | t3.micro |
| Build Tool | Maven |
| Frontend Tool | Node.js |
| Version Control | Git |
| Repository | GitHub |

---

## Jenkins Plugins

Installed plugins include:

- Pipeline
- Git
- GitHub
- Workspace Cleanup
- SSH Agent
- Credentials

---

## Global Tool Configuration

Configured under:

**Manage Jenkins → Tools**

- JDK 21
- Maven
- Git

Node.js was installed directly on the EC2 instance.

---

## GitHub Integration

Repository access uses SSH authentication.

Repository URL:

git@github.com:abdullahkhan-cloud/devops-gitops-platform.git

Credentials:

github-ssh

---

## Pipeline Stages

The CI pipeline performs the following stages:

1. Checkout SCM
2. Checkout Source
3. Verify Build Environment
4. Verify Workspace
5. Build Backend
6. Build Frontend
7. Post Actions

---

## Jenkinsfile

The Jenkins pipeline is stored in the repository root.

```
Jenkinsfile
```

Jenkins automatically loads this file using **Pipeline script from SCM**.

---

## Successful Build

The pipeline successfully completed all stages:

- Checkout SCM
- Tool Installation
- Checkout Source
- Verify Build Environment
- Verify Workspace
- Build Backend
- Build Frontend
- Post Actions

---

## Issue Encountered

During the first pipeline execution, the backend build appeared to hang for a long time.

Investigation showed:

- The first Maven build downloaded all project dependencies.
- The Jenkins server was running on a t3.micro instance with limited memory.
- Subsequent builds completed much faster because Maven reused the cached dependencies.

---

## Future Improvements

- Build Docker images automatically.
- Push Docker images to Docker Hub.
- Deploy applications to Kubernetes.
- Implement GitOps using Argo CD.
- Configure monitoring using Prometheus and Grafana.

---

## Conclusion

Jenkins successfully provides Continuous Integration for this project and serves as the automation engine for the remaining DevOps workflow.