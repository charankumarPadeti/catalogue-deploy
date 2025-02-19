pipeline {
    agent {
        node {
            label 'AGENT-1'
        }
    }
    // environment { 
    //     packageVesion = ''
    //     nexusURL = '172.31.37.164:8081'
    // }
    options {
        timeout(time: 1, unit: 'HOURS')
        disableConcurrentBuilds()
    }
    parameters {
        string(name: 'version', defaultValue: '1.0.0', description: 'what is the artifact version?')
        string(name: 'environment', defaultValue: 'dev', description: 'what is the environment?')
    }
    // build
    stages {
        stage('Print version') {
            steps {
                sh """
                    echo "version: ${params.version}"
                    echo "environment: ${params.environment}"
                """
            }
        }
        
    }
    // Post build means build ipoena tharuwatha em cheyali
    post { 
        always { 
            echo 'I will always say Hello again!'
            deleteDir()
        }
        failure { 
            echo 'This runs when pipeline is failed , used generally to send some alerts !'
        }
        success { 
            echo 'I will say Hello when pipeline is success !'
        }
    }
}