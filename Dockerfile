# Используем официальный образ с JDK 17 и Gradle для сборки
FROM gradle:8.8-jdk17 AS build

# Переходим в рабочую директорию в контейнере
WORKDIR /app

COPY ./app/build.gradle ./app/settings.gradle /app/

RUN gradle clean build --no-daemon || true

COPY ./app /app

RUN gradle build --no-daemon

FROM openjdk:17-jdk-slim

# Устанавливаем рабочую директорию
WORKDIR /app

COPY --from=build /app/build/libs/*.jar /app/app.jar

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
