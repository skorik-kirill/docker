node {
    def app
    checkout scm 
    
    stage('Build image') {
      app = docker.build("us.gcr.io/sincere-hybrid-274219/wordpress1")
    }

    stage('Push image') {
        docker.withRegistry('https://eu.gcr.io', 'ClusterGPR') {
         app.push("${env.BUILD_NUMBER}")
         app.push("latest")
        }
    }
}
