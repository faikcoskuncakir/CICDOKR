pipeline {
    agent any
    
    environment {
        LC_ALL = 'en_US.UTF-8'
        LANG = 'en_US.UTF-8'
        LANGUAGE = 'en_US.UTF-8'
    }
    
    stages {

        stage('Install Brew and Packages') {
            steps {
                script {
                    sh 'brew install your-package-name'
                }
            }
        }

        stage('Build App') {
            steps {
                script {
                    sh 'bundle exec fastlane appcenter_release'
                }
            }
        }
    }
}
