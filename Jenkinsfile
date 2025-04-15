pipeline {
    agent any

    environment {
        IMAGE_NAME = "apponix-html-site"
        CONTAINER_NAME = "apponix-container"
        REPO_URL = "https://github.com/charan-creator-maker/myfirstrepo" // 🔁 Replace with your GitHub repo
        BRANCH = "main"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: "${BRANCH}", url: "${REPO_URL}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("${IMAGE_NAME}")
                }
            }
        }

        stage('Stop & Remove Old Container') {
            steps {
                script {
                    sh """
                    if [ \$(docker ps -q -f name=${CONTAINER_NAME}) ]; then
                        docker stop ${CONTAINER_NAME}
                        docker rm ${CONTAINER_NAME}
                    fi
                    """
                }
            }
        }

        stage('Run New Docker Container') {
            steps {
                script {
                    dockerImage.run("-d --name ${CONTAINER_NAME} -p 8080:80")
                }
            }
        }
    }
}
