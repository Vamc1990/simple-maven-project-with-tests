pipeline {
    agent any

    tools {
        // Install the Maven version configured as "Mavne" and add it to the path.
        maven "maven-3.6.3"
    }

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
                sh 'docker build -t "myapp" .'

            }
                
            }
            
        }
    }
}
