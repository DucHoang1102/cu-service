// Xong thử try - catch - finally (Tập trung xem phần catch thế nào)
// node('master'){
//     checkout scm

//     def docker_name = 'cu-service-test'

//     stage('Build') {
//         checkout scm
//         def d = docker.build(docker_name)
//         echo d.id
//     }

//     stage('Test') {
//         docker.image(docker_name).withRun('') { c ->
//             sh "docker exec ${c.id} npm run test"
//             echo 'Success'
//         }
//     }
// }
// 

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
        echo 'This is Error'
    }

    finally {
        echo 'This is finally'
    }
}