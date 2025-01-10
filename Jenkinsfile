node{
	def app

	stage('Clone') {
		checkout scm
	}
	
	stage('Build image') {
		app = docker.build("yvain/nginx")
	} 
	
	stage('Test image') {
		docker.image ('yvain/nginx').withRun('-p 8081:80') { c ->
		
		sh 'docker ps'
		
		sh 'curl localhost'
		
		}	
	}
}
