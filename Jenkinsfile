pipeline {
        agent any
            stages {
                stage('Clone Repository') {
                /* Cloning the repository to our workspace */
                steps {
                checkout scm
                }
           }
           stage('Build Image') {
                steps {
                sh 'sudo docker build -t tomerlevi/streamlit-docker .'
                }
           }
           stage('Run Image') {
                steps {
                sh 'sudo docker run -d -p 8000:8000 --name tomerlevi/streamlit-docker tomerlevi/streamlit-docker:latest'
                }
           }
           stage('Testing'){
                steps {
                    echo 'Process Complete..'

                    }
           }
    }
}
