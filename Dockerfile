## base image
FROM tomcat:8.5.98-jre11-temurin-jammy
#FROM tomcat:8.5

## war 파일을 webapps 복사
COPY target/ver3-1.0.0-BUILD-SNAPSHOT.war /usr/local/tomcat/webapps

## tomcat 실행
ENTRYPOINT ["catalina.sh", "run"]
