node {
    def app
    checkout scm 
    registry = 'us.gcr.io/sincere-hybrid-274219/wordpress1'
    registryCredential = ClusterGCP
    stage('Build image') {
      dockerImage = docker.build registry + ":$BUILD_NUMBER
    }

    stage('Push image') {
        docker.withRegistry( '', registryCredential ) {
         dockerImage.push("latest")
        }
    }
}
