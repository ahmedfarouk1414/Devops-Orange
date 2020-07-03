pipeline {

    agent {
  label 'slave'
}
    
    stages {
        stage('Build') {
            steps {
               sh """
                   'ls -al '
                    'pwd'
                   'mvn clean package -X -f Toy0Store/pom.xml '
                """
                //sh  'mvn clean package -X -f Toy0Store/pom.xml '
              }
        }
      }
      
    }
