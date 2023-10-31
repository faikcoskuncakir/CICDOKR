pipeline {
    agent any
    
    environment {
        LC_ALL = 'en_US.UTF-8'
        LANG = 'en_US.UTF-8'
        LANGUAGE = 'en_US.UTF-8'
    }
    
    stages {

        stage('Install Bundler') {
            steps {
                script {
                    sh 'gem install bundler --user-install'
		    sh 'gem install fastlane --user-install'
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
