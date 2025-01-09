FROM openjdk:11-jre
ENV SPRING_PROFILES_ACTIVE docker,mysql
COPY ./target/*.jar /app.jar
EXPOSE 8082
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]