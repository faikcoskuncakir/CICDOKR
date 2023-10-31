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
                    sh '''
                        export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
                        gem install bundler --user-install
                        gem install fastlane --user-install
                    '''
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
