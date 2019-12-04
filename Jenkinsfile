pipeline {
	agent any
	tools {
		jdk 'localJDK'
		maven 'localMaven'
	}
	stages {
		stage("Maven-Build"){
			steps {
				sh 'mvn -Dmaven.test.skip=true install'
			}
		}
		stage ("Docker-Login") {
			steps {
				sh 'docker login -u prathimaambati -p Ganapathi@570'
			}
		}
		stage ("Deleting-Previous-Docker-Builds"){
			steps {
				sh 'docker rmi -f "$(docker images -aq)"'
			}
		}
		stage ("Docker-Build-Services") {
			steps {
				sh "docker build -t additionapp:0.${env.BUILD_ID} additionapp/"
				sh "docker build -t restfulexample:0.${env.BUILD_ID} restfulexample/"
			}
		}
		stage ("Tagging-docker-images") {
			steps {
				sh "docker tag additionapp:0.${env.BUILD_ID} prathimaambati/additionapp:0.${env.BUILD_ID}"
				sh "docker tag restfulexample:0.${env.BUILD_ID} prathimaambati/restfulexample:0.${env.BUILD_ID}"
			}
		}
		stage ("Pushing-Images-to-Registry"){
			steps {
				sh "docker push prathimaambati/additionapp:0.${env.BUILD_ID}"
				sh "docker push prathimaambati/restfulexample:0.${env.BUILD_ID}"
			}
		}
		
	}
}