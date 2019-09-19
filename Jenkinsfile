node('master'){
    checkout scm

    def docker_name = 'cu-service-test'

    stage('Build') {
        checkout scm
        docker.build(docker_name)
    }

    stage('Test') {
        docker.image(docker_name).withRun('') { c ->
            echo c.id
            sh "docker exec ${c.id} npm run test"
            echo 'Success'
        }
    }

    post {
        echo 'haha'
    }
}