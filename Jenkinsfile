node {
    def app
    checkout scm 
    
    stage(' test docker ') {
      sh 'docker ps'
    }

    stage('test helm') {
        sh 'helm list'
        }
    }
}
