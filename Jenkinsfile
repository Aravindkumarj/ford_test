@Library('piper-lib-os') _

node() {
  
  stage('Deploy') {
    gctsDeploy(
        script: this,
        host: 'https://fc-pun01-hana.india.rapidigm.com:8001',
        client: '300',
        abapCredentialsId: 'ABAPUserPasswordCredentialsId',
        repository: 'DEV003',
      )
  }
}
