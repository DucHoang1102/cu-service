node('master') {
    def name_image = 'cu-service-test'

    try {
        checkout scm

        stage('Build') {
            def dddd = docker.build(name_image)
        }

        stage('Test') {
            dddd.withRun('') { container ->
                sh "docker exec ${container.id} npm run test"
                echo 'Success!!!'
            }
        }
    }

    catch(e) {
        throw e
    }

    finally {
        echo 'This is finally'
    }
}