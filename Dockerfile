FROM eclipse-temurin:11-jdk-alpine

WORKDIR /app

COPY target/database_service_project.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]

