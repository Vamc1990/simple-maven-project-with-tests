FROM maven
WORKDIR /opt/simple-maven-project-with-tests
EXPOSE 8080
COPY . .
RUN mvn "-Dmaven.test.failure.ignore=true" clean package && cp ./target/* .jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]
