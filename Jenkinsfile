pipeline {
    agent any

    stages {
        stage('Git checkout') {
            steps {
                // Get some code from a GitHub repository
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/jglick/simple-maven-project-with-tests.git']])

            }
        }
        stage('Build') {
            steps {
                script {
                sh 'docker build -f /opt/simple-maven-project-with-tests/Dockerfile .'

            }
                
            }
            
        }
    }
}
