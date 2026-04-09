@Library('gw-shared-library') _
pipeline{

  agent any

  parameters{
    choice(name: 'action', choices: 'create\ndelete', description: 'choose create/Destroy')
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
      when { expression { param.action == 'create'}}
      steps{
        script{
          
            mvnTest()
          
        } 
      }
    }
    stage('mvn inyegration Test'){
      when { expression { param.action == 'create'}}
      steps{
        script{
          
           mvnIntegretionTest()
          
        } 
      }
    }
  }
}

