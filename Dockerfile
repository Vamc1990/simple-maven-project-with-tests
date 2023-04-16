FROM maven
WORKDIR /opt/app
EXPOSE 8080
COPY . .
RUN mvn "-Dmaven.test.failure.ignore=true" clean install && cp ./target/* .jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
