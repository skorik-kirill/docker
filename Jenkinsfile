node {
    def app
    checkout scm 
    registry = 'us.gcr.io/sincere-hybrid-274219/wordpress1'
    stage('Build image') {
        
        app = docker.build("us.gcr.io/sincere-hybrid-274219/wordpress1")
    }

    stage('Push image') {
        docker.withRegistry('', 'ClusterGPR') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
}
