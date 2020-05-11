node('pod') {
   
    checkout scm
   
    stage(' docker ps  ') {
       container('docker')  
      sh 'docker ps '
    }
    }
