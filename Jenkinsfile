pipeline {
    agent {
        none
    }
    stages {
        stage('Build') {
            steps {
                echo "Building.."
                sh '''
                ls
                '''
            }
        }
        stage('Test') {
            steps {
                echo "Testing.."
                sh '''
                docker build -t g2airline-image .
                '''
            }
        }
        stage('Deliver') {
            steps {
                echo 'Deliver....'
                sh '''
                docker run -d -p 8081:80 --name g2airline-statis-container
                '''
            }
        }
    }
}