pipeline {

    agent {
  label 'slave'
}
        environment {
        //be sure to replace "willbla" with your own Docker Hub username
        DOCKER_IMAGE_NAME = "ahmedfarouk141414/orange"
    }
    
    stages {
        stage('Build') {
            steps {
               sh """
                   ls -al 
                   pwd
                   mvn clean package -X -f Toy0Store/pom.xml 
                """
                //sh  'mvn clean package -X -f Toy0Store/pom.xml '
              }
        }
      }
    
           stage('Build Docker Image') {
            when {
                branch 'master'
            }
            steps {
                script {
                    app = docker.build(DOCKER_IMAGE_NAME)
             
                }
            }
        }  
    
           stage('Push Docker Image') {
            when {
                branch 'master'
            }
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    
    
    
    }
