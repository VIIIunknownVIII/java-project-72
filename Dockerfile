# Базовый образ для сборки
FROM gradle:8.8-jdk17 AS build
WORKDIR /app
COPY . .
RUN gradle installDist

# Базовый образ для запуска
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/build/install/app /app/
ENTRYPOINT ["/app/bin/app"]
