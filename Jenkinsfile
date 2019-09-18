node('master'){
    checkout scm

    stage('Build') {
        checkout scm
        echo 'Nguyen Duc Hoang'
        docker.build("30111993/cu-service")
    }

    stage('Test') {
        sh 'docker run 30111993/cu-service npm list mdfd'
    }
}