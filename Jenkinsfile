#!/usr/bin/env groovy

String pipelineVersion = "v44"

@Library('piper-lib-os') _

pipeline {

  agent any
  
  stages {
    stage('Prepare')   {
      steps{
        setupCommonPipelineEnvironment script:this
        echo 'complete'
      }
    }
    
    stage('gCTS')   {
      steps{
        gctsDeploy script:this
        echo 'complete'
      }
    }

  }
}
