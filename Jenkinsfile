node('master'){
    checkout scm

    stage('Build') {
        checkout scm
        docker.build('cu-service-test')
    }

    stage('Test') {
        docker.image('cu-service-test').inside {
            sh 'node --version'
            sh 'npm run test'
        }
    }
}