@Library('piper-lib-os') _

node() {
  stage('Prepare'){
  setupCommonPipelineEnvironment(
        script: this
      )
  }
  stage('Deploy') {
    gctsDeploy(
        script: this,
        host: 'http://phlhdr07.phl.sap.corp:8011',
        client: '200',
        username: 'I058626',
        password: 'Rsbdcos0',
        repository: 'fordtest3'
      )
  }
  stage('Unit Test'){
    gctsExecuteABAPUnitTests(
      script: this,
      host: 'http://phlhdr07.phl.sap.corp:8011',
        client: '200',
        username: 'I058626',
        password: 'Rsbdcos0',
        repository: 'fordtest3'
      )
   } 
  stage('Roll Back'){
    gctsRollback(
      script: this,
      host: 'http://phlhdr07.phl.sap.corp:8011',
      client: '200',
      username: 'I058626',
      password: 'Rsbdcos0',
      repository: 'fordtest3'
      )
   }    
}
