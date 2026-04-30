pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                
                checkout scm
            }
        }

        stage('Compile') {
            steps {
                
                sh 'javac hello.java'
            }
        }

        stage('Run & Display Output') {
            steps {
                
                sh 'java hello'
            }
        }
    }
}
