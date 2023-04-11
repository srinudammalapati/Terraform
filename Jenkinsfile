pipeline{
    agent {label 'TERRAFORM'}
    stages {
        stage('scm') {
            git url: 'https://github.com/srinudammalapati/Terraform.git',
            branch: 'dev'
        }
        stage('terraform') {
            sh 'terraform init'
            sh 'terraform apply -var-file="dev.tfvars" -auto-approve'
        }
    }
}