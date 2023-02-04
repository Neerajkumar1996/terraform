pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
              git branch: 'terraform_aws', url: 'https://github.com/Neerajkumar1996/terraform.git'
              
            }
        }
         stage('terraform_init') {
            steps {
             sh ('cd /var/lib/jenkins/workspace/terraform_redis && terraform init ')
            }
         }
          stage('terraform action') {
            steps {
             sh ('cd /var/lib/jenkins/workspace/terraform_redis && terraform $action --auto-approve')
            }
        }
        
    }
}
