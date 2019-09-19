node('master') {
    def name_image = 'cu-service-test'

    try {
        checkout scm

        stage('Build') {
            docker.build(name_image)
        }

        stage('Test') {
            docker.image(name_image).withRun('') { container ->
                sh "docker exec ${container.id} npm run testt"
                echo 'Success!!!'
            }
        }

    }

    catch(e) {
        echo 'This is error!'
        throw e
    }

    finally {
        echo 'This is finally'
    }
}