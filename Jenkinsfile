pipeline {
    agent any

    environment {
        IMAGE_NAME = "hello-charan-app"
        REPO_URL = "https://github.com/your-username/hello-charan.git" // Replace with your repo URL
        BRANCH = "main"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: "${BRANCH}", url: "${REPO_URL}"
            }
        }

        stage('Build with Maven') {
            steps {
                script {
                    // Build the Java app using Maven
                    sh 'mvn clean package'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image from the Dockerfile
                    dockerImage = docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Run the Docker container
                    dockerImage.run("-d -p 8080:8080")
                }
            }
        }
    }
}
