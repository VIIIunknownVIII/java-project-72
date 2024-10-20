FROM gradle:8.8-jdk17 AS build

WORKDIR /app

COPY ./app/build.gradle ./app/settings.gradle /app/

RUN gradle clean build --no-daemon || true

COPY ./app /app

RUN gradle build --no-daemon

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /app/build/libs/*.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
