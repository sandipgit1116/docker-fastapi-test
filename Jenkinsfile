pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'docker-compose build'
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker-compose up -d'
      }
    }
  }
}

withCredentials([string(credentialsId: 'sandipdocker1116', variable: '')]) {
    
}
