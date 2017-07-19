pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'docker-compose build'
            }
        }
        stage('Django') {
            steps {
                sh 'docker-compose run web manage.py'
            }
        }        
        stage('Test') {
            steps {
                sh 'docker-compose run web py.test'
            }
        }        
    }

    post {
        always {
            sh 'docker-compose down'
        }
    }
}
