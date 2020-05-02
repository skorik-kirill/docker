node {
    def app
    checkout scm 
    
    stage('Build image') {
        
        app = docker.build("wordpress1")
    }

    stage('Push image') {
        docker.withRegistry('us.gcr.io/sincere-hybrid-274219/wordpress1', 'ClusterGPR Google Container Registry Account') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
