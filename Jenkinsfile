pipeline{
    agent {label 'AKS'}
    stages {
        stage('scm') {
            steps{
                git url: 'https://github.com/srinudammalapati/Terraform.git',
                branch: 'qa' 
            }
        }
        stage('terraform') {
            steps{
              sh 'terraform init'
              sh 'terraform apply -var-file="dev.tfvars" -auto-approve
            }
        }
    }
}