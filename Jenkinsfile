node('master'){
    checkout scm

    stage('Build') {
        checkout scm
        echo 'Nguyen Duc Hoang'
        docker.build("30111993/cu-service")
    }

    docker.stage('Test') {
        docker.image('30111993/cu-service').inside {
            sh 'node --version'
            sh 'npm list mocha'
            sh 'npm run test'
        }
    }
}