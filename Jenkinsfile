node('master'){
    checkout scm

    stage('Build') {
        checkout scm
        echo 'Nguyen Duc Hoang'
        docker.build("30111993/cu-service")
    }

    docker.image('30111993/cu-service').inside {
        stage('Test') {
            sh 'node --version'
            sh 'cd test && npm run test'
        }
    }
}