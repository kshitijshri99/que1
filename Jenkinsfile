pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/kshitijshri99/que1.git'
            }
        }

        stage('Compile') {
            steps {
                
                sh 'javac hello.java'
            }
        }

        stage('Execute') {
            steps {
                
                sh 'java hello'
            }
        }
    }
}
