## Jenkins CI Pipeline

This project uses Jenkins to automate the Continuous Integration (CI) process.

### Pipeline Workflow

1. Clone source code from GitHub
2. Verify build environment
3. Build backend using Maven
4. Build frontend using npm/Vite
5. Build backend Docker image
6. Build frontend Docker image
7. Push Docker images to Docker Hub

### Technologies

- Jenkins
- Docker
- Maven
- Node.js
- Vite
- GitHub
- Docker Hub

### Pipeline Result

The Jenkins pipeline successfully completed all stages and produced Docker images for both backend and frontend applications.

### Screenshots

#### Jenkins Dashboard

![Dashboard](docs/screenshots/jenkins/01-jenkins-dashboard.png)

#### Successful Build

![Build](docs/screenshots/jenkins/02-successful-build.png)

#### Pipeline Stage View

![Pipeline](docs/screenshots/jenkins/03-pipeline-stage-view.png)

#### Console Output

![Console](docs/screenshots/jenkins/04-console-success.png)