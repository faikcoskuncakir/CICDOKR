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
            try {
                sh '''
                    export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
                    export LC_ALL="${env.LC_ALL}"
                    export LANG="${env.LANG}"
                    export LANGUAGE="${env.LANGUAGE}"
                    gem install bundler --user-install
                    gem install fastlane --user-install
                '''
            } catch (Exception e) {
                // Handle the error, e.g., by printing an error message or sending a notification
                error "Failed to install Bundler or Fastlane: ${e.message}"
            }
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
