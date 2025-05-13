pipeline {
 agent any
 environment {
 AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY')
 AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_KEY')
}
  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/anil-goud/terraform.git'
      }
    }
    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }
    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve'
      }
    }
  }
}
