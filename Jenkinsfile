@Library('piper-lib-os') _

node() {
  stage('Prepare'){
  setupCommonPipelineEnvironment script: this
  echo 'complete'
  }
  stage('Deploy') {
    gctsDeploy script: this
  }
}
