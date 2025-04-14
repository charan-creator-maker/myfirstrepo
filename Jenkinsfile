pipeline {
    agent any

   
    

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

        stage('test') {
            steps {
                sh 'mvn test'
            }
        }

        
    }
}
