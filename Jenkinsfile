// Xong thử try - catch - finally (Tập trung xem phần catch thế nào)
node('master'){
    checkout scm

    def docker_name = 'cu-service-test'

    stage('Build') {
        checkout scm
        def d = docker.build(docker_name)
    }

    stage('Test') {
        docker.image(docker_name).withRun('') { c ->
            sh "docker exec ${c.id} npm run test"
            echo d.id
            echo 'Success'
        }
    }
}