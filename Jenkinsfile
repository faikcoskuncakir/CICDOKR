pipeline {
 agent any
 environment {
  LC_ALL = 'en_US.UTF-8'
  LANG = 'en_US.UTF-8'
  LANGUAGE = 'en_US.UTF-8'
 }
 stage(‘Build App’) {
  steps {
   sh label: ‘’, script: "bundle exec fastlane appcenter_release"
   }
  }
 }
}