node('master') {
    def name_image = 'cu-service-test'

    try {
        checkout scm

        stage('Build') {
            docker.build(name_image)
            echo d
        }

        stage('Test') {
            docker.image(name_image).withRun('') { container ->
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