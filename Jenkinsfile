node('master'){
    checkout scm

    stage('Build') {
        echo 'Nguyen Duc Hoang'
    }

    docker.image('cu-service').inside{
        stage('Test') {
            sh 'node --version'
            sh 'cd test && npm run test'
        }
    }
}