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
        repository: 'IndiaTgt',
        remoteRepositoryURL: 'https://github.com/Aravindkumarj/ford_test.git',
        rollback: true
      )
  }
  stage('Unit Test'){
    gctsExecuteABAPUnitTests(
      script: this,
      host: 'http://phlhdr07.phl.sap.corp:8011',
        client: '200',
        username: 'I058626',
        password: 'Rsbdcos0',
        repository: 'IndiaTgt'
      )
   }  
}
