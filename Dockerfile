
  
FROM tomcat
 
ADD ./additionapp/target/additionapp-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/

ADD ./restfulexample/target/restfulExample-1.0.war /usr/local/tomcat/webapps/

EXPOSE 8080


CMD ["catalina.sh","run"]
