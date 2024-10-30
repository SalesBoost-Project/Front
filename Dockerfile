FROM eclipse-temurin:21-jre-alpine
COPY build/libs/*.jar app.jar
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod","app.jar"]
EXPOSE 8080
