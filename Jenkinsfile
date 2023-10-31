pipeline {
    agent any
    
    environment {
        LC_ALL = 'en_US.UTF-8'
        LANG = 'en_US.UTF-8'
        LANGUAGE = 'en_US.UTF-8'
        PATH = "$PATH:/Users/faik.cakir/.gem/ruby/2.6.0/bin"
    }
    
    stages {


        stage('Install Bundler') {
            steps {
                script {
                    sh 'gem install bundler --user-install'
                }
            }
        }

        stage('Install Homebrew') {
            steps {
                script {
                    sh '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
                }
            }
        }

        stage('Install Fastlane') {
            steps {
                script {
                    sh 'brew install fastlane'
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
