node('pod') {
   
    checkout scm
   
    stage(' docker ps  ') {
       container('docker') {
      sh 'docker ps '
       }
    }
   stge(' helm test '){
      container('helm'){
       sh 'helm list'
      }
   }
    }
