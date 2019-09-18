node('master'){
    checkout scm

    stage('Build') {
        echo 'Nguyen Duc Hoang'
    }

    docker.image('30111993/cu-service').inside{
        stage('Test') {
            sh 'node --version'
            sh 'cd test && npm run test'
        }
    }
}