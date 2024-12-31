pipeline {
    agent any
    environment {
        dockerImage = ''
        registry = 'denver0607/crypto-site-nginx'
        registryCredential = 'dockerhub'
    }
    stages {
        stage('Pull') {
            steps {
                git branch: 'main', url: 'https://github.com/22127060-22127085/CICD-project.git'
            }
        }
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build("${registry}:${BUILD_NUMBER}")
                }
            }
        }

        stage('Push') {
            steps {
                script {
                    docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                    }
                }
            }
        }
    }
} 