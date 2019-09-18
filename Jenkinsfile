node('master'){
    checkout scm

    stage('Build') {
        checkout scm
        echo 'Nguyen Duc Hoang'
        docker.build("30111993/cu-service")
    }

    stage('Test') {
        docker.image('30111993/cu-service').inside {
            sh 'npm list mocha'
        }
    }
}