pipeline {  
    agent any  
    
    stages {  
        /*
		Jenkinsfile is coming from this gitrepo. Hence below step not required.
		stage ('Git-Checkout') {  
            steps{
                git  url: 'https://github.com/vilasvarghese/docker-k8s.git' 
                //credentialsId: 'myrandomid like e6757c46-0750-4ab1-8cd4-c569efcbbdb1',
                echo "Checkout successful";
            } 
        }*/
        stage ('Compile') {  
            steps{
                //bat label: '', script: 'mvn compile'
                sh 'mvn compile'
                echo "test successful";
                
            } 
        }
        stage ('Build') {  
            steps{
                sh 'mvn clean'
                sh 'mvn package'
                echo "build successful";
                    
            } 
        }
        stage ('Test') {  
            steps{
                sh 'mvn test'
                echo "test successful";
            } 
        }
        stage ('Create Docker Image') {  
            steps{
                sh 'docker build -t java-web-app-cicd:latest .'
            } 
        }
        stage ('Integration Test') {  
            steps{
                //ideally from a different repo.
                sh 'mvn test'
            } 
        }
        stage ('Push docker image to Docker Hub') {  
            steps{
				//Install Docker plugin and Docker Pipeline before executing this
                /*
                Go to credentials > System > Global credentials > Add credentials a page will open.
                    In Kind drop-down select Username and password.
                    In User put a non-existing username like jenkins-user or user.
                    Add Personal Access Token from DockerHub in the password field
                */
                
                withCredentials([usernamePassword(credentialsId: 'dockerhub-username-accesstoken', passwordVariable: 'dockerHubPassword', usernameVariable: 'dockerHubUser')]) {
                  sh "docker login -u ${env.dockerHubUser} -p ${env.dockerHubPassword}"
                  sh 'docker push vilasvarghese/java-web-app-cicd:latest'
                }
            } 
        }    
        stage ('Deploy') {
            steps{
                sh '/usr/local/bin/kubectl delete deploy --all'
                sh '/usr/local/bin/kubectl create -f deploy-tomcat.yaml'
            }
        }
        stage ('Monitor') { 
           steps{ 
             echo "Now you can monitor!";
           }
        }
    }
}	