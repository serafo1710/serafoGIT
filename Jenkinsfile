pipeline{
    agent any
    environment{
        nombre = 'Serafo'
    }
    options{
        //timeout(time: 1, unit: 'Hours')
        //timeout(time: 1, unit: 'Mins')
        timeout(time: 2, unit: 'SECONDS')
    }
   
    stages{
        stage('stage 1'){
            parallel{
                    stage('primero'){
                    steps{
                        echo "${System.currentTimeMillis()}"
                        echo 'Hola paralelo1'
                        sh 'echo "$nombre"'
                    }
                }
            stage('segundo'){
                    steps{
                        echo "${System.currentTimeMillis()}"
                        echo 'Hola paralelo2'
                    }
                }
            }
        }
        
        stage('stage 2'){
            steps{
                echo "${System.currentTimeMillis()}"
                echo 'ejecutando stage 2'
            }
        }
        stage('stage 3'){
            steps{
                echo "${System.currentTimeMillis()}"
                echo 'ejecutando stage 3'
            }   
        }
        stage('stage 4'){
        steps{
            echo 'ejecutando un email'
            //mail bcc: '', body: 'hola desde pipeline', cc: '', from: '', replyTo: '', subject: 'jenkins pipeline', to: 'serafincortes17@gmail.com'
        }
    }
    }
    
     post{
            aborted{
                echo ' Aborto por exceso de tiempo'
            }
        }
}
