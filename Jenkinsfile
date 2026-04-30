pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/kshitijshri99/jenkins_new.git'
            }
        }

        stage('Docker Build') {
            steps {
                script {
                    sh 'docker build -t my-java-app:${BUILD_NUMBER} .'
                }
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run --rm my-java-app:${BUILD_NUMBER}'
            }
        }
    }
}
