pipeline {
    agent { 
        node {
            label 'docker-agent'
            }
      }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                docker build -t g2-airline-image .
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                docker run -d -p 8081:80 --name g2airline-statis-container
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                echo "Success"
                '''
            }
        }
    }
}