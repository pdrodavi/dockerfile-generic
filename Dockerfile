FROM adoptopenjdk/openjdk11:jre-nightly
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} /app/application.jar
WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "application.jar"]
