pipeline {

    agent {
  label 'slave'
}
    
    stages {
        stage('Build') {
            steps {
                sh 'ls -al '
                sh 'pwd'
                sh  'mvn clean package -X -f Toy0Store/pom.xml '
              }
        }
      }
      
    }
