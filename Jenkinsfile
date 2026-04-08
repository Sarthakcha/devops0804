@Library('gw-shared-library') _
pipeline{

  agent any
  stages{
    stage('Git Checkout'){
      steps{
        script{
          
          girCheckout(
            branc: "main"
            url: "https://github.com/Sarthakcha/devops0804.git"
          )
        }
      }
    }
  }
}

