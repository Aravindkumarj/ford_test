@Library('piper-lib-os') _

node() {
  stage('Prepare'){
  setupCommonPipelineEnvironment script: this
  echo 'complete'
  }
  stage('Deploy') {
    gctsDeploy(
      script : this,
      host: 'http://phlhdr07.phl.sap.corp:8001',
      client: '200',
      username: 'I058626',
      password: 'Rsbdcos0',
      repository: 'fordtest2'
      
    )
  }
}
