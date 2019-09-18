node('master'){
    checkout scm

    stage('Build') {
        checkout scm
        docker.build("cu-service-test")
    }

    stage('Test') {
        sh 'docker run cu-service-test npm run test'
    }
}