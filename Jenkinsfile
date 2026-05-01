pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = "kshitijshri99/que1"
        DOCKER_TAG = "${env.BUILD_ID}"
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build & Tag Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                    sh "docker tag ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest"
                }
            }
        }

        stage('Push to DockerHub') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'dockerhub-creds', 
                                  passwordVariable: 'Sriksh@99', 
                                  usernameVariable: 'kshitijshri@99')]) {
                    
                    sh "echo \$Sriksh@99 | docker login -u \$kshitijshri99 --password-stdin"
                    sh "docker push ${DOCKER_IMAGE}:${DOCKER_TAG}"
                    sh "docker push ${DOCKER_IMAGE}:latest"
                }
            }
        }
    }

    post {
        always {
            sh "docker rmi -f ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest || true"
            sh "docker logout"
        }
    }
}
