FROM abrtech/alpine-oraclejdk8
VOLUME /tmp
ADD  target/additionapp-0.0.1-SNAPSHOT.war additionapp-0.0.1-SNAPSHOT.war
EXPOSE 8001
ENTRYPOINT ["java","-war","/additionapp-0.0.1-SNAPSHOT.war"]
