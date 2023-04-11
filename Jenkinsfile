pipeline{
    agent {label 'TERRAFORM'}
    stages {
        stage('scm') {
            steps{
                git url: 'https://github.com/srinudammalapati/Terraform.git',
                branch: 'dev' 
            }
        }
        stage('terraform') {
            steps{
              sh 'terraform init'
              sh 'terraform apply -var-file="dev.tfvars" -auto-approve' 
            }
        }
    }
}