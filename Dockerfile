FROM openjdk:11-jre

  
EXPOSE 8000
 
ENV APP_HOME /usr/src/app

COPY target/netflix-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar /bin/bash
