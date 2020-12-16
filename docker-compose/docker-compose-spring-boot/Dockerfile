FROM java:8
VOLUME /tmp
EXPOSE 8080
COPY ./target/docker-compose-spring-boot-0.0.1-SNAPSHOT.war docker-compose-spring-boot-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","docker-compose-spring-boot-0.0.1-SNAPSHOT.jar"]
