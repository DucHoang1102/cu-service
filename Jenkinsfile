node('master') {
    // CI -> trigger branch: `developer`
    if (env.BRANCH_NAME == 'developer') {
        checkout scm

        def name_image = 'cu-service-test'
        def dockerfile = 'dockerfile-dev'
        def this_image = null

        stage('1.Build') {
            this_image = docker.build(name_image, "-f ${dockerfile}")
        }

        stage('2.Test(end)') {
            this_image.withRun('') { container ->
                sh "docker exec ${container.id} npm run test"
                echo 'Success!!!'
            }

            sh "docker rmi -f ${this_image.id}"
        } 
    }   

    // CD -> trigger branch: `master`
    if (env.BRANCH_NAME == 'master') {
        checkout scm

        def name_image = '30111993/cu-service'
        def dockerfile = 'dockerfile-dev'
        def this_image = null

        stage('1.Build') {
            echo 'This is build'
        }

        stage('2.Unit test') {
            echo 'This is test'
        }

        stage('3.Push docker') {
            echo 'This is push docker'
        }

        stage('4.Delivery -> STAGING-SERVER') {
            echo 'This is delivery staging'
        }

        stage('5.Test in staging') {
            echo 'This is test in staging'
        }

        stage('6.Deploy -> PRODUCT-SERVER') {
            echo 'This is deploy product server'
        }

        stage('7.Test post deploy(end)') {
            echo 'This is post deploy'
        }
    }
    
}
