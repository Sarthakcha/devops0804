@Library('gw-shared-library') _
pipeline{

  agent any
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
      steps{
        script{
          
            mvnTest()
          
        } 
      }
    }
    stage('mvn inyegration Test'){
      steps{
        script{
          
           mvnIntegretionTest()
          
        } 
      }
    }
  }
}

