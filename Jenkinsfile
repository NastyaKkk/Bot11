pipeline {
   agent {
           docker {
               image 'maven:3.8.1-openjdk-8'
               args '-v $HOME/.m2:/root/.m2'
           }
           }
    stages {
     stage('git') {
                    steps {
                        git url: "https://github.com/NastyaKkk/Bot11.git"
                    }}

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}