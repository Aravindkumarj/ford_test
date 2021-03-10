@Library('piper-lib-os') _

node() {
  stage('Prepare'){
  setupCommonPipelineEnvironment script: this
  }
  stage('Deploy') {
    gctsDeploy script: this
  }
}
