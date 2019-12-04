FROM abrtech/alpine-oraclejdk8
VOLUME /tmp
ADD  target/restfulexample-1.0-SNAPSHOT.war restfulexample-1.0-SNAPSHOT.war
EXPOSE 8001
ENTRYPOINT ["java","-war","/restfulexample-0.0.1-SNAPSHOT.war"]
