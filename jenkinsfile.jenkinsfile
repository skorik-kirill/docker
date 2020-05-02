node {
    def app
    
    stage('Build image') {
        
        app = docker.build("us.gcr.io/sincere-hybrid-274219/wordpress1")
    }

    stage('Push image') {
        docker.withRegistry('us.gcr.io/sincere-hybrid-274219/wordpress1', 'ClusterGPR') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
