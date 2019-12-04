FROM abrtech/alpine-oraclejdk8
VOLUME /tmp
ADD  target/RESTfulExample.war RESTfulExample.war
EXPOSE 8001
ENTRYPOINT ["java","-war","/RESTfulExample.war"]
