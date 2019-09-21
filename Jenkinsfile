node('master') {
    // CI -> trigger branch: `developer`
    def name_image = 'cu-service-test'
    def this_image = null

    checkout scm

    stage('1.Build') {
        this_image = docker.build(name_image)
        echo env.GIT_BRANCH
    }

    stage('2.Test(end)') {
        this_image.withRun('') { container ->
            sh "docker exec ${container.id} npm run test"
            echo 'Success!!!'
        }

        sh "docker rmi -f ${this_image.id}"
    }    

    // CD -> trigger branch: `master`
    // if (env.GIT_BRANCH == 'master') {

    // }
    
}

// node('master') {
//     def name_image = 'cu-service'
//     def this_image = null

//     checkout scm

//     stage('1.Build') {

//     }

//     stage('2.Unit test') {
        
//     }

//     stage('3.Push docker') {
        
//     }

//     stage('4.Delivery -> STAGING-SERVER') {
        
//     }

//     stage('5.Test in staging') {

//     }

//     stage('6.Deploy -> PRODUCT-SERVER') {

//     }

//     stage('7.Test post deploy') {

//     }
// }