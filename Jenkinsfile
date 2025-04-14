pipeline {
    agent any

   
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
                sh 'docker build -t ubuntu .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh ' docker run -it ubuntu:latest
            }
        }
    }
}
