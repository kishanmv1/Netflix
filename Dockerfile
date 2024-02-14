FROM node:14

  
EXPOSE 8000
 
ENV APP_HOME /usr/src/app

COPY target/netflix-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec node -jar app.jar /bin/bash
