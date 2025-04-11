pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/charan-creator-maker/myfirstrepo.git'
            }
        }

        stage('Build with Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh '''
                docker build -t myapp .
                docker run -d --name myapp -p 80:80 myapp 
                '''
            }
        }
    }
}
