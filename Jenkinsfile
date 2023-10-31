pipeline {
    agent any
    environment {
        LC_ALL = 'en_US.UTF-8'
        LANG = 'en_US.UTF-8'
        LANGUAGE = 'en_US.UTF-8'
    }
    stages {
        stage('Build App') {
            steps {
                script {
                    sh "bundle exec fastlane appcenter_release"
                }
            }
        }
    }
}
