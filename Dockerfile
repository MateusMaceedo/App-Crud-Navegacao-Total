FROM maven:3.8.4-jdk-11

WORKDIR /usuario-app
COPY . .
COPY target/usuario-0.0.2-SNAPSHOT.jar usuario.jar
ENTRYPOINT ["java","-jar","/usuario-app/usuario.jar"]
