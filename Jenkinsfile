@Library('gw-shared-library') _
pipeline{

  agent any

  parameters{
    choice(name: 'action', choices: 'create\ndelete', description: 'choose create/Destroy')
    string(name: 'ImageName',  description: "name of the docker build", defaultvalues: 'javaapp')
    string(name: 'ImageTag',  description: "tag of the docker build", defaultvalues: 'v1')
    string(name: 'AppName',  description: "name of the docker build", defaultvalues: 'springboot')
  }
  stages{
    stage('Git Checkout'){
      steps{
        script{
          
          gitCheckout(
            branch: "main",
            url: "https://github.com/Sarthakcha/devops0804.git"
          )
        }
      }
    }
    
     stage('Unit Test Maven'){
      when { expression { params.action == 'create'}}
      steps{
        script{
          
            mvnTest()
          
        } 
      }
    }
    stage('mvn integration Test'){
      when { expression { params.action == 'create'}}
      steps{
        script{
          
           mvnIntegretionTest()
          
        } 
      }
    }
    stage('Static code analysis: Sonarqube'){
      steps{
        script{
          def credentialsId = 'sonar-token-fixed'
          staticCodeAnalysis(credentialsId)
          
        } 
      }
    }
    stage('Maven Build: Maven'){
      steps{
        script{
          mvnBuild()
          
        } 
      }
    }
     stage('Docker Image: Build'){
      steps{
        script{
          dockerBuild("${params.ImageName}","${params.ImageTag}","${params.AppName}")
          
        } 
      }
    }
  }
}

