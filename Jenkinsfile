node('pod') {
   
    checkout scm
   
    stage(' docker ps  ') {
       container('docker') {
      sh 'docker ps '
        
       }
       stage('kubecctl'){
       container('kubectl'){
          sh 'kubectl version'
          sh 'kubectl get pod'
          
         }
     }
       stage('list derectory'){
       sh 'ls -l' 
       }
    }
}
