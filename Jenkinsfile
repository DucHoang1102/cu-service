node('master') {
    def name_image = 'cu-service-test'
    def this_image = null

    checkout scm

    stage('Build') {
        this_image = docker.build(name_image)
    }

    stage('Test') {
        this_image.withRun('') { container ->
            sh "docker exec ${container.id} npm run test"
            echo 'Success!!!'
        }

        sh "docker rmi -f ${this_image.id}"
    }
}