pipeline {
    agent any

    environment {
        IMAGE_NAME = 'myapp'
        CONTAINER_NAME = 'myapp'
        PORT = '80'
    }

    stages {
        stage('Clone') {
            steps {
                 git branch: 'main', url: 'https://github.com/charan-creator-maker/myfirstrepo.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh '''
                docker stop $CONTAINER_NAME || true
                docker rm $CONTAINER_NAME || true
                docker run -d --name $CONTAINER_NAME -p $PORT:$PORT $IMAGE_NAME
                '''
            }
        }
    }
}
